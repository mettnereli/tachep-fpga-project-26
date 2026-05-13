# This script segment is generated automatically by AutoPilot

set name calo_trigger_tower_stream_ref_urem_5ns_4ns_3_9_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto_seq} LATENCY 8 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler calo_trigger_tower_stream_ref_produce_em_jet_cluster_stream_from_towers_linebuf_RAM_1WNR_AUTO_1R1W BINDTYPE {storage} TYPE {ram_1wnr} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 92 \
    name tower_in \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { tower_in_TDATA { I 16 vector } tower_in_TVALID { I 1 bit } tower_in_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tower_in'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
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
    id 94 \
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
    id 95 \
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
    id 96 \
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
    id 97 \
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
    id 98 \
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
    id 99 \
    name ht \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ht \
    op interface \
    ports { ht { O 24 vector } ht_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


