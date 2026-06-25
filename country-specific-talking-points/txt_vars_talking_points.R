
# ======================================================================================================================
### Talking Points: Dynamic text strings for translation
### Uses same pattern as DQ PowerPoint txt_ variables
# ======================================================================================================================

# ── OVERVIEW ──────────────────────────────────────────────────────────────────
txt_ovw_vax_gt90         <- "Of the {n_vax_total} childhood vaccines tracked for {the_ctry_name}, {n_vax_gt90} achieved coverage of 90 per cent or higher in {rev_yr}."
txt_ovw_vax_none_gt90    <- "None of the {n_vax_total} childhood vaccines tracked for {the_ctry_name} achieved coverage of 90 per cent or higher in {rev_yr}."
txt_ovw_dtp1_cvg         <- "Coverage of DTP1 {cvg_chng_dtp1}, DTP3 {cvg_chng_dtp3}, and MCV1 {cvg_chng_mcv1} in {rev_yr}."
txt_ovw_zd_ia2030        <- "In {rev_yr}, the number of zero-dose children for DTP in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff} per cent {zd_diff_txt} the annual goal to achieve the IA2030 target of halving zero-dose children for DTP by 2030 ({ia2030_rev_yr_lbl})."

# ── DTP1 ──────────────────────────────────────────────────────────────────────
txt_dtp1_cvg_change      <- "In {rev_yr}, DTP1 coverage in {the_ctry_name} was {ctry_cvg_rev} per cent, compared to {ctry_cvg_comp} per cent in {comp_yr}."
txt_dtp1_zd_ia2030       <- "In {rev_yr}, the number of zero-dose children in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff} per cent {zd_diff_txt} the annual IA2030 target ({ia2030_rev_yr_lbl})."
txt_dtp1_surv_infants    <- "With {diff_abs_lbl} {moreless} surviving infants in {rev_yr} compared to {comp_yr}, {to_vax}."
txt_dtp1_reg_rank        <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in DTP1 coverage in {rev_yr} ({ctry_cvg_rev} per cent vs. regional peers)."
txt_dtp1_dropout         <- "DTP1-to-DTP3 dropout in {rev_yr} was {dropout_pct} per cent, {dropout_diff_txt}. {dropout_txt}"

# ── DTP3 ──────────────────────────────────────────────────────────────────────
txt_dtp3_vaccinated      <- "The number of children vaccinated with DTP3 {vacc_pchng_txt} from {vacc_comp_yr_lbl} in {comp_yr} to {vacc_rev_yr_lbl} in {rev_yr}. {pop_chng_txt}"
txt_dtp3_dropout         <- "In {rev_yr}, {dropout_pct} per cent of children who received DTP1 did not receive DTP3. This {dropout_pct} per cent dropout was {dropout_diff_txt}. {dropout_txt}"
txt_dtp3_unvac           <- "In {rev_yr}, DTP3 coverage in {the_ctry_name} was {ctry_cvg_rev_dtp3} per cent, leaving {unvac_dtp3_lbl} children un- or under-vaccinated."
txt_dtp3_reg_rank        <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in DTP3 coverage in {rev_yr}."

# ── MCV ───────────────────────────────────────────────────────────────────────
txt_mcv1_cvg_change      <- "MCV1 coverage in {rev_yr} ({mcv1_cvg_rev} per cent) {cvg_chng_txt}."
txt_mcv2_cvg_change      <- "MCV2 coverage {cvg_chng_txt}. This leaves {mcv1_unvac_lbl} children without any protection against measles and another {mcv_diff_lbl} with only partial protection."
txt_mcv_dropout          <- "In {rev_yr}, {dropout_pct} per cent of children who received DTP1 did not receive MCV1. DTP-MCV dropout was {dropout_diff_txt}. {dropout_txt}"
txt_mcv_persistent_low   <- "{persistent_low_txt}."
txt_mcv_reg_rank         <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in MCV1 coverage in {rev_yr}."

