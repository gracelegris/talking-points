
# ======================================================================================================================
### Talking Points: Dynamic text strings for translation
### Uses same pattern as DQ PowerPoint txt_ variables
# ======================================================================================================================

# ── OVERVIEW ──────────────────────────────────────────────────────────────────
txt_ovw_vax_gt90         <- "Of the {n_vax_total} childhood vaccines tracked for {the_ctry_name}, {n_vax_gt90} achieved coverage of 90% or higher in {rev_yr}."
txt_ovw_vax_none_gt90    <- "None of the {n_vax_total} childhood vaccines tracked for {the_ctry_name} achieved coverage of 90% or higher in {rev_yr}."
txt_ovw_dtp1_cvg         <- "Coverage of the first dose of diphtheria-tetanus-pertussis-containing vaccine (DTP1) {cvg_chng_dtp1}, third dose of DTP-containing vaccine (DTP3) {cvg_chng_dtp3}, and first dose of the measles-containing vaccine (MCV1) {cvg_chng_mcv1} in {rev_yr}."
txt_ovw_zd_ia2030        <- "In {rev_yr}, the number of zero-dose children for DTP in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff}% {zd_diff_txt} the annual goal to achieve the IA2030 target of halving zero-dose children for DTP by 2030 ({ia2030_rev_yr_lbl})."
txt_contents <-  "Contents"

txt_ia2030_zd_proj_bar_line_y <- "# zero-dose children"
txt_ia2030_zd_proj_bar_line_title <- "Estimated number of zero-dose children,\n2000–{rev_yr} and target by 2030, {region_translated_plots} Region"
txt_ia2030_zd_proj_bar_line_cpt <- "Note: The Immunization Agenda 2030 (IA2030) calls on all countries to reduce the number of zero-dose children in 2019 in half by 2030.\nDark blue bars are the estimated number of zero-dose children in 2000–{rev_yr}, light blue bar is the target number of zero-dose children by 2030.\nThe line and points show the yearly progress and trajectory to meet the target by 2030, based on a linear decline."

# ── DTP1 ──────────────────────────────────────────────────────────────────────
#txt_dtp1_cvg_change      <- "In {rev_yr}, DTP1 coverage in {the_ctry_name} was {ctry_cvg_rev}%, compared to {ctry_cvg_comp}% in {comp_yr}."
txt_dtp1_zd_ia2030       <- "In {rev_yr}, the number of zero-dose children in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff}% {zd_diff_txt} the annual IA2030 target ({ia2030_rev_yr_lbl})."
txt_dtp1_surv_infants    <- "With {diff_abs_lbl} {moreless} surviving infants in {rev_yr} compared to {comp_yr}, {to_vax}."
txt_dtp1_reg_rank        <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in DTP1 coverage in {rev_yr} ({ctry_cvg_rev}% vs. regional peers)."
txt_dtp1_dropout         <- "DTP1-to-DTP3 dropout in {rev_yr} was {dropout_pct}%, {dropout_diff_txt}. {dropout_txt}"
txt_dtp1_change_summary <- "The number of children vaccinated with DTP1 {pchng_txt}."
txt_dtp1_zd_ia2030_summary <- "In {rev_yr}, the number of zero-dose children ({estimate_lbl}) was approximately {pcnt_diff}% {diff_txt} the annual number proposed to achieve the Immunization Agenda 2030 target in {regn} region ({ia2030_lbl}), based on a linear trajectory of decline."
txt_dtp1_surviving_infants_summary <- "With {diff_abs_lbl} {moreless} surviving infants in the region compared to in {comp_yr}, {to_vax}."
txt_dtp1_top2_zd_ctry_summary <- "In {rev_yr}, {ctry_list} represented approximately {pct1}% and {pct2}% of all zero-dose children in {regn} (n = {total_zd}), respectively. {ctry1} had the highest number of zero-dose children at {n1}, and {ctry2} had the second highest at {n2}."
txt_dtp1_lowest_coverage_summary <- "In {rev_yr}, the lowest DTP1 coverage was observed in {ctry1} at {pct1}%, followed by {ctry2} at {pct2}%."
txt_dtp1_change_summary <- "The number of children vaccinated with DTP1 {direction} {pchng}% from {comp_val} in {comp_yr} to {rev_val} in {rev_yr}."

# DTP3 coverage vs comp_yr and minusone_yr, combined into one sentence
txt_dtp1_cvg_higher_higher <- "DTP1 coverage in {rev_yr} was {rev_pct}%, higher than in both {comp_yr} ({comp_pct}%) and {minusone_yr} ({minusone_pct}%)."
txt_dtp1_cvg_higher_lower  <- "DTP1 coverage in {rev_yr} was {rev_pct}%, higher than in {comp_yr} ({comp_pct}%) but lower than in {minusone_yr} ({minusone_pct}%)."
txt_dtp1_cvg_higher_same  <- "DTP1 coverage in {rev_yr} was {rev_pct}%, higher than in {comp_yr} ({comp_pct}%) and the same as in {minusone_yr}."
txt_dtp1_cvg_lower_higher  <- "DTP1 coverage in {rev_yr} was {rev_pct}%, lower than in {comp_yr} ({comp_pct}%) but higher than in {minusone_yr} ({minusone_pct}%)."
txt_dtp1_cvg_lower_lower   <- "DTP1 coverage in {rev_yr} was {rev_pct}%, lower than in both {comp_yr} ({comp_pct}%) and {minusone_yr} ({minusone_pct}%)."
txt_dtp1_cvg_lower_same   <- "DTP1 coverage in {rev_yr} was {rev_pct}%, lower than in {comp_yr} ({comp_pct}%) and the same as in {minusone_yr}."
txt_dtp1_cvg_same_higher  <- "DTP1 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} but higher than in {minusone_yr} ({minusone_pct}%)."
txt_dtp1_cvg_same_lower  <- "DTP1 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} but lower than in {minusone_yr} ({minusone_pct}%)."
txt_dtp1_cvg_same_same  <- "DTP1 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} and {minusone_yr}."

