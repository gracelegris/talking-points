
rm(list = ls()) 

library(tidyverse)
library(knitr)
library(tinytex)
library(readxl)
library(openxlsx)
library(patchwork)
library(tidytext)

comp_yr <- 2019

## setup ----
source("unicef-products/main_vars.R")  # key vars
source(str_glue("unicef-products/{type}/utils/R/label_vals.R"))  # labeling function
source(str_glue("unicef-products/{type}/country-specific-talking-points/utils/user_profiles.R"))

# wuenic data
wuenic_dta <- read_rds(str_glue("unicef-products/{type}/01_wuenic_dataset-prep/clean_wuenic_MASTER_{rev_yr}rev.rds")) %>%
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
hpv_dta <- read_excel(str_glue('unicef-products/{type}/region-specific-talking-points/utils/hpv_estimates_wuenic{hpv_rev_yr}rev.xlsx')) %>%
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
wiise_hpv_intro_yrs <- read_excel(str_glue("unicef-products/{type}/utils/wiise-hpv_intro_{rev_yr}rev.xlsx"))

# base map
base_map_df <- readRDS(str_glue('unicef-products/{type}/utils/unicef-base-map.rds')) %>% 
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

## render pdfs ----
# loop through regions and generate reports
for (country in countries) {

  message("Generating report for: ", country)
  output_file <- str_glue("reports/Talking-points_{country}.pdf")
  
  rmarkdown::render(str_glue("unicef-products/{type}/country-specific-talking-points/country_report_template.Rmd"),
                    output_file = output_file,
                    params = list(country = country),
                    envir = new.env(), # ensure a clean environment
                    quiet = TRUE)
  
  message("Report generated: ", output_file)
}

message("All reports generated successfully!")
