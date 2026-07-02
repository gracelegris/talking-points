
# ======================================================================================================================
### Talking Points: Dynamic text strings for translation
### Uses same pattern as DQ PowerPoint txt_ variables
# ======================================================================================================================

# ── OVERVIEW ──────────────────────────────────────────────────────────────────
txt_ovw_vax_gt90         <- "A total of {n_vax_total} childhood vaccines are tracked for {the_ctry_name}; of these, {n_vax_gt90} reached the 90% coverage target or higher in {rev_yr}."
txt_ovw_vax_none_gt90    <- "None of the {n_vax_total} childhood vaccines tracked for {the_ctry_name} achieved coverage of 90% or higher in {rev_yr}."
txt_ovw_dtp1_cvg         <- "Coverage of DTP1 {cvg_chng_dtp1}, DTP3 {cvg_chng_dtp3}, and MCV1 {cvg_chng_mcv1} in {rev_yr}."
txt_ovw_zd_ia2030        <- "In {rev_yr}, the number of zero-dose children for DTP in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff}% {zd_diff_txt} the annual goal to achieve the IA2030 target of halving zero-dose children for DTP by 2030 ({ia2030_rev_yr_lbl})."

# ── DTP1 ──────────────────────────────────────────────────────────────────────
txt_dtp1_cvg_change      <- "In {rev_yr}, DTP1 coverage in {the_ctry_name} was {ctry_cvg_rev}%, compared to {ctry_cvg_comp}% in {comp_yr}."
txt_dtp1_zd_ia2030       <- "In {rev_yr}, the number of zero-dose children in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff}% {zd_diff_txt} the annual IA2030 target ({ia2030_rev_yr_lbl})."
#txt_dtp1_surv_infants    <- "With {diff_abs_lbl} {moreless} surviving infants in {rev_yr} compared to {comp_yr}, {to_vax}."
txt_dtp1_reg_rank        <- "Among {region_translated} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in DTP1 coverage in {rev_yr} ({ctry_cvg_rev}% vs. regional peers)."
txt_dtp1_dropout         <- "DTP1-to-DTP3 dropout in {rev_yr} was {dropout_pct}%, {dropout_diff_txt}. {dropout_txt}"
txt_dtp1_negative_dropout <- "DTP3 coverage surpassed DTP1 coverage by {abs_dropout_pct} percentage points in {rev_yr}, which was {dropout_diff_txt}."

txt_dtp1_surviving_infants_more  <- "There were {diff_abs_lbl} more surviving infants in the region in {rev_yr} compared to {comp_yr}. {to_vax}"
txt_dtp1_surviving_infants_fewer <- "There were {diff_abs_lbl} fewer surviving infants in the region in {rev_yr} compared to {comp_yr}. {to_vax}"
txt_dtp1_surviving_infants_same  <- "There was no change in the number of surviving infants in the region in {rev_yr} compared to {comp_yr}. {to_vax}"

# ── DTP3 ──────────────────────────────────────────────────────────────────────
#txt_dtp3_vaccinated      <- "The number of children vaccinated with DTP3 {vacc_pchng_txt} from {vacc_comp_yr_lbl} in {comp_yr} to {vacc_rev_yr_lbl} in {rev_yr}. {pop_chng_txt}"
txt_dtp3_vaccinated_increased <- "The number of children vaccinated with DTP3 increased from {vacc_comp_yr_lbl} in {comp_yr} to {vacc_rev_yr_lbl} in {rev_yr}. In {rev_yr}, DTP3 coverage in {the_ctry_name} was {ctry_cvg_rev_dtp3}%, compared to {ctry_cvg_comp_dtp3}% in {comp_yr}. {pop_chng_txt}"
txt_dtp3_vaccinated_decreased <- "The number of children vaccinated with DTP3 decreased from {vacc_comp_yr_lbl} in {comp_yr} to {vacc_rev_yr_lbl} in {rev_yr}. In {rev_yr}, DTP3 coverage in {the_ctry_name} was {ctry_cvg_rev_dtp3}%, compared to {ctry_cvg_comp_dtp3}% in {comp_yr}. {pop_chng_txt}"
txt_dtp3_vaccinated_unchanged <- "The number of children vaccinated with DTP3 remained unchanged from {vacc_comp_yr_lbl} in {comp_yr} to {vacc_rev_yr_lbl} in {rev_yr}. In {rev_yr}, DTP3 coverage in {the_ctry_name} was {ctry_cvg_rev_dtp3}%, compared to {ctry_cvg_comp_dtp3}% in {comp_yr}. {pop_chng_txt}"
txt_dtp3_dropout         <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive DTP3. This {dropout_pct}% dropout rate was {dropout_diff_txt}. {dropout_txt}"
txt_dtp3_negative_dropout <- "In {rev_yr}, DTP3 coverage surpassed DTP1 coverage by {abs_dropout_pct} percentage points. The DTP series dropout rate was {dropout_diff_txt}."
txt_dtp3_unvac           <- "In {rev_yr}, DTP3 coverage in {the_ctry_name} was {ctry_cvg_rev_dtp3}%, leaving {unvac_dtp3_lbl} children un- or under-vaccinated."
txt_dtp3_reg_rank        <- "Among {region_translated} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in DTP3 coverage in {rev_yr}."

