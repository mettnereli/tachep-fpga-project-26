# This script segment is generated automatically by AutoPilot

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


