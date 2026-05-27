rm(list = ls())
library(tidyverse)
library(knitr)
library(tinytex)
library(readxl)
library(openxlsx)
library(patchwork)

comp_yr <- 2019
rev_yr <- 2025
type <- "dummy" 

## setup ----
directory <- file.path("/Users/UNICEF/Library/CloudStorage/OneDrive-SharedLibraries-UNICEF/Health-HIV Data & Analytics - 2025 rev/unicef-products")
source(file.path(directory, type, "utils/user_profiles.R"))
source(file.path(directory, "main_vars.R"))
source(file.path(directory, type, "talking-points/region-specific-talking-points/utils/label_vals.R"))

# wuenic data
wuenic_dta <- read_rds(file.path(directory, type, paste0("01_wuenic_dataset-prep/clean_wuenic_MASTER_", rev_yr, "rev.rds"))) %>%
  filter(lvl_2 %in% c("region_unicef_ops", "region_au", "region_au_africa"), year >= 2000) %>%
  mutate(country = case_when(iso3c == "bol" ~ "Bolivia", iso3c == "cod" ~ "DRC", iso3c == "fsm" ~ "Micronesia", iso3c == "irn" ~ "Iran", iso3c == "png" ~ "PNG", iso3c == "prk" ~ "DPRK", iso3c == "syr" ~ "Syria", iso3c == "lao" ~ "Laos", iso3c == "tza" ~ "Tanzania", iso3c == "ven" ~ "Venezuela", iso3c == "tur" ~ "Turkiye", TRUE ~ country)) %>%
  label_vals_millions(target, "target_lbl") %>%
  label_vals_millions(vaccinated, "vaccinated_lbl") %>%
  label_vals_millions(unvaccinated, "unvaccinated_lbl") %>%
  rename(Region = lvl_3) %>%
  filter(Region %in% c("ROSA", "ESAR", "ECAR", "MENA", "LACR", "WCAR", "EAPR", "Non-programme"))

# hpv data
hpv_dta <- read_excel(file.path(directory, type, paste0("talking-points/region-specific-talking-points/utils/hpv_estimates_wuenic", hpv_rev_yr, "rev.xlsx"))) %>%
  filter(vaccine_code %in% c("PRHPV1_F", "PRHPVC_F"), lvl_2 %in% c("region_unicef_ops", "region_au", "region_au_africa")) %>%
  mutate(vaccine = case_when(vaccine_code == "PRHPV1_F" ~ "HPV1 Females", vaccine_code == "PRHPVC_F" ~ "HPVc Females", TRUE ~ NA_character_)) %>%
  rename(Region = lvl_3) %>%
  label_vals_millions(target, "target_lbl") %>%
  label_vals_millions(vaccinated, "vaccinated_lbl") %>%
  label_vals_millions(unvaccinated, "unvaccinated_lbl")

# hpv vaccine intro years
wiise_hpv_intro_yrs <- read_excel(file.path(directory, type, paste0("utils/wiise-hpv_intro_", rev_yr, "rev.xlsx")))

# base map
base_map_df <- readRDS(file.path(directory, type, "utils/unicef-base-map.rds")) %>%
  sf::st_as_sf() %>%
  mutate_at(vars(iso3c), str_to_lower)

## unique regions ----
regions <- unique(wuenic_dta$Region)

## render pdfs ----
for (reg in regions) {
  parent_reg <- if (grepl("Africa", reg)) "au" else "unicef"
  output_file <- file.path(directory, type, "talking-points/region-specific-talking-points/reports", parent_reg, paste0("Talking-points_", reg, ".pdf"))
  
  rmarkdown::render(file.path(directory, type, "talking-points/region-specific-talking-points/wuenic_regional_talking_points_formatted.Rmd"),
                    output_file = output_file,
                    params = list(region = reg),
                    envir = new.env())
  
  message("Report generated: ", output_file)
}

message("All reports generated successfully!")