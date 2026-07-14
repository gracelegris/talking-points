# script to render country-level talking points reports and translate all to French, Spanish, Portuguese, and Arabic.

rm(list = ls()) 

wd <- file.path("/Users/UNICEF/Library/CloudStorage/OneDrive-SharedLibraries-UNICEF/Health-HIV Data & Analytics - 2025 rev/unicef-products")
source(file.path(wd, "main_vars.R"))

library(tidyverse)
library(knitr)
library(tinytex)
library(readxl)
library(openxlsx)
library(patchwork)
library(tidytext)

comp_yr <- 2019
hpv_rev_yr <- 2025
rev_yr <- 2025
type <- "final"

## setup ----
directory <- file.path(RevDir, "unicef-products")
utils <- file.path(paste0(directory, "/", {type}, "/utils"))
wrkfolder  <- str_glue(RevDir, "/unicef-products/{type}/country-specific-charts")
wiisefolder <- str_glue(RevDir, "/unicef-products/{type}/wiise-outputs")
SubnatFuncDir <- file.path("/Users/UNICEF/Library/CloudStorage/OneDrive-SharedLibraries-UNICEF/Health-HIV Data & Analytics - Subnational data analysis/utils/R")

source(file.path(directory, type, "utils/user_profiles.R"))
source(file.path(utils, "R/label_vals.R"))
source(str_glue("{utils}/R/slide_general_funcs.R"))    # func_slide_v, func_slide_bb, etc.
source(str_glue("{utils}/R/slide_production_funcs.R")) # func_slide_v_txt, func_slide_v_tlm, etc.
source(file.path(utils, "R/slide_production_generic_text.R"))

source_colors <- c("WUENIC" = "#0083CF", "Admin" = "#6A1E74", "Official Estimate" = "#80BD41", "Survey" = "#FFC20E")

# ── TRANSLATION LOOKUP HELPER ─────────────────────────────────────────────────
# returns the translated string for a given key and language, falling back to English
# uses lookup table "translation-table_charts_ctry.csv" in country-specific-charts folder
t_lookup <- function(key, lang, table = translation_table) {
  lang <- tolower(lang)
  row  <- table[table$key == key, ]
  if (nrow(row) == 0) {
    warning("Translation key not found: ", key)
    return(key)
  }
  col <- if (lang %in% colnames(table)) lang else "en"
  val <- row[[col]]
  if (is.na(val) || val == "") val <- row[["en"]]
  # convert literal \n from Excel/CSV to real newline
  gsub("\\\\n", "\n", val)
}

# wuenic data
wuenic_dta <- read_rds(str_glue("{directory}/{type}/01_wuenic_dataset-prep/clean_wuenic_MASTER_{rev_yr}rev.rds")) %>%
  #filter(lvl_2 %in% c("region_unicef_ops", "region_au", "region_au_africa")) %>% 
  filter(lvl_2 %in% c("region_unicef_ops")) %>% 
  filter(year >= 2000) %>%
  mutate(country = case_when(iso3c == "bol" ~ "Bolivia",
                             # iso3c == "caf" ~ "CAR",
                             iso3c == "cod" ~ "DRC",
                             iso3c == "fsm" ~ "Micronesia",
                             iso3c == "irn" ~ "Iran",
                             iso3c == "png" ~ "PNG",
                             iso3c == "prk" ~ "DPRK",
                             iso3c == "syr" ~ "Syria",
                             iso3c == "lao" ~ "Laos",
                             iso3c == "tza" ~ "Tanzania",
                             iso3c == "ven" ~ "Venezuela",
                             iso3c == "tur" ~ "Turkiye",
                             TRUE ~ country)) %>% 
  rename(Region = lvl_3)

# hpv data
hpv_dta <- read_excel(file.path(directory, type, "utils", paste0("hpv_estimates_wuenic", hpv_rev_yr, "rev.xlsx"))) %>%
  #filter(lvl_2 %in% c("region_unicef_ops", "region_au", "region_au_africa")) %>% 
  filter(lvl_2 %in% c("region_unicef_ops")) %>% 
  filter(lvl_1 == "country") %>% 
  filter(!is.na(coverage)) %>% 
  # programme coverage
  filter(vaccine_code %in% c("PRHPV1_F", "PRHPVC_F")) %>%
  #filter(lvl_2 %in% c("region_unicef_ops", "region_au", "region_au_africa")) %>%
  mutate(vaccine = case_when(
    vaccine_code == "PRHPV1_F" ~ "HPV1 Females",
    vaccine_code == "PRHPVC_F" ~ "HPVc Females",
    TRUE ~ NA_character_)) %>%
  # new labels
  rename(Region = lvl_3)

