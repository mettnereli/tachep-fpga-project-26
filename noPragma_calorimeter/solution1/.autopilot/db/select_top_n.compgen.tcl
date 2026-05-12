# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name clusters_et \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_et \
    op interface \
    ports { clusters_et_address0 { O 11 vector } clusters_et_ce0 { O 1 bit } clusters_et_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_et'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name clusters_isolation_et \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_isolation_et \
    op interface \
    ports { clusters_isolation_et_address0 { O 11 vector } clusters_isolation_et_ce0 { O 1 bit } clusters_isolation_et_q0 { I 18 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_isolation_et'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name clusters_eta \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_eta \
    op interface \
    ports { clusters_eta_address0 { O 11 vector } clusters_eta_ce0 { O 1 bit } clusters_eta_q0 { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_eta'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name clusters_phi \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_phi \
    op interface \
    ports { clusters_phi_address0 { O 11 vector } clusters_phi_ce0 { O 1 bit } clusters_phi_q0 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_phi'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name clusters_window_size \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_window_size \
    op interface \
    ports { clusters_window_size_address0 { O 11 vector } clusters_window_size_ce0 { O 1 bit } clusters_window_size_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_window_size'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name clusters_iso_outer_size \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_iso_outer_size \
    op interface \
    ports { clusters_iso_outer_size_address0 { O 11 vector } clusters_iso_outer_size_ce0 { O 1 bit } clusters_iso_outer_size_q0 { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_iso_outer_size'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name clusters_valid \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename clusters_valid \
    op interface \
    ports { clusters_valid_address0 { O 11 vector } clusters_valid_ce0 { O 1 bit } clusters_valid_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'clusters_valid'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name top_clusters_et \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_et \
    op interface \
    ports { top_clusters_et_address0 { O 3 vector } top_clusters_et_ce0 { O 1 bit } top_clusters_et_we0 { O 1 bit } top_clusters_et_d0 { O 16 vector } top_clusters_et_q0 { I 16 vector } top_clusters_et_address1 { O 3 vector } top_clusters_et_ce1 { O 1 bit } top_clusters_et_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_et'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name top_clusters_isolation_et \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_isolation_et \
    op interface \
    ports { top_clusters_isolation_et_address0 { O 3 vector } top_clusters_isolation_et_ce0 { O 1 bit } top_clusters_isolation_et_we0 { O 1 bit } top_clusters_isolation_et_d0 { O 18 vector } top_clusters_isolation_et_address1 { O 3 vector } top_clusters_isolation_et_ce1 { O 1 bit } top_clusters_isolation_et_q1 { I 18 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_isolation_et'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name top_clusters_eta \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_eta \
    op interface \
    ports { top_clusters_eta_address0 { O 3 vector } top_clusters_eta_ce0 { O 1 bit } top_clusters_eta_we0 { O 1 bit } top_clusters_eta_d0 { O 5 vector } top_clusters_eta_q0 { I 5 vector } top_clusters_eta_address1 { O 3 vector } top_clusters_eta_ce1 { O 1 bit } top_clusters_eta_q1 { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_eta'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name top_clusters_phi \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_phi \
    op interface \
    ports { top_clusters_phi_address0 { O 3 vector } top_clusters_phi_ce0 { O 1 bit } top_clusters_phi_we0 { O 1 bit } top_clusters_phi_d0 { O 6 vector } top_clusters_phi_q0 { I 6 vector } top_clusters_phi_address1 { O 3 vector } top_clusters_phi_ce1 { O 1 bit } top_clusters_phi_q1 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_phi'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name top_clusters_window_size \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_window_size \
    op interface \
    ports { top_clusters_window_size_address0 { O 3 vector } top_clusters_window_size_ce0 { O 1 bit } top_clusters_window_size_we0 { O 1 bit } top_clusters_window_size_d0 { O 2 vector } top_clusters_window_size_address1 { O 3 vector } top_clusters_window_size_ce1 { O 1 bit } top_clusters_window_size_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_window_size'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name top_clusters_iso_outer_size \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_iso_outer_size \
    op interface \
    ports { top_clusters_iso_outer_size_address0 { O 3 vector } top_clusters_iso_outer_size_ce0 { O 1 bit } top_clusters_iso_outer_size_we0 { O 1 bit } top_clusters_iso_outer_size_d0 { O 3 vector } top_clusters_iso_outer_size_address1 { O 3 vector } top_clusters_iso_outer_size_ce1 { O 1 bit } top_clusters_iso_outer_size_q1 { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_iso_outer_size'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name top_clusters_valid \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename top_clusters_valid \
    op interface \
    ports { top_clusters_valid_address0 { O 3 vector } top_clusters_valid_ce0 { O 1 bit } top_clusters_valid_we0 { O 1 bit } top_clusters_valid_d0 { O 1 vector } top_clusters_valid_q0 { I 1 vector } top_clusters_valid_address1 { O 3 vector } top_clusters_valid_ce1 { O 1 bit } top_clusters_valid_q1 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'top_clusters_valid'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name num_clusters \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_num_clusters \
    op interface \
    ports { num_clusters { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