# ── DTP3 ──────────────────────────────────────────────────────────────────────
# txt_dtp3_vaccinated      <- "The number of children vaccinated with DTP3 {vacc_pchng_txt} from {vacc_comp_yr_lbl} in {comp_yr} to {vacc_rev_yr_lbl} in {rev_yr}. {pop_chng_txt}"
# txt_dtp3_dropout         <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive DTP3. This {dropout_pct}% dropout was {dropout_diff_txt}. {dropout_txt}"
# txt_dtp3_unvac           <- "In {rev_yr}, DTP3 coverage in {the_ctry_name} was {ctry_cvg_rev_dtp3}%, leaving {unvac_dtp3_lbl} children un- or under-vaccinated."
# txt_dtp3_reg_rank        <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in DTP3 coverage in {rev_yr}."

txt_dtp3_change_summary <- "The number of children vaccinated with DTP3 {direction} {pchng}% from {comp_val} in {comp_yr} to {rev_val} in {rev_yr}. {pop_chng_txt}"
txt_dtp3_dropout <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive DTP3. DTP dropout was {dropout_diff_txt}. {dropout_txt}"
txt_dtp3_coverage_range <- "In {rev_yr}, DTP3 coverage ranged from {min_pct}% in {min_ctry} to {max_pct}% in {max_ctry}."
txt_dtp3_top2_unvac_summary <- "In {rev_yr}, {ctry1} had DTP3 coverage of {pct1}% and the highest absolute number of un- and undervaccinated children in the region ({unvac1}), followed by {ctry2} with {pct2}% coverage and {unvac2} un- and undervaccinated children."

# DTP3 coverage vs comp_yr and minusone_yr, combined into one sentence
txt_dtp3_cvg_higher_higher <- "DTP3 coverage in {rev_yr} was {rev_pct}%, higher than in both {comp_yr} ({comp_pct}%) and {minusone_yr} ({minusone_pct}%)."
txt_dtp3_cvg_higher_lower  <- "DTP3 coverage in {rev_yr} was {rev_pct}%, higher than in {comp_yr} ({comp_pct}%) but lower than in {minusone_yr} ({minusone_pct}%)."
txt_dtp3_cvg_higher_same  <- "DTP3 coverage in {rev_yr} was {rev_pct}%, higher than in {comp_yr} ({comp_pct}%) and the same as in {minusone_yr}."
txt_dtp3_cvg_lower_higher  <- "DTP3 coverage in {rev_yr} was {rev_pct}%, lower than in {comp_yr} ({comp_pct}%) but higher than in {minusone_yr} ({minusone_pct}%)."
txt_dtp3_cvg_lower_lower   <- "DTP3 coverage in {rev_yr} was {rev_pct}%, lower than in both {comp_yr} ({comp_pct}%) and {minusone_yr} ({minusone_pct}%)."
txt_dtp3_cvg_lower_same   <- "DTP3 coverage in {rev_yr} was {rev_pct}%, lower than in {comp_yr} ({comp_pct}%) and the same as in {minusone_yr}."
txt_dtp3_cvg_same_higher  <- "DTP3 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} but higher than in {minusone_yr} ({minusone_pct}%)."
txt_dtp3_cvg_same_lower  <- "DTP3 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} but lower than in {minusone_yr} ({minusone_pct}%)."
txt_dtp3_cvg_same_same  <- "DTP3 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} and {minusone_yr}."

# ── MCV ───────────────────────────────────────────────────────────────────────
txt_mcv1_cvg_change      <- "MCV1 coverage in {rev_yr} ({mcv1_cvg_rev}%) {cvg_chng_txt}."
txt_mcv2_cvg_change      <- "Coverage of the second dose of measles-containing vaccine (MCV2) {cvg_chng_txt}. This leaves {mcv1_unvac_lbl} children without any protection against measles and another {mcv_diff_lbl} with only partial protection."
#txt_mcv_dropout          <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. DTP-MCV dropout was {dropout_diff_txt}. {dropout_txt}"
txt_mcv_persistent_low   <- "{persistent_low_txt}."
txt_mcv_reg_rank         <- "Among {ctry_regn} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in MCV1 coverage in {rev_yr}."

# DTP-MCV dropout
txt_mcv_dropout_higher_higher <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage points higher than in {comp_yr} ({comp_pct}%) and higher than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_higher_lower  <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage points higher than in {comp_yr} ({comp_pct}%) but lower than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_higher_same <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage points higher than in {comp_yr} ({comp_pct}%) and the same as the {minusone_yr} dropout rate."
txt_mcv_dropout_lower_higher  <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage points lower than in {comp_yr} ({comp_pct}%) but higher than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_lower_lower   <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage points lower than in {comp_yr} ({comp_pct}%) and lower than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_lower_same  <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage points lower than in {comp_yr} ({comp_pct}%) and the same as the {minusone_yr} dropout rate."
txt_mcv_dropout_same_higher <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was the same as in {comp_yr} but higher than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_same_lower  <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was the same as in {comp_yr} but lower than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_same_same <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was the same as in {comp_yr} ({comp_pct}%) and the same as the {minusone_yr} dropout rate ({minusone_pct}%)."

