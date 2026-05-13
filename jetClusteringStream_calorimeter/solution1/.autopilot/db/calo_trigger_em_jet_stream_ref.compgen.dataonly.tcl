# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
em_seed_threshold { 
	dir I
	width 12
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
em_cluster_threshold { 
	dir I
	width 20
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
jet_seed_threshold { 
	dir I
	width 12
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
jet_cluster_threshold { 
	dir I
	width 20
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
ht { 
	dir O
	width 24
	depth 1
	mode ap_vld
	offset 48
	offset_end 55
}
num_em_clusters { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 64
	offset_end 71
}
num_jet_clusters { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