# hpv vaccine intro years
wiise_hpv_intro_yrs <- read_excel(file.path(directory, type, "utils", paste0("wiise-hpv_intro_", rev_yr, "rev.xlsx")))

# base map
base_map_df <- readRDS(file.path(directory, type, "utils", "unicef-base-map.rds")) %>% 
  sf::st_as_sf() %>% 
  mutate_at(vars(iso3c), str_to_lower) %>% 
  mutate(iso3c = case_when(
    admin == "France" ~ "fra",
    admin == "Norway" ~ "nor",
    TRUE ~ iso3c
  )) %>% 
  filter(!is.na(admin))

# unique countries ----
countries <- unique(wuenic_dta$country)
countries <- countries[1:195] # remove the regions
iso3cs <- unique(wuenic_dta$iso3c)

# ── LANGUAGE SETUP ────────────────────────────────────────────────────────────
language_list <- read_excel(str_glue("{utils}/Languages.xlsx")) %>%
  janitor::clean_names() %>%
  mutate(iso3_code = tolower(iso3_code)) %>%
  select(iso3c = iso3_code, language)

iso_codes <- unique(wuenic_dta$iso3c)
list_fr <- language_list %>% filter(language == "fr") %>% filter(iso3c %in% iso_codes) %>% pull(iso3c) # french
list_es <- language_list %>% filter(language == "es") %>% filter(iso3c %in% iso_codes) %>% pull(iso3c) # spanish
list_pt <- language_list %>% filter(language == "pt") %>% filter(iso3c %in% iso_codes) %>% pull(iso3c) # portuguese
list_ar <- language_list %>% filter(language == "ar") %>% filter(iso3c %in% iso_codes) %>% pull(iso3c) # arabic

# read in excel translation table
translation_table <- read_csv(str_glue(directory, "/dummy/country-specific-charts/translation-table_charts_ctry.csv")) %>%
  janitor::clean_names() %>%
  mutate(key = tolower(key)) %>% 
  unique()
translation_table_general <- read_csv(str_glue(directory, "/draft/utils/translation_table_general.csv")) %>%
  janitor::clean_names() %>%
  mutate(key = tolower(key))

# vaccine code translation lookup
vax_translations <- tibble::tribble(
  ~Vaccine, ~en,     ~fr,     ~es,     ~pt,     ~ar,
  "BCG",    "BCG",   "BCG",   "BCG",   "BCG",   "BCG",
  "DTP1",   "DTP1",  "DTC1",  "DTP1",  "DTP1",  "DTP1",
  "DTP3",   "DTP3",  "DTC3",  "DTP3",  "DTP3",  "DTP3",
  "HepBB",  "HepBB", "HepBB", "HepBB", "HepBB", "HepBB",
  "HepB3",  "HepB3", "HepB3", "HepB3", "HepB3", "HepB3",
  "Hib3",   "Hib3",  "Hib3",  "Hib3",  "Hib3",  "Hib3",
  "IPV1",   "IPV1",  "VPI1",  "VPI1",  "VPI1",  "IPV1",
  "IPVC",   "IPVC",  "VPIC",  "VPIC",  "VPIC",  "IPVC",
  "MCV1",   "MCV1",  "VAR1",  "MCV1",  "MCV1",  "MCV1",
  "MCV2",   "MCV2",  "VAR2",  "MCV2",  "MCV2",  "MCV2",
  "PCVC",   "PCVC",  "PCVC",  "PCVC",  "PCVC",  "PCVC",
  "RotaC",  "RotaC", "RotaC", "RotaC", "RotaC", "RotaC",
  "RCV1",   "RCV1",  "RCV1",  "RCV1",  "RCV1",  "RCV1",
  "YFV",    "YFV",   "YFV",   "YFV",   "YFV",   "YFV",
  "MengA",  "MengA", "MengA", "MengA", "MengA", "MengA",
  "HPVc",   "HPVc",  "HPVc",  "VPHc",  "HPVc",  "HPVc",
  "HPVC",   "HPVC",  "HPVC",  "VPHC",  "HPVC",  "HPVC"
)

# translate vaccine codes based on current language
translate_vaccine_names <- function(df, lang = language) {
  lang_col <- if (lang %in% c("fr", "es", "pt", "ar")) lang else "en"
  lookup_vec <- setNames(vax_translations[[lang_col]], vax_translations$Vaccine)
  df$vaccine <- dplyr::recode(df$vaccine, !!!lookup_vec)
  if (is.factor(df$vaccine)) df$vaccine <- droplevels(df$vaccine)
  return(df)
}