# ── HPV ───────────────────────────────────────────────────────────────────────
txt_hpv_not_introduced   <- "{ctry_name} had not introduced HPV vaccination as of {rev_yr}."
txt_hpv_intro_no_data    <- "{ctry_name} had introduced HPV vaccination as of {rev_yr} but has no {rev_yr} WUENIC HPV data."
txt_hpv_cvg_both         <- "Programme coverage of HPV1 among females {hpv1_diff_txt}, and coverage of the last dose {hpvc_label} {hpvc_diff_txt}."
txt_hpv_cvg_hpv1_only   <- "Programme coverage of HPV1 among females {hpv1_diff_txt}."
txt_hpv_gt90             <- "{gt90_txt}."
txt_hpv_no_hpvc_one_yr   <- "HPVc (last dose) data is available for {ctry_name} in WUENIC but only for one year, so a year-on-year comparison is not possible and HPVc is not included in this report."
txt_hpv_no_hpvc_data     <- "HPVc (last dose) coverage data is not available for {ctry_name} in WUENIC data."
txt_hpv_unvac            <- "In {hpv_rev_yr}, {hpv1_unvac_lbl} females in {the_ctry_name} did not receive any HPV vaccination."
txt_hpv_no_unvac_data    <- "The number of unvaccinated females for HPV in {the_ctry_name} in {hpv_rev_yr} is not available in WUENIC data."
txt_hpv_reg_rank         <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers_hpv} countries in {primary_hpv_label} coverage in {hpv_rev_yr}."

# ── REGIONAL COMPARISON ───────────────────────────────────────────────────────
txt_reg_comp_intro       <- "The chart below shows how {the_ctry_name} compares to other countries in the {ctry_regn} region on DTP1, DTP3, MCV1{hpvc_suffix} coverage in {rev_yr}. The dashed line represents the regional average for each vaccine."
txt_reg_comp_no_hpvc_yr  <- "HPVc (last dose) data is available for {ctry_name} in WUENIC but not for {rev_yr}, so HPVc coverage is not included in the regional comparison."
txt_reg_comp_no_hpvc     <- "HPVc (last dose) data is not available for {ctry_name} in WUENIC, so HPVc coverage is not included in the regional comparison."
txt_reg_comp_hpvc_suffix <- " and HPVc"
txt_map_country <- "Country"
txt_map_region <- "Region"
txt_region_includes_list <- "The {region_translated} region includes the following {length(ctry_list)} countries: {knitr::combine_words(ctry_list)}."

# ── ADDITIONAL VACCINES ───────────────────────────────────────────────────────
txt_add_vax_bullet       <- "{vaccine_label} coverage {diff_txt} and {gt90} the 90 per cent target in {rev_yr}."
txt_add_vax_increased <- "increased from {.[[4]]}% in {comp_yr} to {.[[5]]}% in {rev_yr}"
txt_add_vax_decreased <- "decreased from {.[[4]]}% in {comp_yr} to {.[[5]]}% in {rev_yr}"
txt_add_vax_same <- "remained the same ({.[[4]]}%) between {comp_yr} and {rev_yr}"
txt_add_vax_above90 <- "was above"
txt_add_vax_not_above90 <- "was not above"