txt_mcv_dropout_higher_higher_1pp <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage point higher than in {comp_yr} ({comp_pct}%) and higher than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_higher_lower_1pp  <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage point higher than in {comp_yr} ({comp_pct}%) but lower than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_higher_same_1pp   <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage point higher than in {comp_yr} ({comp_pct}%) and the same as the {minusone_yr} dropout rate."
txt_mcv_dropout_lower_higher_1pp  <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage point lower than in {comp_yr} ({comp_pct}%) but higher than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_lower_lower_1pp   <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage point lower than in {comp_yr} ({comp_pct}%) and lower than the {minusone_yr} dropout rate ({minusone_pct}%)."
txt_mcv_dropout_lower_same_1pp   <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. This {dropout_pct}% dropout rate was {diff_pp} percentage point lower than in {comp_yr} ({comp_pct}%) and the same as the {minusone_yr} dropout rate."

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
txt_hpv_no_data <- "HPV data is not available for {region_translated}."

# ── REGIONAL COMPARISON ───────────────────────────────────────────────────────
txt_reg_comp_intro       <- "The chart below shows how {the_ctry_name} compares to other countries in the {ctry_regn} region on DTP1, DTP3, MCV1{hpvc_suffix} coverage in {rev_yr}. The dashed line represents the regional average for each vaccine."
txt_reg_comp_no_hpvc_yr  <- "HPVc (last dose) data is available for {ctry_name} in WUENIC but not for {rev_yr}, so HPVc coverage is not included in the regional comparison."
txt_reg_comp_no_hpvc     <- "HPVc (last dose) data is not available for {ctry_name} in WUENIC, so HPVc coverage is not included in the regional comparison."
txt_reg_comp_hpvc_suffix <- " and HPVc"
txt_map_country <- "Country"
txt_map_region <- "Region"
txt_region_includes_list <- "The {region_translated} region includes the following {n_ctry} countries: {ctry_list_txt}."

# ── ADDITIONAL VACCINES ───────────────────────────────────────────────────────
txt_add_vax_bullet       <- "{vaccine_label} coverage {diff_txt} and {gt90} the 90% target in {rev_yr}."
txt_add_vax_increased <- "increased from {.[[4]]}% in {comp_yr} to {.[[5]]}% in {rev_yr}"
txt_add_vax_decreased <- "decreased from {.[[4]]}% in {comp_yr} to {.[[5]]}% in {rev_yr}"
txt_add_vax_same <- "remained the same ({.[[4]]}%) between {comp_yr} and {rev_yr}"

# ── DROPOUT DESCRIPTORS (reused across sections) ──────────────────────────────
txt_dropout_diff_higher_1  <- "DTP-MCV dropout was 1 percentage point higher than in {comp_yr} ({comp_pct}%)."
txt_dropout_diff_higher_pp <- "DTP-MCV dropout was {diff} percentage points higher than in {comp_yr} ({comp_pct}%)."
txt_dropout_diff_lower_1   <- "DTP-MCV dropout was 1 percentage point lower than in {comp_yr} ({comp_pct}%)."
txt_dropout_diff_lower_pp  <- "DTP-MCV dropout was {diff} percentage points lower than in {comp_yr} ({comp_pct}%)."
txt_dropout_diff_same      <- "DTP-MCV dropout was the same as in {comp_yr} ({comp_pct}%)."

# ── DTP1-DTP3 DROPOUT ─────────────────────────────────────────────────────────
txt_dtp3_dropout_low    <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive DTP3, which was {dropout_diff_txt}; low dropout rates imply good ability to provide a complete series of vaccines early in life."
txt_dtp3_dropout_medium <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive DTP3, which was {dropout_diff_txt}; medium dropout rates imply moderate ability to provide a complete series of vaccines early in life."
txt_dtp3_dropout_high   <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive DTP3, which was {dropout_diff_txt}; high dropout rates imply poor ability to provide a complete series of vaccines early in life."

txt_dtp3_diff_higher_1  <- "1 percentage point higher than in {comp_yr} ({comp_pct}%)"
txt_dtp3_diff_higher_pp <- "{diff} percentage points higher than in {comp_yr} ({comp_pct}%)"
txt_dtp3_diff_lower_1   <- "1 percentage point lower than in {comp_yr} ({comp_pct}%)"
txt_dtp3_diff_lower_pp  <- "{diff} percentage points lower than in {comp_yr} ({comp_pct}%)"
txt_dtp3_diff_same      <- "the same as in {comp_yr} ({comp_pct}%)"

# ── DTP1-MCV1 DROPOUT ─────────────────────────────────────────────────────────
txt_mcv_dropout_low    <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1, which was {dropout_diff_txt}; low dropout rates imply good retention and ability to provide a full course of vaccines in infancy."
txt_mcv_dropout_medium <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1, which was {dropout_diff_txt}; medium dropout rates imply moderate retention in immunization programmes."
txt_mcv_dropout_high   <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1, which was {dropout_diff_txt}; high dropout rates imply poor retention in immunization programmes."

txt_mcv_diff_higher_1  <- "1 percentage point higher than in {comp_yr} ({comp_pct}%)"
txt_mcv_diff_higher_pp <- "{diff} percentage points higher than in {comp_yr} ({comp_pct}%)"
txt_mcv_diff_lower_1   <- "1 percentage point lower than in {comp_yr} ({comp_pct}%)"
txt_mcv_diff_lower_pp  <- "{diff} percentage points lower than in {comp_yr} ({comp_pct}%)"
txt_mcv_diff_same      <- "the same as in {comp_yr} ({comp_pct}%)"
txt_dropout_low_mcv    <- "Low DTP-MCV dropout rates imply good retention and ability to provide a full course of vaccines in infancy."
txt_dropout_medium_mcv <- "Medium DTP-MCV dropout rates imply moderate retention in immunization programmes."
txt_dropout_high_mcv   <- "High DTP-MCV dropout rates imply poor retention in immunization programmes."