# new loop that translates plot labels separately 
# plot labels english if language is arabic, otherwise match the report language
for (country in countries) {
  
  current_country <- country
  x <- wuenic_dta %>% filter(country == current_country) %>% pull(iso3c) %>% unique()
  
  # select languages
  if (x %in% list_ar) {
    languages <- c("en", "ar")
  } else if (x %in% list_fr) {
    languages <- c("en", "fr")
  } else if (x %in% list_es) {
    languages <- c("en", "es")
  } else if (x %in% list_pt) {
    languages <- c("en", "pt")
  } else {
    languages <- "en"
  }
  
  #languages = "en"
  
  for (language in languages) {
    
    message("Generating report for: ", country, " (Language: ", language, ")")
    
    # if the report is in Arabic, hardcode plot labels to English. Otherwise, match the report
    plot_lang <- if (language == "ar") "en" else language
    
    final_output_path <- file.path(directory, type, "talking-points", "country-specific-talking-points", "reports", 
                                   paste0(x, "_talking_points_", language, ".pdf"))
    
    # country_folder_path <- file.path(directory, "final/comms-team/country-specific-products", x, 
    #                                  paste0(x, "_talking_points_", language, ".pdf"))
    
    pdf_filename <- paste0(x, "_talking_points_", language, ".pdf")
    #temp_output_path <- file.path(tempdir(), pdf_filename)
    
    # pass plot_language in using the params list
    suppressWarnings(rmarkdown::render(
      input = file.path(directory, "final/talking-points/country-specific-talking-points/country_talking_points_translated.Rmd"),
      output_file = final_output_path,
      # pass both the regular text language and the plot language (english when main language is arabic)
      params = list(country = current_country, language = language, plot_language = plot_lang), 
      envir = new.env(), 
      quiet = TRUE
    ))
    
    #dir.create(dirname(final_output_path), recursive = TRUE, showWarnings = FALSE)
    #dir.create(dirname(country_folder_path), recursive = TRUE, showWarnings = FALSE)
    
    #file.copy(from = temp_output_path, to = final_output_path, overwrite = TRUE)
    #file.copy(from = temp_output_path, to = country_folder_path, overwrite = TRUE)
    
    #unlink(temp_output_path)
    
    message("✅ Reports successfully saved to target destinations for ", x, " (", language, ")")
  }
}

message("✅ All reports generated successfully!")


### done with morocco french
# for (country in countries) {
# 
#   current_country <- country
#   x <- wuenic_dta %>% filter(country == current_country) %>% pull(iso3c) %>% unique()
# 
#   if (x %in% list_ar) {
#     languages <- c("en", "ar")
#   } else if (x %in% list_fr) {
#     languages <- c("en", "fr")
#   } else if (x %in% list_es) {
#     languages <- c("en", "es")
#   } else if (x %in% list_pt) {
#     languages <- c("en", "pt")
#   } else {
#     languages <- "en"
#   }
# 
#   # exclude english
#   languages_to_run <- setdiff(languages, "en")
# 
#   # if none left, skip to next country
#   if (length(languages_to_run) == 0) next
# 
#   for (language in languages_to_run) {
# 
#     message("Generating report for: ", country, " (Language: ", language, ")")
# 
#     # if the report is in Arabic, hardcode plot labels to English. Otherwise, match the report
#     plot_lang <- if (language == "ar") "en" else language
# 
#     final_output_path <- file.path(directory, type, "talking-points", "country-specific-talking-points", "reports",
#                                    paste0(x, "_talking_points_", language, ".pdf"))
# 
#     # country_folder_path <- file.path(directory, "final/comms-team/country-specific-products", x,
#     #                                  paste0(x, "_talking_points_", language, ".pdf"))
# 
#     pdf_filename <- paste0(x, "_talking_points_", language, ".pdf")
#     #temp_output_path <- file.path(tempdir(), pdf_filename)
# 
#     # pass plot_language in using the params list
#     suppressWarnings(rmarkdown::render(
#       input = file.path(directory, "final/talking-points/country-specific-talking-points/country_talking_points_translated.Rmd"),
#       output_file = final_output_path,
#       # pass both the regular text language and the plot language (english when main language is arabic)
#       params = list(country = current_country, language = language, plot_language = plot_lang),
#       envir = new.env(),
#       quiet = TRUE
#     ))
# 
#     #dir.create(dirname(final_output_path), recursive = TRUE, showWarnings = FALSE)
#     #dir.create(dirname(country_folder_path), recursive = TRUE, showWarnings = FALSE)
# 
#     #file.copy(from = temp_output_path, to = final_output_path, overwrite = TRUE)
#     #file.copy(from = temp_output_path, to = country_folder_path, overwrite = TRUE)
# 
#     #unlink(temp_output_path)
# 
#     message("✅ Reports successfully saved to target destinations for ", x, " (", language, ")")
#   }
# }
