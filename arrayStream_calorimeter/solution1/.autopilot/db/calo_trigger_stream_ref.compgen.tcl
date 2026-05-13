# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_CTRL {
seed_threshold { 
	dir I
	width 12
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
cluster_threshold { 
	dir I
	width 20
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
ht { 
	dir O
	width 24
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
num_clusters { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 48
	offset_end 55
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 136 \
			corename calo_trigger_stream_ref_CTRL_axilite \
			name calo_trigger_stream_ref_CTRL_s_axi \
			ports {$port_CTRL} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'CTRL'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler calo_trigger_stream_ref_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name trigger_objects_0 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_0 \
    op interface \
    ports { trigger_objects_0 { O 89 vector } trigger_objects_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name trigger_objects_1 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_1 \
    op interface \
    ports { trigger_objects_1 { O 89 vector } trigger_objects_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name trigger_objects_2 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_2 \
    op interface \
    ports { trigger_objects_2 { O 89 vector } trigger_objects_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name trigger_objects_3 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_3 \
    op interface \
    ports { trigger_objects_3 { O 89 vector } trigger_objects_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name trigger_objects_4 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_4 \
    op interface \
    ports { trigger_objects_4 { O 89 vector } trigger_objects_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name trigger_objects_5 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_5 \
    op interface \
    ports { trigger_objects_5 { O 89 vector } trigger_objects_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name trigger_objects_6 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_6 \
    op interface \
    ports { trigger_objects_6 { O 89 vector } trigger_objects_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name trigger_objects_7 \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_trigger_objects_7 \
    op interface \
    ports { trigger_objects_7 { O 89 vector } trigger_objects_7_ap_vld { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