txt_dropout_low    <- "Low {vax_pair} dropout rates imply good ability to provide a complete vaccine series early in life."
txt_dropout_medium <- "Medium {vax_pair} dropout rates imply moderate ability to provide a complete vaccine series early in life."
txt_dropout_high   <- "High {vax_pair} dropout rates imply poor ability to provide a complete vaccine series early in life."

# MCV1 vs comp_yr and minusone_yr, combined into one sentence
txt_mcv1_cvg_higher_higher <- "MCV1 coverage in {rev_yr} was {rev_pct}%, higher than in both {comp_yr} ({comp_pct}%) and {minusone_yr} ({minusone_pct}%)."
txt_mcv1_cvg_higher_lower  <- "MCV1 coverage in {rev_yr} was {rev_pct}%, higher than in {comp_yr} ({comp_pct}%) but lower than in {minusone_yr} ({minusone_pct}%)."
txt_mcv1_cvg_higher_same <- "MCV1 coverage in {rev_yr} was {rev_pct}%, higher than in {comp_yr} ({comp_pct}%) and the same as in {minusone_yr}."
txt_mcv1_cvg_lower_higher  <- "MCV1 coverage in {rev_yr} was {rev_pct}%, lower than in {comp_yr} ({comp_pct}%) but higher than in {minusone_yr} ({minusone_pct}%)."
txt_mcv1_cvg_lower_lower   <- "MCV1 coverage in {rev_yr} was {rev_pct}%, lower than in both {comp_yr} ({comp_pct}%) and {minusone_yr} ({minusone_pct}%)."
txt_mcv1_cvg_lower_same  <- "MCV1 coverage in {rev_yr} was {rev_pct}%, lower than in {comp_yr} ({comp_pct}%) and the same as in {minusone_yr}."
txt_mcv1_cvg_same_higher <- "MCV1 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} but higher than in {minusone_yr} ({minusone_pct}%)."
txt_mcv1_cvg_same_lower  <- "MCV1 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} but lower than in {minusone_yr} ({minusone_pct}%)."
txt_mcv1_cvg_same_same <- "MCV1 coverage in {rev_yr} was {rev_pct}%, the same as in {comp_yr} and {minusone_yr}."

# MCV2 vs comp_yr and minusone_yr, combined into one sentence
txt_mcv2_cvg_higher_higher <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, higher than in both {comp_yr} ({mcv2_comp_cvg}%) and {minusone_col} ({mcv2_minusone_pct}%). This still leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_higher_lower  <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, higher than in {comp_yr} ({mcv2_comp_cvg}%) but lower than in {minusone_col} ({mcv2_minusone_pct}%). This still leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_higher_same <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, higher than in {comp_yr} ({mcv2_comp_cvg}%) and the same as in {minusone_col}. This still leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_lower_higher  <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, lower than in {comp_yr} ({mcv2_comp_cvg}%) but higher than in {minusone_col} ({mcv2_minusone_pct}%). This leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_lower_lower   <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, lower than in both {comp_yr} ({mcv2_comp_cvg}%) and {minusone_col} ({mcv2_minusone_pct}%). This leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_lower_same  <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, lower than in {comp_yr} ({mcv2_comp_cvg}%) and the same as in {minusone_col}. This leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_same_higher <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, the same as in {comp_yr} but higher than in {minusone_col} ({mcv2_minusone_pct}%). This leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_same_lower  <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, the same as in {comp_yr} but lower than in {minusone_col} ({mcv2_minusone_pct}%). This leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."
txt_mcv2_cvg_same_same <- "Coverage of the second dose of the measles-containing vaccine (MCV2) in {rev_yr} was {mcv2_rev_cvg}%, the same as in {comp_yr} and {minusone_col}. This leaves {mcv1_lbl} children without any protection and another {diff_lbl} with only partial protection against the measles virus."

txt_mcv_dropout       <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1."
txt_mcv_top_unvac_ctry <- "In {rev_yr}, {country} had the highest number of children who did not receive the measles vaccine ({unvac_n}), representing approximately {unvac_pct}% of all children unprotected against measles in {region} ({mcv1_lbl})."