# ── MCV ───────────────────────────────────────────────────────────────────────
txt_mcv1_cvg_change      <- "MCV1 coverage in {rev_yr} ({mcv1_cvg_rev}%) {cvg_chng_txt}."
txt_mcv2_cvg_change      <- "MCV2 coverage {cvg_chng_txt}. This leaves {mcv1_unvac_lbl} children without any protection against measles and another {mcv_diff_lbl} with only partial protection."
txt_mcv_dropout          <- "In {rev_yr}, {dropout_pct}% of children who received DTP1 did not receive MCV1. DTP-MCV dropout was {dropout_diff_txt}. {dropout_txt}"
txt_mcv_negative_dropout <- "In {rev_yr}, MCV1 coverage surpassed DTP1 coverage by {abs_dropout_pct} percentage points. This {dropout_pct}% DTP-MCV dropout rate was {dropout_diff_txt}."
txt_mcv_persistent_low   <- "{persistent_low_txt}."
txt_mcv_persistent_low_yes <- "{capital_the_name} has had MCV1 coverage below {thrshold}% for all of the last {nyrs} years."
txt_mcv_persistent_low_no <- "{capital_the_name} has not had MCV1 coverage below {thrshold}% for any of the last {nyrs} years."
txt_mcv_reg_rank         <- "Among {region_translated} region peers, {the_ctry_name} ranked {rank} out of {n_peers} countries in MCV1 coverage in {rev_yr}."

# ── HPV ───────────────────────────────────────────────────────────────────────
txt_hpv_not_introduced   <- "{ctry_name} had not introduced HPV vaccination as of {rev_yr}."
txt_hpv_intro_no_data    <- "{ctry_name} had introduced HPV vaccination as of {rev_yr} but has no {rev_yr} WUENIC HPV data."
#txt_hpv_cvg_both         <- "Programme coverage of HPV1 among females {hpv1_diff_txt}, and coverage of the last dose (HPVc) {hpvc_diff_txt}."
txt_hpv_cvg_hpv1_only   <- "Programme coverage of HPV1 among females {hpv1_diff_txt}."
txt_hpv_gt90             <- "{gt90_txt}."
txt_hpv_no_hpvc_one_yr   <- "HPVc (last dose) data is available for {ctry_name} in WUENIC but only for one year, so a year-on-year comparison is not possible and HPVc is not included in this report."
txt_hpv_no_hpvc_data     <- "HPVc (last dose) coverage data is not available for {ctry_name} in WUENIC data."
txt_hpv_unvac            <- "In {hpv_rev_yr}, {hpv1_unvac_lbl} females in {the_ctry_name} did not receive any HPV vaccination."
txt_hpv_no_unvac_data    <- "The number of unvaccinated females for HPV in {the_ctry_name} in {hpv_rev_yr} is not available in WUENIC data."
txt_hpv_reg_rank         <- "Among {region_translated} region peers, {the_ctry_name} ranked {rank} out of {n_peers_hpv} countries in {primary_hpv_label} coverage in {hpv_rev_yr}."

