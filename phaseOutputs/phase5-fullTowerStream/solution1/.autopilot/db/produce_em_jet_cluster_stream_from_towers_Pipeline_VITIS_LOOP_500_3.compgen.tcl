# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler calo_trigger_tower_stream_ref_sparsemux_15_3_12_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


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
    id 63 \
    name linebuf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf \
    op interface \
    ports { linebuf_address0 { O 6 vector } linebuf_ce0 { O 1 bit } linebuf_q0 { I 12 vector } linebuf_address1 { O 6 vector } linebuf_ce1 { O 1 bit } linebuf_q1 { I 12 vector } linebuf_address2 { O 6 vector } linebuf_ce2 { O 1 bit } linebuf_q2 { I 12 vector } linebuf_address3 { O 6 vector } linebuf_ce3 { O 1 bit } linebuf_q3 { I 12 vector } linebuf_address4 { O 6 vector } linebuf_ce4 { O 1 bit } linebuf_q4 { I 12 vector } linebuf_address5 { O 6 vector } linebuf_ce5 { O 1 bit } linebuf_q5 { I 12 vector } linebuf_address6 { O 6 vector } linebuf_ce6 { O 1 bit } linebuf_q6 { I 12 vector } linebuf_address7 { O 6 vector } linebuf_ce7 { O 1 bit } linebuf_q7 { I 12 vector } linebuf_address8 { O 6 vector } linebuf_ce8 { O 1 bit } linebuf_q8 { I 12 vector } linebuf_address9 { O 6 vector } linebuf_ce9 { O 1 bit } linebuf_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name linebuf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_1 \
    op interface \
    ports { linebuf_1_address0 { O 6 vector } linebuf_1_ce0 { O 1 bit } linebuf_1_q0 { I 12 vector } linebuf_1_address1 { O 6 vector } linebuf_1_ce1 { O 1 bit } linebuf_1_q1 { I 12 vector } linebuf_1_address2 { O 6 vector } linebuf_1_ce2 { O 1 bit } linebuf_1_q2 { I 12 vector } linebuf_1_address3 { O 6 vector } linebuf_1_ce3 { O 1 bit } linebuf_1_q3 { I 12 vector } linebuf_1_address4 { O 6 vector } linebuf_1_ce4 { O 1 bit } linebuf_1_q4 { I 12 vector } linebuf_1_address5 { O 6 vector } linebuf_1_ce5 { O 1 bit } linebuf_1_q5 { I 12 vector } linebuf_1_address6 { O 6 vector } linebuf_1_ce6 { O 1 bit } linebuf_1_q6 { I 12 vector } linebuf_1_address7 { O 6 vector } linebuf_1_ce7 { O 1 bit } linebuf_1_q7 { I 12 vector } linebuf_1_address8 { O 6 vector } linebuf_1_ce8 { O 1 bit } linebuf_1_q8 { I 12 vector } linebuf_1_address9 { O 6 vector } linebuf_1_ce9 { O 1 bit } linebuf_1_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name linebuf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_2 \
    op interface \
    ports { linebuf_2_address0 { O 6 vector } linebuf_2_ce0 { O 1 bit } linebuf_2_q0 { I 12 vector } linebuf_2_address1 { O 6 vector } linebuf_2_ce1 { O 1 bit } linebuf_2_q1 { I 12 vector } linebuf_2_address2 { O 6 vector } linebuf_2_ce2 { O 1 bit } linebuf_2_q2 { I 12 vector } linebuf_2_address3 { O 6 vector } linebuf_2_ce3 { O 1 bit } linebuf_2_q3 { I 12 vector } linebuf_2_address4 { O 6 vector } linebuf_2_ce4 { O 1 bit } linebuf_2_q4 { I 12 vector } linebuf_2_address5 { O 6 vector } linebuf_2_ce5 { O 1 bit } linebuf_2_q5 { I 12 vector } linebuf_2_address6 { O 6 vector } linebuf_2_ce6 { O 1 bit } linebuf_2_q6 { I 12 vector } linebuf_2_address7 { O 6 vector } linebuf_2_ce7 { O 1 bit } linebuf_2_q7 { I 12 vector } linebuf_2_address8 { O 6 vector } linebuf_2_ce8 { O 1 bit } linebuf_2_q8 { I 12 vector } linebuf_2_address9 { O 6 vector } linebuf_2_ce9 { O 1 bit } linebuf_2_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name linebuf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_3 \
    op interface \
    ports { linebuf_3_address0 { O 6 vector } linebuf_3_ce0 { O 1 bit } linebuf_3_q0 { I 12 vector } linebuf_3_address1 { O 6 vector } linebuf_3_ce1 { O 1 bit } linebuf_3_q1 { I 12 vector } linebuf_3_address2 { O 6 vector } linebuf_3_ce2 { O 1 bit } linebuf_3_q2 { I 12 vector } linebuf_3_address3 { O 6 vector } linebuf_3_ce3 { O 1 bit } linebuf_3_q3 { I 12 vector } linebuf_3_address4 { O 6 vector } linebuf_3_ce4 { O 1 bit } linebuf_3_q4 { I 12 vector } linebuf_3_address5 { O 6 vector } linebuf_3_ce5 { O 1 bit } linebuf_3_q5 { I 12 vector } linebuf_3_address6 { O 6 vector } linebuf_3_ce6 { O 1 bit } linebuf_3_q6 { I 12 vector } linebuf_3_address7 { O 6 vector } linebuf_3_ce7 { O 1 bit } linebuf_3_q7 { I 12 vector } linebuf_3_address8 { O 6 vector } linebuf_3_ce8 { O 1 bit } linebuf_3_q8 { I 12 vector } linebuf_3_address9 { O 6 vector } linebuf_3_ce9 { O 1 bit } linebuf_3_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name linebuf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_4 \
    op interface \
    ports { linebuf_4_address0 { O 6 vector } linebuf_4_ce0 { O 1 bit } linebuf_4_q0 { I 12 vector } linebuf_4_address1 { O 6 vector } linebuf_4_ce1 { O 1 bit } linebuf_4_q1 { I 12 vector } linebuf_4_address2 { O 6 vector } linebuf_4_ce2 { O 1 bit } linebuf_4_q2 { I 12 vector } linebuf_4_address3 { O 6 vector } linebuf_4_ce3 { O 1 bit } linebuf_4_q3 { I 12 vector } linebuf_4_address4 { O 6 vector } linebuf_4_ce4 { O 1 bit } linebuf_4_q4 { I 12 vector } linebuf_4_address5 { O 6 vector } linebuf_4_ce5 { O 1 bit } linebuf_4_q5 { I 12 vector } linebuf_4_address6 { O 6 vector } linebuf_4_ce6 { O 1 bit } linebuf_4_q6 { I 12 vector } linebuf_4_address7 { O 6 vector } linebuf_4_ce7 { O 1 bit } linebuf_4_q7 { I 12 vector } linebuf_4_address8 { O 6 vector } linebuf_4_ce8 { O 1 bit } linebuf_4_q8 { I 12 vector } linebuf_4_address9 { O 6 vector } linebuf_4_ce9 { O 1 bit } linebuf_4_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name linebuf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_5 \
    op interface \
    ports { linebuf_5_address0 { O 6 vector } linebuf_5_ce0 { O 1 bit } linebuf_5_q0 { I 12 vector } linebuf_5_address1 { O 6 vector } linebuf_5_ce1 { O 1 bit } linebuf_5_q1 { I 12 vector } linebuf_5_address2 { O 6 vector } linebuf_5_ce2 { O 1 bit } linebuf_5_q2 { I 12 vector } linebuf_5_address3 { O 6 vector } linebuf_5_ce3 { O 1 bit } linebuf_5_q3 { I 12 vector } linebuf_5_address4 { O 6 vector } linebuf_5_ce4 { O 1 bit } linebuf_5_q4 { I 12 vector } linebuf_5_address5 { O 6 vector } linebuf_5_ce5 { O 1 bit } linebuf_5_q5 { I 12 vector } linebuf_5_address6 { O 6 vector } linebuf_5_ce6 { O 1 bit } linebuf_5_q6 { I 12 vector } linebuf_5_address7 { O 6 vector } linebuf_5_ce7 { O 1 bit } linebuf_5_q7 { I 12 vector } linebuf_5_address8 { O 6 vector } linebuf_5_ce8 { O 1 bit } linebuf_5_q8 { I 12 vector } linebuf_5_address9 { O 6 vector } linebuf_5_ce9 { O 1 bit } linebuf_5_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name linebuf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linebuf_6 \
    op interface \
    ports { linebuf_6_address0 { O 6 vector } linebuf_6_ce0 { O 1 bit } linebuf_6_q0 { I 12 vector } linebuf_6_address1 { O 6 vector } linebuf_6_ce1 { O 1 bit } linebuf_6_q1 { I 12 vector } linebuf_6_address2 { O 6 vector } linebuf_6_ce2 { O 1 bit } linebuf_6_q2 { I 12 vector } linebuf_6_address3 { O 6 vector } linebuf_6_ce3 { O 1 bit } linebuf_6_q3 { I 12 vector } linebuf_6_address4 { O 6 vector } linebuf_6_ce4 { O 1 bit } linebuf_6_q4 { I 12 vector } linebuf_6_address5 { O 6 vector } linebuf_6_ce5 { O 1 bit } linebuf_6_q5 { I 12 vector } linebuf_6_address6 { O 6 vector } linebuf_6_ce6 { O 1 bit } linebuf_6_q6 { I 12 vector } linebuf_6_address7 { O 6 vector } linebuf_6_ce7 { O 1 bit } linebuf_6_q7 { I 12 vector } linebuf_6_address8 { O 6 vector } linebuf_6_ce8 { O 1 bit } linebuf_6_q8 { I 12 vector } linebuf_6_address9 { O 6 vector } linebuf_6_ce9 { O 1 bit } linebuf_6_q9 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linebuf_6'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name empty_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_19 \
    op interface \
    ports { empty_19 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name empty_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_20 \
    op interface \
    ports { empty_20 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name empty_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_21 \
    op interface \
    ports { empty_21 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name empty_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_22 \
    op interface \
    ports { empty_22 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name empty_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_23 \
    op interface \
    ports { empty_23 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name empty_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_24 \
    op interface \
    ports { empty_24 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name em_seed_threshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_em_seed_threshold \
    op interface \
    ports { em_seed_threshold { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name em_cluster_threshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_em_cluster_threshold \
    op interface \
    ports { em_cluster_threshold { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name jet_seed_threshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_jet_seed_threshold \
    op interface \
    ports { jet_seed_threshold { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name jet_cluster_threshold \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_jet_cluster_threshold \
    op interface \
    ports { jet_cluster_threshold { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name center_eta \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_center_eta \
    op interface \
    ports { center_eta { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name em_cluster_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_em_cluster_stream \
    op interface \
    ports { em_cluster_stream_din { O 61 vector } em_cluster_stream_num_data_valid { I 7 vector } em_cluster_stream_fifo_cap { I 7 vector } em_cluster_stream_full_n { I 1 bit } em_cluster_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name jet_cluster_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_jet_cluster_stream \
    op interface \
    ports { jet_cluster_stream_din { O 61 vector } jet_cluster_stream_num_data_valid { I 7 vector } jet_cluster_stream_fifo_cap { I 7 vector } jet_cluster_stream_full_n { I 1 bit } jet_cluster_stream_write { O 1 bit } } \
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


# flow_control definition:
set InstName calo_trigger_tower_stream_ref_flow_control_loop_pipe_sequential_init_U
set CompName calo_trigger_tower_stream_ref_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix calo_trigger_tower_stream_ref_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


