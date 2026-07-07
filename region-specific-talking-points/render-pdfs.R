# script to render region-level talking points reports and translate all to French, Spanish, Portuguese, and Arabic.

rm(list = ls())
library(tidyverse)
library(knitr)
library(tinytex)
library(readxl)
library(openxlsx)
library(patchwork)

wd <- file.path("/Users/UNICEF/Library/CloudStorage/OneDrive-SharedLibraries-UNICEF/Health-HIV Data & Analytics - 2025 rev/unicef-products")
source(file.path(wd, "main_vars.R"))

comp_yr <- 2019
rev_yr <- 2025
type <- "final" 

## ── PATHS ───────────────────────────────────────────────────────────────────
directory <- file.path(RevDir, "unicef-products")
utils      <- str_glue(RevDir, "/unicef-products/{type}/utils")
wrkfolder  <- str_glue(RevDir, "/unicef-products/{type}/country-specific-charts")
wiisefolder <- str_glue(RevDir, "/unicef-products/{type}/wiise-outputs")
SubnatFuncDir <- file.path("/Users/UNICEF/Library/CloudStorage/OneDrive-SharedLibraries-UNICEF/Health-HIV Data & Analytics - Subnational data analysis/utils/R")

source(file.path(directory, type, "utils/user_profiles.R"))
source(file.path(utils, "R/label_vals.R"))
source(str_glue("{utils}/R/slide_general_funcs.R"))    # func_slide_v, func_slide_bb, etc.
source(str_glue("{utils}/R/slide_production_funcs.R")) # func_slide_v_txt, func_slide_v_tlm, etc.
source(file.path(utils, "R/slide_production_generic_text.R"))

## ── LOAD DATA ────────────────────────────────────────────────────────────────
#source(file.path(dqfolder, "load_data.R"))

source_colors <- c("WUENIC" = "#0083CF", "Admin" = "#6A1E74", "Official Estimate" = "#80BD41", "Survey" = "#FFC20E")