# ── COVERAGE CHANGE DESCRIPTORS ───────────────────────────────────────────────
txt_cvg_stable           <- "remained relatively stable, within 1 percentage point of the {comp_yr} level"
txt_cvg_lower_than_baseline <- "was lower than in {comp_yr}"
txt_cvg_higher_than_baseline <- "was higher than in {comp_yr}"
txt_cvg_decreased        <- "decreased from {cvg_comp}% in {comp_yr} to {cvg_rev}% in {rev_yr}"
txt_cvg_increased        <- "increased from {cvg_comp}% in {comp_yr} to {cvg_rev}% in {rev_yr}"
txt_unvac_stable <- "remained relatively stable between {comp_yr} and {rev_yr} at {.[[10]]}"
txt_unvac_declined <- "declined {abs(pchng)}% from {.[[8]]} in {comp_yr} to {.[[10]]} in {rev_yr}"
txt_unvac_increased <- "increased {pchng}% from {.[[8]]} in {comp_yr} to {.[[10]]} in {rev_yr}"
txt_cvg_increased_short <- "increased from {.[[7]]}% in {rev_yr-1} to {.[[8]]}% in {rev_yr}"
txt_cvg_decreased_short <- "declined from {.[[7]]}% in {rev_yr-1} to {.[[8]]}% in {rev_yr}"
txt_cvg_same_short <- "was the same in {rev_yr} as it was in {rev_yr-1} ({.[[7]]}%)"
txt_hpv_changed <- "{chng} from {.[[4]]}% in {hpv_rev_yr-1} to {.[[5]]}% in {hpv_rev_yr}"
txt_hpv_constant <- "{chng} at {.[[5]]}% between {hpv_rev_yr-1} and {hpv_rev_yr}"
txt_hpv_gt90_below80_up <- "Despite the increase, {primary_hpv_label} coverage remains below the 90% target."
txt_hpv_gt90_below80 <- "Coverage of {primary_hpv_label} remains below the 90% target."
txt_hpv_gt90_near_up <- "Despite the increase, {primary_hpv_label} coverage has not yet reached the 90% target."
txt_hpv_gt90_near <- "Coverage of {primary_hpv_label} has not yet reached the 90% target."
txt_hpv_gt90_achieved <- "Coverage of {primary_hpv_label} achieved the 90% target."
txt_hpv_gt90_exceeded <- "Coverage of {primary_hpv_label} has exceeded the 90% target."
txt_mcv_persistent_low_yes <- "{capital_the_name} has had MCV1 coverage below {thrshold}% for all of the last {nyrs} years."
txt_mcv_persistent_low_no <- "{capital_the_name} has not had MCV1 coverage below {thrshold}% for any of the last {nyrs} years."
txt_was_1_country <- "was {nctry_lt90} country"
txt_were_n_countries <- "were {nctry_lt90} countries"
txt_were_no_countries <- "were no countries"
txt_ovw_ctry_level_achieved <- "At the country level, {n_achieved} out of {total_ctry} ({pct_achieved}%) countries achieved coverage of 90% or higher in at least one of the {n_vax} childhood vaccines administered in the region."
txt_ovw_ctry_level_failed <- "There {nctry_lt90_txt} that did not achieve at least 90% coverage in any vaccine ({failed_list})."
#txt_dtp1_surviving_infants_more <- "There were {diff_abs_lbl} more surviving infants in the region in {rev_yr} compared to in {comp_yr}. {to_vax}"
#txt_dtp1_surviving_infants_fewer <- "There were {diff_abs_lbl} fewer surviving infants in the region in {rev_yr} compared to in {comp_yr}. {to_vax}"

# ── ZERO-DOSE DIRECTION ───────────────────────────────────────────────────────
txt_zd_higher_than       <- "higher than"
txt_zd_lower_than        <- "lower than"
txt_zd_same_as           <- "the same as"

# ── POPULATION CONTEXT ────────────────────────────────────────────────────────
txt_pop_growth_context   <- "Due to population growth of approximately {pop_grwth}% between {comp_yr} and {rev_yr}, DTP3 coverage in {rev_yr} ({ctry_cvg_rev_dtp3}%) was lower than in {comp_yr} ({ctry_cvg_comp_dtp3}%)."

# ── PLOT LABELS ───────────────────────────────────────────────────────────────
txt_plt_dtp1_title       <- "DTP1 coverage and zero-dose children\nover time, {ctry_name}, 2000–{rev_yr}"
txt_plt_dtp3_title       <- "DTP3 coverage and un- or under-vaccinated children\nover time, {ctry_name}, 2000–{rev_yr}"
txt_plt_mcv_title        <- "MCV coverage and MCV zero-dose children\nover time, {ctry_name}, 2000–{rev_yr}"
#txt_plt_hpv_title        <- "{hpv_vax_str}{hpv_unvac_str} over time, {ctry_name}, {first_hpv_year}–{hpv_rev_yr}"
txt_plt_hpv_title_reg        <- "{hpv_vax_str}{hpv_unvac_str} over time, {region_translated}, {first_hpv_year}–{hpv_rev_yr}"
txt_plt_reg_comp_title   <- "Coverage comparison: {ctry_name} vs. {region} peers, {rev_yr}"
txt_plt_add_vax_title    <- "Additional vaccine coverage (%), {ctry_name}, 2000–{rev_yr}"
txt_plt_ovw_heatmap_title <- "Vaccine coverage (%), {ctry_name}, 2000–{rev_yr}"
txt_plt_ovw_heatmap_title_reg <- "Vaccine coverage (%), {regn} Region, 2000–{rev_yr}"
txt_plt_ovw_line_title   <- "Vaccine coverage over time, {ctry_name}, 2000–{rev_yr}"
#txt_plt_hpv_both_unvac <- "HPV1 and HPVc coverage and unvaccinated females" 
#txt_plt_hpv_title      <- "{regn} ({first_hpv_year}–{hpv_rev_yr}):{hpv_vax_str}{hpv_unvac_str} over time"
#txt_plt_hpv_both_unvac <- "HPV1 and HPVc coverage and unvaccinated females"
#txt_plt_hpv_both_only <- "HPV1 and HPVc coverage"
#txt_plt_hpv1_unvac <- "HPV1 coverage and unvaccinated females"
#txt_plt_hpv1_only <- "HPV1 coverage"
# HPV title scenarios
txt_hpv_line_title_no_hpvc_no_unvac <- "HPV1 coverage over time, {regn}, {first_hpv_year}–{hpv_rev_yr}"
txt_hpv_line_title_no_hpvc_unvac    <- "HPV1 coverage and unvaccinated females\nover time, {regn}, {first_hpv_year}–{hpv_rev_yr}"
txt_hpv_line_title_hpvc_no_unvac    <- "HPV1 and HPVc coverage\nover time, {regn}, {first_hpv_year}–{hpv_rev_yr}"
txt_hpv_line_title_hpvc_unvac       <- "HPV1 and HPVc coverage and unvaccinated females\nover time, {regn}, {first_hpv_year}–{hpv_rev_yr}"