# ── DROPOUT DESCRIPTORS (reused across sections) ──────────────────────────────
txt_dropout_low          <- "Low {vax_pair} dropout rates imply good ability to provide a complete vaccine series early in life."
txt_dropout_medium       <- "Medium {vax_pair} dropout rates imply moderate ability to provide a complete vaccine series early in life."
txt_dropout_high         <- "High {vax_pair} dropout rates imply poor ability to provide a complete vaccine series early in life."
txt_dropout_low_mcv      <- "Low DTP-MCV dropout rates imply good retention and ability to provide a full course of vaccines in infancy."
txt_dropout_medium_mcv   <- "Medium DTP-MCV dropout rates imply moderate retention in immunization programmes."
txt_dropout_high_mcv     <- "High DTP-MCV dropout rates imply poor retention in immunization programmes."
txt_dropout_diff_higher_1 <- "{diff} percentage point higher than in {comp_yr} ({.[[3]]}%)"
txt_dropout_diff_higher_pp <- "{diff} percentage points higher than in {comp_yr} ({.[[3]]}%)"
txt_dropout_diff_lower_1 <- "{abs(diff)} percentage point lower than in {comp_yr} ({.[[3]]}%)"
txt_dropout_diff_lower_pp <- "{abs(diff)} percentage points lower than in {comp_yr} ({.[[3]]}%)"
txt_dropout_diff_same <- "the same as in {comp_yr}"

# ── COVERAGE CHANGE DESCRIPTORS ───────────────────────────────────────────────
txt_cvg_stable           <- "remained relatively stable, within 1 percentage point of the {comp_yr} level"
txt_cvg_decreased        <- "decreased from {cvg_comp}% in {comp_yr} to {cvg_rev}% in {rev_yr}"
txt_cvg_increased        <- "increased from {cvg_comp}% in {comp_yr} to {cvg_rev}% in {rev_yr}"
txt_unvac_stable <- "remained relatively stable between {comp_yr} and {rev_yr} at {.[[10]]}"
txt_unvac_declined <- "declined {abs(pchng)}% from {.[[8]]} in {comp_yr} to {.[[10]]} in {rev_yr}"
txt_unvac_increased <- "increased {pchng}% from {.[[8]]} in {comp_yr} to {.[[10]]} in {rev_yr}"
txt_vacc_increased <- "increased"
txt_vacc_decreased <- "decreased"
txt_vacc_same <- "remained the same"
txt_vacc_constant <- "remained constant"
txt_moreless_fewer <- "fewer"
txt_moreless_more <- "more"
txt_moreless_same <- "same"
txt_surv_inf_vax_3 <- "for vaccine coverage to increase, the number of children vaccinated needs to either increase or decline at a slower rate than the decline in surviving infant target population"
txt_surv_inf_vax_1 <- "vaccinating approximately the same number of children as currently reached will be sufficient due to the anticipated decrease or relatively small increases in the birth cohort"
txt_surv_inf_vax_3 <- "maintaining current coverage requires vaccinating an increasing number of children, which will require substantial increases in immunization programme and health system capacity"
txt_cvg_increased_short <- "increased from {.[[4]]}% in {rev_yr-1} to {.[[5]]}% in {rev_yr}"
txt_cvg_decreased_short <- "declined from {.[[4]]}% in {rev_yr-1} to {.[[5]]}% in {rev_yr}"
txt_cvg_same_short <- "was the same in {rev_yr} as it was in {rev_yr-1} ({.[[5]]}%)"
txt_hpv_changed <- "{chng} from {.[[4]]}% in {hpv_rev_yr-1} to {.[[5]]}% in {hpv_rev_yr}"
txt_hpv_constant <- "{chng} at {.[[5]]}% between {hpv_rev_yr-1} and {hpv_rev_yr}"
txt_hpv_gt90_below80_up <- "Despite the increase, {primary_hpv_label} coverage remains below the 90% target."
txt_hpv_gt90_below80 <- "Coverage of {primary_hpv_label} remains below the 90% target."
txt_hpv_gt90_near_up <- "Despite the increase, {primary_hpv_label} coverage has not yet reached the 90% target."
txt_hpv_gt90_near <- "Coverage of {primary_hpv_label} has not yet reached the 90% target."
txt_hpv_gt90_achieved <- "Coverage of {primary_hpv_label} achieved the 90% target."
txt_hpv_gt90_exceeded <- "Coverage of {primary_hpv_label} has exceeded the 90% target."
txt_mcv_persistent_low_yes <- "{capital_the_name} has had MCV1 coverage below {thrshold}% for all of the last {nyrs} years"
txt_mcv_persistent_low_no <- "{capital_the_name} has not had MCV1 coverage below {thrshold}% for any of the last {nyrs} years"