txt_hpv_both_constant <- "Programme coverage of HPV1 among females remained constant at {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, and coverage of the last dose (HPVc) also remained constant at {hpvc_rev_cvg}%."
txt_hpv_hpv1_const_hpvc_inc <- "Programme coverage of HPV1 among females remained constant at {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, while coverage of the last dose (HPVc) increased from {hpvc_comp_cvg}% to {hpvc_rev_cvg}%."
txt_hpv_hpv1_const_hpvc_dec <- "Programme coverage of HPV1 among females remained constant at {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, while coverage of the last dose (HPVc) decreased from {hpvc_comp_cvg}% to {hpvc_rev_cvg}%."
txt_hpv_hpv1_inc_hpvc_const <- "Programme coverage of HPV1 among females increased from {hpv1_comp_cvg}% to {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, while coverage of the last dose (HPVc) remained constant at {hpvc_rev_cvg}%."
txt_hpv_hpv1_inc_hpvc_inc   <- "Programme coverage of HPV1 among females increased from {hpv1_comp_cvg}% to {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, and coverage of the last dose (HPVc) also increased from {hpvc_comp_cvg}% to {hpvc_rev_cvg}%."
txt_hpv_hpv1_inc_hpvc_dec   <- "Programme coverage of HPV1 among females increased from {hpv1_comp_cvg}% to {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, while coverage of the last dose (HPVc) decreased from {hpvc_comp_cvg}% to {hpvc_rev_cvg}%."
txt_hpv_hpv1_dec_hpvc_const <- "Programme coverage of HPV1 among females decreased from {hpv1_comp_cvg}% to {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, while coverage of the last dose (HPVc) remained constant at {hpvc_rev_cvg}%."
txt_hpv_hpv1_dec_hpvc_inc   <- "Programme coverage of HPV1 among females decreased from {hpv1_comp_cvg}% to {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, while coverage of the last dose (HPVc) increased from {hpvc_comp_cvg}% to {hpvc_rev_cvg}%."
txt_hpv_hpv1_dec_hpvc_dec   <- "Programme coverage of HPV1 among females decreased from {hpv1_comp_cvg}% to {hpv1_rev_cvg}% between {comp_yr} and {rev_yr}, and coverage of the last dose (HPVc) also decreased from {hpvc_comp_cvg}% to {hpvc_rev_cvg}%."

# ── REGIONAL COMPARISON ───────────────────────────────────────────────────────
txt_reg_comp_intro_has_hpvc       <- "The chart below shows how {the_ctry_name} compares to other countries in the {region_translated} region on DTP1, DTP3, MCV1, and HPVC coverage in {rev_yr}. The dashed line represents the regional average for each vaccine."
txt_reg_comp_intro_no_hpvc       <- "The chart below shows how {the_ctry_name} compares to other countries in the {region_translated} region on DTP1, DTP3, MCV1 coverage in {rev_yr}. The dashed line represents the regional average for each vaccine."
txt_reg_comp_no_hpvc_yr  <- "HPVc (last dose) data is available for {ctry_name} in WUENIC but not for {rev_yr}, so HPVc coverage is not included in the regional comparison."
txt_reg_comp_no_hpvc     <- "HPVc (last dose) data is not available for {ctry_name} in WUENIC, so HPVc coverage is not included in the regional comparison."

# ── ADDITIONAL VACCINES ───────────────────────────────────────────────────────
txt_add_vax_trend_decreased <- "Coverage of {vaccine_label} decreased from {comp_cvg}% in {comp_yr} to {rev_cvg}% in {rev_yr}."
txt_add_vax_trend_increased <- "Coverage of {vaccine_label} increased from {comp_cvg}% in {comp_yr} to {rev_cvg}% in {rev_yr}."
txt_add_vax_trend_constant  <- "Coverage of {vaccine_label} remained constant at {rev_cvg}% between {comp_yr} and {rev_yr}."
txt_add_vax_target_met    <- "The 90% target was successfully achieved."
txt_add_vax_target_missed  <- "This did not meet the 90% target."

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

# ── ZERO-DOSE DIRECTION ───────────────────────────────────────────────────────
# txt_zd_higher_than       <- "higher than"
# txt_zd_lower_than        <- "lower than"
# txt_zd_same_as           <- "the same as"
txt_ovw_zd_ia2030_higher <- "In {rev_yr}, the number of zero-dose children for DTP in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff}% higher than the annual goal to achieve the IA2030 target of halving zero-dose children for DTP by 2030 ({ia2030_rev_yr_lbl})."
txt_ovw_zd_ia2030_lower  <- "In {rev_yr}, the number of zero-dose children for DTP in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately {abs_zd_pcnt_diff}% lower than the annual goal to achieve the IA2030 target of halving zero-dose children for DTP by 2030 ({ia2030_rev_yr_lbl})."
txt_ovw_zd_ia2030_same   <- "In {rev_yr}, the number of zero-dose children for DTP in {the_ctry_name} ({zd_rev_yr_lbl}) was approximately the same as the annual goal to achieve the IA2030 target of halving zero-dose children for DTP by 2030 ({ia2030_rev_yr_lbl})."