txt_map_other_countries <- "Other countries"
txt_plt_ovw_heatmap_title_vax <- "{toupper(v)} coverage, by country, {region_translated} Region, 2000-{rev_yr}"
txt_plt_ovw_heatmap_caption_vax <- "Note: Countries ordered based on descending {toupper(v)} coverage in {rev_yr}."
txt_map_coverage_title <- "{toupper(v)} coverage (%), {region_translated}, {rev_yr}"
txt_map_disclaimer <- "Source: WHO/UNICEF estimates of national immunization coverage, {rev_yr} revision.\nNote: This map is stylized and based on an approximate scale.\nThis map does not reflect a position by UNICEF or WHO on the\nlegal status of any country or territory or the delimitation of any frontiers."
txt_wuenic_source <- "Source: WHO/UNICEF estimates of national immunization coverage, {rev_yr} revision."
txt_were_n_countries_short <- "There were {n_gt90}"
txt_dtp1_none_achieved <- "None of the {nctry} countries in {regn} achieved DTP1 coverage of 90% or higher in {rev_yr}."
txt_was_1_country <- "There was one country in {regn} that achieved DTP1 coverage of 90% or higher in {rev_yr}{gt90_txt}."
txt_dtp1_share_achieved <- "{n_gt90_txt} ({pct}%) out of {nctry} countries in the region that achieved DTP1 coverage of 90% or higher in {rev_yr}{gt90_txt}."
txt_mcv_persistent_low_single <- "One country ({list}) had MCV1 coverage below {thrshold}% for all of the last {nyrs} years."
txt_mcv_persistent_low_multi <- "{count} countries ({list}) had MCV1 coverage below {thrshold}% for all of the last {nyrs} years."
txt_mcv_persistent_low_none <- "Over the last {nyrs} years, no countries have had MCV1 coverage below {thrshold}%."
#txt_hpv_intro_partial_summary <- "{n_ctry_intro} out of {n_ctry_total} countries ({pct_ctry_intro}%) in {regn} had introduced HPV vaccination by {rev_yr}.\n\n    -   WUENIC HPV coverage estimates are available for {all_word}{n_ctry_wuenic_hpv} of these countries in {hpv_rev_yr}.\n\n"
#txt_hpv_intro_all_summary <- "All {n_ctry_total} countries in {regn} had introduced HPV vaccination by {rev_yr}.\n\n    -   WUENIC HPV coverage estimates are available for {n_ctry_wuenic_hpv} ({pct_ctry_wuenic_hpv}%) of these countries in {hpv_rev_yr}.\n\n"
#txt_hpv_all_word <- "all "
txt_hpv_intro_partial <- "In {regn}, {n_ctry_intro} out of {n_ctry_total} countries ({pct_ctry_intro}%) had introduced HPV vaccination by {rev_yr}."
txt_hpv_intro_all     <- "All {n_ctry_total} countries in {regn} had introduced HPV vaccination by {rev_yr}."
txt_hpv_est_partial   <- "WUENIC HPV coverage estimates are available for {n_ctry_wuenic_hpv} of these countries in {hpv_rev_yr}."
txt_hpv_est_all_intro <- "WUENIC HPV coverage estimates are available for all {n_ctry_wuenic_hpv} of these countries in {hpv_rev_yr}."
txt_hpv_est_all       <- "WUENIC HPV coverage estimates are available for {n_ctry_wuenic_hpv} ({pct_ctry_wuenic_hpv}%) of these countries in {hpv_rev_yr}."

txt_hpv_not_introduced_single <- "The country that had not introduced HPV vaccination is {list}."
txt_hpv_not_introduced_multi <- "The {count} countries that had not introduced HPV vaccination are {list}."
txt_ovw_vax_gt90_summary <- "While noting variations across countries and vaccines, {n_achieved_txt} of the {n_vax} childhood vaccines achieved an average coverage of 90% or higher within the {region_translated} region in {rev_yr}."
txt_ovw_coverage_change_summary <- "Coverage of the first dose of diphtheria-tetanus-pertussis-containing vaccine (DTP1) {dtp1_diff}, and coverage of the third dose of DTP-containing vaccine (DTP3) {dtp3_diff}. Coverage of the first dose of the measles-containing vaccine (MCV1) {mcv1_diff}."
txt_word_none <- "none"
txt_word_out <- "out"
txt_ovw_zero_dose_summary <- "In {rev_yr}, the number of zero-dose children ({estimate_lbl}) was approximately {pcnt_diff}% {diff_txt} the annual number proposed to achieve the Immunization Agenda 2030 target of reducing the number of zero-dose children by half by 2030 in {region_translated} region ({ia2030_lbl}), based on a linear trajectory of decline."
txt_ovw_ctry_level_achieved = "A total of {n_achieved} out of {total_ctry} countries reached target coverage (90%) for all {n_vax} antigens, representing {pct_achieved}% of the region."
txt_ovw_ctry_level_failed_one = "There was one country that did not meet the target coverage across all antigens: {failed_list}."
txt_ovw_ctry_level_failed_multiple = "There were {nctry_lt90} countries that did not meet the target coverage across all antigens: {failed_list}."
txt_ovw_ctry_level_failed_none = "All countries successfully met the target coverage across all antigens."
txt_map_dtp1_title <- "DTP1 coverage (%), by country, {region_translated_plots} Region, {rev_yr}"
txt_map_dtp3_title <- "DTP3 coverage (%), by country, {region_translated_plots} Region, {rev_yr}"
txt_map_mcv1_title <- "MCV1 coverage (%), by country, {region_translated_plots} Region, {rev_yr}"
txt_dtp1_heatmap_title <- "DTP1 coverage (%), by country,\n{region_translated_plots} Region, 2000–{rev_yr}"
txt_dtp3_heatmap_title <- "DTP3 coverage (%), by country,\n{region_translated_plots} Region, 2000–{rev_yr}"
txt_mcv1_heatmap_title <- "MCV1 coverage (%), by country,\n{region_translated_plots} Region, 2000–{rev_yr}"