# ── ZERO-DOSE DIRECTION ───────────────────────────────────────────────────────
txt_zd_higher_than       <- "higher than"
txt_zd_lower_than        <- "lower than"
txt_zd_same_as           <- "the same as"

# ── POPULATION CONTEXT ────────────────────────────────────────────────────────
txt_pop_growth_context   <- "Due to population growth of approximately {pop_grwth} per cent between {comp_yr} and {rev_yr}, DTP3 coverage in {rev_yr} ({ctry_cvg_rev_dtp3} per cent) was lower than in {comp_yr} ({ctry_cvg_comp_dtp3} per cent)."
txt_surv_inf_vax_1       <- "vaccinating approximately the same number of children as currently reached will be sufficient due to the anticipated decrease or relatively small increases in the birth cohort"
txt_surv_inf_vax_2       <- "maintaining current coverage requires vaccinating an increasing number of children, which will require substantial increases in immunization programme and health system capacity"
txt_surv_inf_vax_3       <- "for vaccine coverage to increase, the number of children vaccinated needs to either increase or decline at a slower rate than the decline in surviving infant target population"

# ── PLOT LABELS ───────────────────────────────────────────────────────────────
txt_plt_dtp1_title       <- "DTP1 coverage and zero-dose children over time, {ctry_name}, 2000–{rev_yr}"
txt_plt_dtp3_title       <- "DTP3 coverage and un- or under-vaccinated children over time, {ctry_name}, 2000–{rev_yr}"
txt_plt_mcv_title        <- "MCV coverage and MCV zero-dose children over time, {ctry_name}, 2000–{rev_yr}"
txt_plt_hpv_title        <- "{hpv_vax_str}{hpv_unvac_str} over time, {ctry_name}, {first_hpv_year}–{hpv_rev_yr}"
txt_plt_reg_comp_title   <- "Coverage comparison: {ctry_name} vs. {region} peers, {rev_yr}"
txt_plt_add_vax_title    <- "Additional vaccine coverage (%), {ctry_name}, 2000–{rev_yr}"
txt_plt_ovw_heatmap_title <- "Vaccine coverage (%), {ctry_name}, 2000–{rev_yr}"
txt_plt_ovw_line_title   <- "Vaccine coverage over time, {ctry_name}, 2000–{rev_yr}"
txt_plt_hpv_both_unvac <- "HPV1 and HPVc coverage and unvaccinated females" 
txt_plt_hpv_both_only <- "HPV1 and HPVc coverage"
txt_plt_hpv1_unvac <- "HPV1 coverage and unvaccinated females"
txt_plt_hpv1_only <- "HPV1 coverage"

txt_plt_ia2030_caption   <- "Dotted line shows the IA2030 target of 90% coverage"
txt_plt_reg_comp_subtitle <- "Dashed line = regional average"
txt_plt_dtp1_legend_cvg  <- "DTP1 coverage"
txt_plt_dtp1_legend_zd   <- "Zero-dose children"
txt_plt_dtp3_legend_cvg  <- "DTP3 coverage"
txt_plt_dtp3_legend_unvac <- "Un- or Under-Vaccinated Children"
txt_plt_mcv1_legend_cvg  <- "MCV1 coverage"
txt_plt_mcv2_legend_cvg  <- "MCV2 coverage"
txt_plt_mcv_legend_zd    <- "MCV zero-dose children"
txt_plt_hpv1_legend_cvg  <- "HPV1 coverage"
txt_plt_hpvc_legend_cvg  <- "HPVc coverage"
txt_plt_hpv_legend_unvac <- "Unvaccinated females"
txt_plt_cvg_pct          <- "Coverage (%)"
txt_plt_year             <- "Year"
txt_plt_zd_children      <- "Zero-dose children"
txt_plt_unvac_females    <- "Unvaccinated females"
txt_plt_unvac_undervac   <- "Un- or under-vaccinated children"
txt_plt_reg_comp_peers   <- "Peers"
txt_plt_cvg_pct_legend <- "Vaccine coverage (%)  "