wuenic_dta <- read_rds(file.path(directory, type, paste0("01_wuenic_dataset-prep/clean_wuenic_MASTER_", rev_yr, "rev.rds"))) %>%
  filter(lvl_2 %in% c("region_unicef_ops", "region_au", "region_gavi_transition", "region_european_union", "region_wb"),
         year >= 2000) %>%
  mutate(country = case_when(iso3c == "bol" ~ "Bolivia",
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
  label_vals_millions(target, "target_lbl") %>%
  label_vals_millions(vaccinated, "vaccinated_lbl") %>%
  label_vals_millions(unvaccinated, "unvaccinated_lbl") %>%
  clean_reg_names() %>% 
  rename(Region = lvl_3) %>%
  filter(
    (lvl_2 == "region_au" & Region %in% c("Western Africa", "Central Africa")) | # for african union, keep only western and central africa
      (lvl_2 != "region_au")
  ) %>% 
  filter(Region != "Not classified") %>% 
  mutate(Region = case_when(
    lvl_2 == "region_gavi_transition" & Region == "HICs" ~ "Gavi HICs",
    lvl_2 == "region_wb" & Region == "HICs" ~ "WB HICs",
    TRUE ~ Region
  )) %>% 
  mutate(country = case_when(
    Region == "Gavi HICs" & country == "HICs" ~ "Gavi HICs",
    Region == "WB HICs" & country == "HICs" ~ "WB HICs",
    TRUE ~ country
  ))

# hpv data
hpv_dta <- read_excel(file.path(directory, type, paste0("talking-points/region-specific-talking-points/utils/hpv_estimates_wuenic", hpv_rev_yr, "rev.xlsx"))) %>%
  filter(vaccine_code %in% c("PRHPV1_F", "PRHPVC_F"),
         lvl_2 %in% c("region_unicef_ops", "region_au", "region_gavi_transition", "region_european_union", "region_wb"),
         year >= 2000) %>%
  clean_reg_names() %>% 
  mutate(vaccine = case_when(
    vaccine_code == "PRHPV1_F" ~ "HPV1 Females",
    vaccine_code == "PRHPVC_F" ~ "HPVc Females",
    TRUE ~ NA_character_)) %>%
  rename(Region = lvl_3) %>%
  label_vals_millions(target, "target_lbl") %>%
  label_vals_millions(vaccinated, "vaccinated_lbl") %>%
  label_vals_millions(unvaccinated, "unvaccinated_lbl") %>% 
  filter(Region != "Not classified") %>% 
  mutate(Region = case_when(
    lvl_2 == "region_gavi_transition" & Region == "HICs" ~ "Gavi HICs",
    lvl_2 == "region_wb" & Region == "HICs" ~ "WB HICs",
    TRUE ~ Region
  )) %>% 
  mutate(country = case_when(
    Region == "Gavi HICs" & country == "HICs" ~ "Gavi HICs",
    Region == "WB HICs" & country == "HICs" ~ "WB HICs",
    TRUE ~ country
  ))

# hpv vaccine intro years
wiise_hpv_intro_yrs <- read_excel(file.path(directory, type, paste0("utils/wiise-hpv_intro_", rev_yr, "rev.xlsx")))

# base map
base_map_df <- readRDS(file.path(directory, type, "utils/unicef-base-map.rds")) %>% 
  sf::st_as_sf() %>% 
  mutate_at(vars(iso3c), str_to_lower)

## unique regions ----
regions <- unique(wuenic_dta$Region)

unicef <- wuenic_dta %>% filter(lvl_2 == "region_unicef_ops")
unicef_regions <- unique(unicef$Region)

# read in excel translation table
translation_table <- read_csv(file.path(directory, "dummy/country-specific-charts/translation-table_charts_ctry.csv")) %>%
  janitor::clean_names() %>%
  mutate(key = tolower(key))

# render pdfs
for (reg in regions) {
  
  current_region <- reg
  
  #languages <- c("en", "fr", "es", "pt", "ar")  # list of languages to render
  
  # set language based on region
    # if (reg %in% c("WCAR", "African Union")) {
    #   languages <- c("en", "fr")
    # } else if (reg == "LACR") {
    #   languages <- c("en", "es")
    # } else if (reg == "MENA") {
    #   languages <- c("en", "ar")
    # } else {
    #   languages <- c("en")
    # }
  
  languages <- "en"
  
  for (language in languages) {
    
    message("Generating report for: ", reg, " (Language: ", language, ")")
    
    # arabic plot exception
    plot_lang <- if (language == "ar") "en" else language
    
    output_file <- file.path(
      directory, type, "talking-points/region-specific-talking-points/reports/translated", 
      paste0("Talking-points_", reg, "_", language, ".pdf")
    )
    
    # render
    suppressWarnings(
      rmarkdown::render(
        file.path(directory, type, "talking-points/region-specific-talking-points/wuenic_regional_tp_translated.Rmd"),
        output_file = output_file,
        params = list(region = reg, language = language, plot_language = plot_lang), 
        envir = new.env(), 
        quiet = TRUE
      )
    )
    
    message("Report generated: ", output_file)
  }
} 


# loop to render pdfs for unicef regions to imad_sara folder
for (reg in unicef_regions) {
  
  current_region <- reg
  

  # set language based on region
  if (reg %in% c("WCAR", "African Union")) {
    languages <- c("en", "fr")
  } else if (reg == "LACR") {
    languages <- c("en", "es")
  } else if (reg == "MENA") {
    languages <- c("en", "ar")
  } else {
    languages <- c("en")
  }
  
  for (language in languages) {
    
    message("Generating report for: ", reg, " (Language: ", language, ")")
    
    # arabic plot exception
    plot_lang <- if (language == "ar") "en" else language
    
    output_file <- file.path(RevDir, "unicef-products/imad_sara/talking-points", paste0("Talking-points_", reg, "_", language, ".pdf"))
    
    # render
    suppressWarnings(
      rmarkdown::render(
        file.path(directory, type, "talking-points/region-specific-talking-points/wuenic_regional_tp_translated.Rmd"),
        output_file = output_file,
        params = list(region = reg, language = language, plot_language = plot_lang), 
        envir = new.env(), 
        quiet = TRUE
      )
    )
    
    message("Report generated: ", output_file)
  }
} 

message("All reports generated successfully!")