#txt_plt_ia2030_caption   <- "Dotted line shows the IA2030 target of 90% coverage"
#txt_plt_dtp1_legend_cvg  <- "DTP1 coverage"
#txt_plt_dtp1_legend_zd   <- "Zero-dose children"
#txt_plt_dtp3_legend_cvg  <- "DTP3 coverage"
#txt_plt_dtp3_legend_unvac <- "Un- or Under-Vaccinated Children"
#txt_plt_mcv1_legend_cvg  <- "MCV1 coverage"
#txt_plt_mcv2_legend_cvg  <- "MCV2 coverage"
#txt_plt_mcv_legend_zd    <- "MCV zero-dose children"
txt_plt_hpv1_legend_cvg  <- "HPV1 coverage"
txt_plt_hpvc_legend_cvg  <- "HPVc coverage"
txt_plt_hpv_legend_unvac <- "Unvaccinated females"
txt_plt_cvg_pct          <- "Coverage (%)"
txt_plt_year             <- "Year"
txt_plt_zd_children      <- "Zero-dose children"
txt_plt_unvac_females    <- "Unvaccinated females (count)"
txt_plt_unvac_undervac   <- "Un- or under-vaccinated children"
txt_plt_reg_comp_peers   <- "Peers"
txt_plt_cvg_pct_legend <- "Vaccine coverage (%)  "

### HPV SECTION
txt_hpv_hpv1_increased  <- "Programme coverage of the first dose of HPV vaccine (HPV1) among girls stood at {hpv1_rev_pct}% in {hpv_rev_yr}, which was higher than the coverage of {hpv1_comp_pct}% in {hpv_comp_yr}."
txt_hpv_hpv1_decreased  <- "Programme coverage of the first dose of HPV vaccine (HPV1) among girls stood at {hpv1_rev_pct}% in {hpv_rev_yr}, which was lower than the coverage of {hpv1_comp_pct}% in {hpv_comp_yr}."
txt_hpv_hpv1_constant   <- "Programme coverage of the first dose of HPV vaccine (HPV1) among girls stood at {hpv1_rev_pct}% in {hpv_rev_yr}, which was the same as the coverage in {hpv_comp_yr}."
txt_hpv_hpvc_increased  <- "Coverage of the last dose (HPVc) stood at {hpvc_rev_pct}% in {hpv_rev_yr}, which was higher than the coverage of {hpvc_comp_pct}% in {hpv_comp_yr}."
txt_hpv_hpvc_decreased  <- "Coverage of the last dose (HPVc) stood at {hpvc_rev_pct}% in {hpv_rev_yr}, which was lower than the coverage of {hpvc_comp_pct}% in {hpv_comp_yr}."
txt_hpv_hpvc_constant   <- "Coverage of the last dose (HPVc) stood at {hpvc_rev_pct}% in {hpv_rev_yr}, which was the same as the coverage in {hpv_comp_yr}."

# IA2030 progress — full sentences
# txt_hpv_gt90_below80_up   <- "HPVc coverage remains well below the IA2030 target of 90%, though it is trending upward."
# txt_hpv_gt90_below80      <- "HPVc coverage remains well below the IA2030 target of 90%."
# txt_hpv_gt90_near_up      <- "HPVc coverage is approaching the IA2030 target of 90% and is trending upward."
# txt_hpv_gt90_near         <- "HPVc coverage is approaching but has not yet reached the IA2030 target of 90%."
# txt_hpv_gt90_achieved     <- "HPVc coverage has reached the IA2030 target of 90%."
# txt_hpv_gt90_exceeded     <- "HPVc coverage has exceeded the IA2030 target of 90%."

# Unvaccinated girls
txt_hpv_unvac_girls <- "In {hpv_rev_yr}, there were {hpv1_lbl} girls who did not receive any HPV vaccination."

# Countries with introduced HPV but no WUENIC data
txt_hpv_intro_no_data_single  <- "The country that has introduced HPV vaccination but does not yet have WUENIC coverage data available for {hpv_rev_yr} is {list}."
txt_hpv_intro_no_data_multi   <- "The {count} countries that have introduced HPV vaccination but do not yet have WUENIC coverage data available for {hpv_rev_yr} are {list}."

# ── SECTION HEADERS
txt_sec_overview         <- "Overview"
txt_sec_banner_title <- "WUENIC Talking Points"
txt_sec_banner_revision <- "Revision Year:"
#txt_sec_dtp1             <- "DTP1: Reaching zero-dose children"
#txt_sec_dtp3             <- "DTP3: A marker of routine immunization service delivery to children"
#txt_sec_mcv              <- "MCV: Canary in the coal mine"
#txt_sec_hpv              <- "HPV"
#txt_sec_appendix         <- "Appendix"
txt_map_title_full <- "<span style='color:#1CABE2;'>{ctry_name}</span> in the '{region_for_country}' region"
#txt_appendix_wuenic_header <- "WHO/UNICEF Estimates of National Immunization Coverage (WUENIC)"
#txt_appendix_methods_header <- "Methods"
txt_appendix_wuenic_revision <- str_glue("These talking points present the latest WUENIC estimates (published 15 July {rev_yr+1}).")
#txt_appendix_definitions_header <- "Definitions of immunization terms:"
#txt_appendix_resources_header <- "Additional resources:"
#txt_nicaragua_note <- "- Note: Data from Nicaragua is not shown individually, but it is included in aggregate measures in this report."
txt_region_banner_title <- "WUENIC Talking Points: {region_translated} Region ({regn})"
txt_region_banner_title_no_parentheses <- "WUENIC Talking Points: {region_translated} Region"
txt_region_title <- "Countries in {region_translated_plots} Region"