# ── SECTION HEADERS
txt_sec_overview         <- "Overview"
txt_sec_banner_title <- "WUENIC Talking Points"
txt_sec_banner_revision <- "Revision Year"
txt_sec_dtp1             <- "DTP1: Reaching zero-dose children"
txt_sec_dtp3             <- "DTP3: A marker of routine immunization service delivery to children"
txt_sec_mcv              <- "MCV: Canary in the coal mine"
txt_sec_hpv              <- "HPV"
txt_sec_reg_comp         <- "Regional Comparison"
txt_sec_add_vax          <- "Additional Vaccines"
txt_sec_appendix         <- "Appendix"
txt_map_title_full <- "<span style='color:#1CABE2;'>{ctry_name}</span> in the '{region_for_country}' region"
txt_appendix_wuenic_header <- "WHO/UNICEF Estimates of National Immunization Coverage (WUENIC)"
txt_appendix_wuenic_body <- "Each year, WHO and UNICEF review national immunization data from Member States, including
administrative and official coverage, survey estimates and contextual information, and use rules-
based data triangulation approach to assess coverage. Estimates are produced independently,
without borrowing data from other countries, and are not based on ad hoc adjustments. In some
cases, they rely on a single source, typically nationally reported coverage. When data for a specific
country-vaccine-year are unavailable, values from adjacent years are interpolated or extrapolated,
and conflicting sources are assessed to determine the most reliable estimate, considering potential
biases and expert opinion."
txt_appendix_methods_header <- "Methods"
txt_appendix_wuenic_revision <- str_glue("These talking points present the latest WUENIC estimates (published 15 July {rev_yr+1}).")
txt_appendix_definitions_header <- "Definitions of immunization terms:"
txt_appendix_resources_header <- "Additional resources:"
txt_nicaragua_note <- "- Note: Data from Nicaragua is not shown individually, but it is included in aggregate measures in this report."
txt_region_banner_title <- "WUENIC Talking Points: {region_translated} Region"
txt_region_title <- "{region_translated} Region"

# ── DEFINITIONS
txt_def_bcg   <- "Bacillus Calmette-Guerin (BCG): vaccine against tuberculosis"
txt_def_hepbb <- "Hepatitis B birth dose, given within 24 hours after birth (HepBB)"
txt_def_dtp   <- "Diphtheria, tetanus, and pertussis vaccine, first dose (DTP1) and third dose (DTP3)"
txt_def_hepb3 <- "Hepatitis B vaccine, third dose (HepB3)"
txt_def_hib3  <- "Haemophilus influenzae type B vaccine, third dose (Hib3)"
txt_def_pol3  <- "Poliomyelitis vaccine, third dose (Polio3)"
txt_def_ipv   <- "Inactivated polio vaccine, first dose (IPV1) and second dose (IPV2): second dose is only shown for oral polio vaccine (OPV) using countries"
txt_def_mcv   <- "Measles containing vaccine, first dose (MCV1) and second dose (MCV2)"
txt_def_rotac <- "Rotavirus vaccine, last dose (RotaC)"
txt_def_pcv3  <- "Pneumococcal vaccine, third dose (PCV3)"
txt_def_yfv   <- "Yellow Fever vaccine (YFV)"
txt_def_menga <- "Meningococcal A vaccine (MengA)"
txt_def_hpv   <- "Human Papillomavirus vaccine, first dose (HPV1) and last dose (HPVc)"

# ── COLLECT ALL txt_ VARIABLES ────────────────────────────────────────────────
text_vars_tp_en <- mget(ls(pattern = "^txt_"))