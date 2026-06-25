
rm(list = ls()) 

# debug_mode <- FALSE
# testing    <- FALSE
# show_marks <- FALSE

library(tidyverse)
library(knitr)
library(tinytex)
library(readxl)
library(openxlsx)
library(patchwork)
library(tidytext)

comp_yr <- 2019
type <- "dummy"

## setup ----
directory <- file.path("/Users/UNICEF/Library/CloudStorage/OneDrive-SharedLibraries-UNICEF/Health-HIV Data & Analytics - 2025 rev/unicef-products")
utils <- file.path(paste0(directory, "/", {type}, "/utils"))
source(file.path(directory, "main_vars.R"))  # key vars
source(str_glue("{directory}/{type}/utils/R/label_vals.R"))  # labeling function
source(str_glue("{directory}/{type}/utils/user_profiles.R"))

# wuenic data
wuenic_dta <- read_rds(str_glue("{directory}/{type}/01_wuenic_dataset-prep/clean_wuenic_MASTER_{rev_yr}rev.rds")) %>%
  #filter(lvl_2 %in% c("region_unicef_ops", "region_au", "region_au_africa")) %>% 
  filter(lvl_2 %in% c("region_unicef_ops")) %>% 
  filter(lvl_1 == "country") %>% 
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
  # new labels
  label_vals_millions(target, "target_lbl") %>%
  label_vals_millions(vaccinated, "vaccinated_lbl") %>%
  label_vals_millions(unvaccinated, "unvaccinated_lbl") %>%
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
  rename(Region = lvl_3) %>%
  label_vals_millions(target, "target_lbl") %>%
  label_vals_millions(vaccinated, "vaccinated_lbl") %>%
  label_vals_millions(unvaccinated, "unvaccinated_lbl")

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
  mutate(key = tolower(key))

## render pdfs ----
# loop through regions and generate reports
for (country in countries) {
  
  current_country <- country
  x <- wuenic_dta %>% filter(country == current_country) %>% pull(iso3c) %>% unique()

  # determine languages to produce (skipping arabic for now)
  if (x %in% list_fr) {
    languages <- c("en", "fr")
  } else if (x %in% list_es) {
    languages <- c("en", "es")
  } else if (x %in% list_pt) {
    languages <- c("en", "pt")
  } else {
    languages <- "en"
  }

  for (language in languages) {
    
    message("Generating report for: ", country, " (Language: ", language, ")")
    
    output_file <- file.path(
      directory, type, "talking-points", "country-specific-talking-points", "reports", 
      paste0("Talking-points_", current_country, "_", language, ".pdf")
    )
    
    rmarkdown::render(
      file.path(directory, "dummy/talking-points/country-specific-talking-points/country_talking_points_translated.Rmd"),
      output_file = output_file,
      params = list(country = current_country, language = language), # pass country and language parameters into Rmd
      envir = new.env(), 
      quiet = TRUE
    )
    
    message("Report generated: ", output_file)
  }
}

message("All reports generated successfully!")