# --- THE BIG CATCH-UP
txt_sec_bcu_header <- "Priority countries supported to recover from the COVID-19 pandemic"
txt_bcu_intro_summary <- "Of the 35 countries that were globally supported for the Big Catch-up, {n_bcu_ctry} are in {regn}."
txt_bcu_recovered_single <- "{country} fully recovered to or exceeded its 2019 DTP3 levels."
txt_bcu_recovered_multi <- "{countries_list} fully recovered to or exceeded their 2019 DTP3 levels."
txt_bcu_recovering_single <- "{country} is on the path to recovery to 2019 DTP3 levels."
txt_bcu_recovering_multi <- "{count} countries ({countries_list}) are on the path to recovery to 2019 DTP3 levels."
txt_bcu_not_recovered_single <- "{country} has not yet recovered, with stagnation or decline from 2019 DTP3 levels."
txt_bcu_not_recovered_multi <- "{count} countries ({countries_list}) have not yet recovered, with stagnation or decline from 2019 DTP3 levels."
txt_bcu_no_decline_single <- "{country} did not experience any decline in DTP3 levels between 2019 and {rev_yr}."
txt_bcu_no_decline_multi <- "{count} countries ({countries_list}) did not experience a decline in DTP3 levels compared to 2019."
txt_bcu_lbl_recovered <- "Recovered or strengthened"
txt_bcu_lbl_recovering <- "Partially recovered"
txt_bcu_lbl_not_recovered <- "Lower than 2019 levels"
txt_bcu_plot_status_name <- "Recovery status"
txt_plt_bcu_title <- "DTP3 coverage recovery from COVID-19 pandemic, {regn}"
txt_plt_bcu_subtitle <- "Open circle = 2019 (pre-pandemic baseline); filled circle = {rev_yr}"
txt_plt_bcu_xaxis <- "DTP3 coverage (%)"
txt_plt_bcu_caption <- "Dotted line shows the IA2030 target of 90% coverage.\nCountries shown are Big Catch-Up priority countries in {regn}."
txt_bcu_methodology_title <- "Recovery Methodology"
txt_bcu_methodology_intro <- "This analysis tracks DTP3 coverage trends from 2019 to {rev_yr} to assess post-pandemic recovery. Countries are categorized based on their progress toward 2019 baseline levels:"
txt_bcu_methodology_recovered_lbl <- "Recovered or strengthened"
txt_bcu_methodology_recovered_desc <- "{rev_yr} coverage is equal to or higher than 2019 levels."
txt_bcu_methodology_recovering_lbl <- "Partially recovered"
txt_bcu_methodology_recovering_desc <- "Coverage in {rev_yr} is still below 2019 levels but has improved by at least 3 percentage points from its lowest point in 2020 or 2021."
txt_bcu_methodology_not_recovered_lbl <- "Lower than 2019 levels"
txt_bcu_methodology_not_recovered_desc <- "Coverage in {rev_yr} remains below 2019 levels and has shown less than 3 percentage points of improvement from its lowest point in 2020 or 2021."
txt_word_and <- " and "

# ── DEFINITIONS
# txt_def_bcg   <- "Bacillus Calmette-Guerin (BCG): vaccine against tuberculosis"
# txt_def_hepbb <- "Hepatitis B birth dose, given within 24 hours after birth (HepBB)"
# txt_def_dtp   <- "Diphtheria, tetanus, and pertussis vaccine, first dose (DTP1) and third dose (DTP3)"
# txt_def_hepb3 <- "Hepatitis B vaccine, third dose (HepB3)"
# txt_def_hib3  <- "Haemophilus influenzae type B vaccine, third dose (Hib3)"
# txt_def_ipv   <- "Inactivated polio vaccine, first dose (IPV1) and last dose (IPVC)"
# txt_def_mcv   <- "Measles containing vaccine, first dose (MCV1) and second dose (MCV2)"
# txt_def_rotac <- "Rotavirus vaccine, last dose (RotaC)"
# txt_def_pcv3  <- "Pneumococcal vaccine, last dose (PCVC)"
# txt_def_yfv   <- "Yellow Fever vaccine (YFV)"
# txt_def_menga <- "Meningococcal A vaccine (MengA)"
# txt_def_hpv   <- "Human Papillomavirus vaccine, first dose (HPV1) and last dose (HPVc)"

# ── COLLECT ALL txt_ VARIABLES ────────────────────────────────────────────────
text_vars_tp_en <- mget(ls(pattern = "^txt_"))


# txt_appendix_wuenic_body <- "Each year, WHO and UNICEF review national immunization data from Member States, including
# administrative and official coverage, survey estimates and contextual information, and use rules-
# based data triangulation approach to assess coverage. Estimates are produced independently,
# without borrowing data from other countries, and are not based on ad hoc adjustments. In some
# cases, they rely on a single source, typically nationally reported coverage. When data for a specific
# country-vaccine-year are unavailable, values from adjacent years are interpolated or extrapolated,
# and conflicting sources are assessed to determine the most reliable estimate, considering potential
# biases and expert opinion."
# txt_vacc_increased <- "increased"
# txt_vacc_decreased <- "decreased"
# txt_vacc_same <- "remained the same"
# txt_vacc_constant <- "remained constant"
# txt_moreless_fewer <- "fewer"
# txt_moreless_more <- "more"
# txt_moreless_same <- "same"
# txt_surv_inf_vax_1       <- "Vaccinating approximately the same number of children as currently reached will be sufficient due to the anticipated decrease or relatively small increases in the birth cohort."
# txt_surv_inf_vax_2       <- "Maintaining current coverage requires vaccinating an increasing number of children, which will require substantial increases in immunization programme and health system capacity."
# txt_surv_inf_vax_3       <- "For vaccine coverage to increase, the number of children vaccinated needs to either increase or decline at a slower rate than the decline in surviving infant target population."