# ── POPULATION CONTEXT ────────────────────────────────────────────────────────
txt_pop_growth_context   <- "Due to population growth of approximately {pop_grwth}% between {comp_yr} and {rev_yr}, DTP3 coverage in {rev_yr} ({ctry_cvg_rev_dtp3}%) was lower than in {comp_yr} ({ctry_cvg_comp_dtp3}%)."
txt_surv_inf_vax_1       <- "vaccinating approximately the same number of children as currently reached will be sufficient due to the anticipated decrease or relatively small increases in the birth cohort"
txt_surv_inf_vax_2       <- "maintaining current coverage requires vaccinating an increasing number of children, which will require substantial increases in immunization programme and health system capacity"
txt_surv_inf_vax_3       <- "for vaccine coverage to increase, the number of children vaccinated needs to either increase or decline at a slower rate than the decline in surviving infant target population"

# ── PLOT LABELS ───────────────────────────────────────────────────────────────
txt_plt_dtp1_title       <- "DTP1 coverage and zero-dose children\nover time, {ctry_name}, 2000–{rev_yr}"
txt_plt_dtp3_title       <- "DTP3 coverage and un- or under-vaccinated\nchildren over time, {ctry_name}, 2000–{rev_yr}"
#txt_plt_mcv_title        <- "{mcv_vax_str}{unvac_str} over time, {ctry_name}, 2000–{rev_yr}"
txt_plt_mcv_title        <- "MCV coverage and MCV zero-dose children\nover time, {ctry_name}, 2000–{rev_yr}"
txt_plt_hpv_title        <- "{hpv_vax_str}{hpv_unvac_str} over time, {ctry_name}, {first_hpv_year}–{hpv_rev_yr}"
txt_plt_reg_comp_title   <- "Coverage comparison: {ctry_name}\nvs. {region} peers, {rev_yr}"
txt_plt_add_vax_title    <- "Additional vaccine coverage (%), {ctry_name}, 2000–{rev_yr}"
txt_plt_ovw_heatmap_title <- "Vaccine coverage (%), {ctry_name}, 2000–{rev_yr}"
txt_plt_ovw_line_title   <- "Vaccine coverage over time, {ctry_name}, 2000–{rev_yr}"

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

# ── SECTION HEADERS
txt_sec_overview         <- "Overview"
txt_sec_dtp1             <- "DTP1: Reaching zero-dose children"
txt_sec_dtp3             <- "DTP3: A marker of routine immunization service delivery to children"
txt_sec_mcv              <- "MCV: Canary in the coal mine"
txt_sec_hpv              <- "HPV"
txt_sec_reg_comp         <- "Regional Comparison"
txt_sec_add_vax          <- "Additional Vaccines"
txt_sec_appendix         <- "Appendix"

# ── COLLECT ALL txt_ VARIABLES ────────────────────────────────────────────────
text_vars_tp_en <- mget(ls(pattern = "^txt_"))


# NEW COUNTRY-SPECIFIC ONES

txt_cvg_increased_short <- "increased from {.[[4]]}% in {rev_yr-1} to {.[[5]]}% in {rev_yr}"
txt_cvg_decreased_short <- "declined from {.[[4]]}% in {rev_yr-1} to {.[[5]]}% in {rev_yr}"
txt_cvg_same_short <- "was the same in {rev_yr} as it was in {rev_yr-1} ({.[[4]]}%)"

txt_plt_hpv_both_unvac <- "HPV1 and HPVc coverage and unvaccinated females"
txt_plt_hpv_both_unvac <- "HPV1 and HPVc coverage and unvaccinated females"
txt_plt_hpv_both_only <- "HPV1 and HPVc coverage"
txt_plt_hpv1_unvac <- "HPV1 coverage and unvaccinated females"
txt_plt_hpv1_only <- "HPV1 coverage"