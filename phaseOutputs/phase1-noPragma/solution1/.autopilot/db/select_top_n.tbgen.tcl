set moduleName select_top_n
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {select_top_n}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict clusters_et { MEM_WIDTH 16 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_isolation_et { MEM_WIDTH 18 MEM_SIZE 5400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_eta { MEM_WIDTH 5 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_phi { MEM_WIDTH 6 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_window_size { MEM_WIDTH 1 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_iso_outer_size { MEM_WIDTH 3 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_valid { MEM_WIDTH 1 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_et { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_isolation_et { MEM_WIDTH 18 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_eta { MEM_WIDTH 5 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_phi { MEM_WIDTH 6 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_window_size { MEM_WIDTH 2 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_iso_outer_size { MEM_WIDTH 3 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_valid { MEM_WIDTH 1 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ clusters_et int 16 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_isolation_et int 18 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_eta int 5 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_phi int 6 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_window_size int 1 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_iso_outer_size int 3 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_valid int 1 regular {array 1800 { 1 3 } 1 1 }  }
	{ num_clusters int 32 regular  }
	{ top_clusters_et int 16 regular {array 8 { 2 1 } 1 1 }  }
	{ top_clusters_isolation_et int 18 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_eta int 5 regular {array 8 { 2 1 } 1 1 }  }
	{ top_clusters_phi int 6 regular {array 8 { 2 1 } 1 1 }  }
	{ top_clusters_window_size int 2 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_iso_outer_size int 3 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_valid int 1 regular {array 8 { 2 1 } 1 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "clusters_et", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_isolation_et", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_eta", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_phi", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_window_size", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_iso_outer_size", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "num_clusters", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "top_clusters_et", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_isolation_et", "interface" : "memory", "bitwidth" : 18, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_eta", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_phi", "interface" : "memory", "bitwidth" : 6, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_window_size", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_iso_outer_size", "interface" : "memory", "bitwidth" : 3, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ clusters_et_address0 sc_out sc_lv 11 signal 0 } 
	{ clusters_et_ce0 sc_out sc_logic 1 signal 0 } 
	{ clusters_et_q0 sc_in sc_lv 16 signal 0 } 
	{ clusters_isolation_et_address0 sc_out sc_lv 11 signal 1 } 
	{ clusters_isolation_et_ce0 sc_out sc_logic 1 signal 1 } 
	{ clusters_isolation_et_q0 sc_in sc_lv 18 signal 1 } 
	{ clusters_eta_address0 sc_out sc_lv 11 signal 2 } 
	{ clusters_eta_ce0 sc_out sc_logic 1 signal 2 } 
	{ clusters_eta_q0 sc_in sc_lv 5 signal 2 } 
	{ clusters_phi_address0 sc_out sc_lv 11 signal 3 } 
	{ clusters_phi_ce0 sc_out sc_logic 1 signal 3 } 
	{ clusters_phi_q0 sc_in sc_lv 6 signal 3 } 
	{ clusters_window_size_address0 sc_out sc_lv 11 signal 4 } 
	{ clusters_window_size_ce0 sc_out sc_logic 1 signal 4 } 
	{ clusters_window_size_q0 sc_in sc_lv 1 signal 4 } 
	{ clusters_iso_outer_size_address0 sc_out sc_lv 11 signal 5 } 
	{ clusters_iso_outer_size_ce0 sc_out sc_logic 1 signal 5 } 
	{ clusters_iso_outer_size_q0 sc_in sc_lv 3 signal 5 } 
	{ clusters_valid_address0 sc_out sc_lv 11 signal 6 } 
	{ clusters_valid_ce0 sc_out sc_logic 1 signal 6 } 
	{ clusters_valid_q0 sc_in sc_lv 1 signal 6 } 
	{ num_clusters sc_in sc_lv 32 signal 7 } 
	{ top_clusters_et_address0 sc_out sc_lv 3 signal 8 } 
	{ top_clusters_et_ce0 sc_out sc_logic 1 signal 8 } 
	{ top_clusters_et_we0 sc_out sc_logic 1 signal 8 } 
	{ top_clusters_et_d0 sc_out sc_lv 16 signal 8 } 
	{ top_clusters_et_q0 sc_in sc_lv 16 signal 8 } 
	{ top_clusters_et_address1 sc_out sc_lv 3 signal 8 } 
	{ top_clusters_et_ce1 sc_out sc_logic 1 signal 8 } 
	{ top_clusters_et_q1 sc_in sc_lv 16 signal 8 } 
	{ top_clusters_isolation_et_address0 sc_out sc_lv 3 signal 9 } 
	{ top_clusters_isolation_et_ce0 sc_out sc_logic 1 signal 9 } 
	{ top_clusters_isolation_et_we0 sc_out sc_logic 1 signal 9 } 
	{ top_clusters_isolation_et_d0 sc_out sc_lv 18 signal 9 } 
	{ top_clusters_isolation_et_address1 sc_out sc_lv 3 signal 9 } 
	{ top_clusters_isolation_et_ce1 sc_out sc_logic 1 signal 9 } 
	{ top_clusters_isolation_et_q1 sc_in sc_lv 18 signal 9 } 
	{ top_clusters_eta_address0 sc_out sc_lv 3 signal 10 } 
	{ top_clusters_eta_ce0 sc_out sc_logic 1 signal 10 } 
	{ top_clusters_eta_we0 sc_out sc_logic 1 signal 10 } 
	{ top_clusters_eta_d0 sc_out sc_lv 5 signal 10 } 
	{ top_clusters_eta_q0 sc_in sc_lv 5 signal 10 } 
	{ top_clusters_eta_address1 sc_out sc_lv 3 signal 10 } 
	{ top_clusters_eta_ce1 sc_out sc_logic 1 signal 10 } 
	{ top_clusters_eta_q1 sc_in sc_lv 5 signal 10 } 
	{ top_clusters_phi_address0 sc_out sc_lv 3 signal 11 } 
	{ top_clusters_phi_ce0 sc_out sc_logic 1 signal 11 } 
	{ top_clusters_phi_we0 sc_out sc_logic 1 signal 11 } 
	{ top_clusters_phi_d0 sc_out sc_lv 6 signal 11 } 
	{ top_clusters_phi_q0 sc_in sc_lv 6 signal 11 } 
	{ top_clusters_phi_address1 sc_out sc_lv 3 signal 11 } 
	{ top_clusters_phi_ce1 sc_out sc_logic 1 signal 11 } 
	{ top_clusters_phi_q1 sc_in sc_lv 6 signal 11 } 
	{ top_clusters_window_size_address0 sc_out sc_lv 3 signal 12 } 
	{ top_clusters_window_size_ce0 sc_out sc_logic 1 signal 12 } 
	{ top_clusters_window_size_we0 sc_out sc_logic 1 signal 12 } 
	{ top_clusters_window_size_d0 sc_out sc_lv 2 signal 12 } 
	{ top_clusters_window_size_address1 sc_out sc_lv 3 signal 12 } 
	{ top_clusters_window_size_ce1 sc_out sc_logic 1 signal 12 } 
	{ top_clusters_window_size_q1 sc_in sc_lv 2 signal 12 } 
	{ top_clusters_iso_outer_size_address0 sc_out sc_lv 3 signal 13 } 
	{ top_clusters_iso_outer_size_ce0 sc_out sc_logic 1 signal 13 } 
	{ top_clusters_iso_outer_size_we0 sc_out sc_logic 1 signal 13 } 
	{ top_clusters_iso_outer_size_d0 sc_out sc_lv 3 signal 13 } 
	{ top_clusters_iso_outer_size_address1 sc_out sc_lv 3 signal 13 } 
	{ top_clusters_iso_outer_size_ce1 sc_out sc_logic 1 signal 13 } 
	{ top_clusters_iso_outer_size_q1 sc_in sc_lv 3 signal 13 } 
	{ top_clusters_valid_address0 sc_out sc_lv 3 signal 14 } 
	{ top_clusters_valid_ce0 sc_out sc_logic 1 signal 14 } 
	{ top_clusters_valid_we0 sc_out sc_logic 1 signal 14 } 
	{ top_clusters_valid_d0 sc_out sc_lv 1 signal 14 } 
	{ top_clusters_valid_q0 sc_in sc_lv 1 signal 14 } 
	{ top_clusters_valid_address1 sc_out sc_lv 3 signal 14 } 
	{ top_clusters_valid_ce1 sc_out sc_logic 1 signal 14 } 
	{ top_clusters_valid_q1 sc_in sc_lv 1 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "clusters_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_et", "role": "address0" }} , 
 	{ "name": "clusters_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_et", "role": "ce0" }} , 
 	{ "name": "clusters_et_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "clusters_et", "role": "q0" }} , 
 	{ "name": "clusters_isolation_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "address0" }} , 
 	{ "name": "clusters_isolation_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "ce0" }} , 
 	{ "name": "clusters_isolation_et_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "q0" }} , 
 	{ "name": "clusters_eta_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_eta", "role": "address0" }} , 
 	{ "name": "clusters_eta_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_eta", "role": "ce0" }} , 
 	{ "name": "clusters_eta_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "clusters_eta", "role": "q0" }} , 
 	{ "name": "clusters_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_phi", "role": "address0" }} , 
 	{ "name": "clusters_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_phi", "role": "ce0" }} , 
 	{ "name": "clusters_phi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "clusters_phi", "role": "q0" }} , 
 	{ "name": "clusters_window_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "address0" }} , 
 	{ "name": "clusters_window_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "ce0" }} , 
 	{ "name": "clusters_window_size_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "q0" }} , 
 	{ "name": "clusters_iso_outer_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "address0" }} , 
 	{ "name": "clusters_iso_outer_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "ce0" }} , 
 	{ "name": "clusters_iso_outer_size_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "q0" }} , 
 	{ "name": "clusters_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_valid", "role": "address0" }} , 
 	{ "name": "clusters_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "ce0" }} , 
 	{ "name": "clusters_valid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "q0" }} , 
 	{ "name": "num_clusters", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_clusters", "role": "default" }} , 
 	{ "name": "top_clusters_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "address0" }} , 
 	{ "name": "top_clusters_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "ce0" }} , 
 	{ "name": "top_clusters_et_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "we0" }} , 
 	{ "name": "top_clusters_et_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "d0" }} , 
 	{ "name": "top_clusters_et_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "q0" }} , 
 	{ "name": "top_clusters_et_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "address1" }} , 
 	{ "name": "top_clusters_et_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "ce1" }} , 
 	{ "name": "top_clusters_et_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "q1" }} , 
 	{ "name": "top_clusters_isolation_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "address0" }} , 
 	{ "name": "top_clusters_isolation_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "ce0" }} , 
 	{ "name": "top_clusters_isolation_et_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "we0" }} , 
 	{ "name": "top_clusters_isolation_et_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "d0" }} , 
 	{ "name": "top_clusters_isolation_et_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "address1" }} , 
 	{ "name": "top_clusters_isolation_et_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "ce1" }} , 
 	{ "name": "top_clusters_isolation_et_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "top_clusters_isolation_et", "role": "q1" }} , 
 	{ "name": "top_clusters_eta_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "address0" }} , 
 	{ "name": "top_clusters_eta_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "ce0" }} , 
 	{ "name": "top_clusters_eta_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "we0" }} , 
 	{ "name": "top_clusters_eta_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "d0" }} , 
 	{ "name": "top_clusters_eta_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "q0" }} , 
 	{ "name": "top_clusters_eta_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "address1" }} , 
 	{ "name": "top_clusters_eta_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "ce1" }} , 
 	{ "name": "top_clusters_eta_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "q1" }} , 
 	{ "name": "top_clusters_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "address0" }} , 
 	{ "name": "top_clusters_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "ce0" }} , 
 	{ "name": "top_clusters_phi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "we0" }} , 
 	{ "name": "top_clusters_phi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "d0" }} , 
 	{ "name": "top_clusters_phi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "q0" }} , 
 	{ "name": "top_clusters_phi_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "address1" }} , 
 	{ "name": "top_clusters_phi_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "ce1" }} , 
 	{ "name": "top_clusters_phi_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "q1" }} , 
 	{ "name": "top_clusters_window_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "address0" }} , 
 	{ "name": "top_clusters_window_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "ce0" }} , 
 	{ "name": "top_clusters_window_size_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "we0" }} , 
 	{ "name": "top_clusters_window_size_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "d0" }} , 
 	{ "name": "top_clusters_window_size_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "address1" }} , 
 	{ "name": "top_clusters_window_size_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "ce1" }} , 
 	{ "name": "top_clusters_window_size_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "top_clusters_window_size", "role": "q1" }} , 
 	{ "name": "top_clusters_iso_outer_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "address0" }} , 
 	{ "name": "top_clusters_iso_outer_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "ce0" }} , 
 	{ "name": "top_clusters_iso_outer_size_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "we0" }} , 
 	{ "name": "top_clusters_iso_outer_size_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "d0" }} , 
 	{ "name": "top_clusters_iso_outer_size_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "address1" }} , 
 	{ "name": "top_clusters_iso_outer_size_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "ce1" }} , 
 	{ "name": "top_clusters_iso_outer_size_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_iso_outer_size", "role": "q1" }} , 
 	{ "name": "top_clusters_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "address0" }} , 
 	{ "name": "top_clusters_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "ce0" }} , 
 	{ "name": "top_clusters_valid_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "we0" }} , 
 	{ "name": "top_clusters_valid_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "d0" }} , 
 	{ "name": "top_clusters_valid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "q0" }} , 
 	{ "name": "top_clusters_valid_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "address1" }} , 
 	{ "name": "top_clusters_valid_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "ce1" }} , 
 	{ "name": "top_clusters_valid_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4"],
		"CDFG" : "select_top_n",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3612", "EstimateLatencyMax" : "113412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "clusters_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_isolation_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_eta", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_phi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_window_size", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_iso_outer_size", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_valid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_clusters", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_et", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_et", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_et", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_isolation_et", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_isolation_et", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_eta", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_eta", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_eta", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_phi", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_phi", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_phi", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_window_size", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_window_size", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "top_clusters_iso_outer_size", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_iso_outer_size", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_iso_outer_size", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_valid", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "1", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_valid", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_valid", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "select_top_n_Pipeline_VITIS_LOOP_108_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_iso_outer_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_108_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Parent" : "0",
		"CDFG" : "select_top_n_Pipeline_VITIS_LOOP_128_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "candidate_et", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "candidate_eta", "Type" : "None", "Direction" : "I"},
			{"Name" : "candidate_phi", "Type" : "None", "Direction" : "I"},
			{"Name" : "j_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "zext_ln128_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7", "ap_ST_fsm_state8", "ap_ST_fsm_state9", "ap_ST_fsm_state10", "ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "select_top_n_Pipeline_VITIS_LOOP_131_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_iso_outer_size", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_131_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	select_top_n {
		clusters_et {Type I LastRead 3 FirstWrite -1}
		clusters_isolation_et {Type I LastRead 3 FirstWrite -1}
		clusters_eta {Type I LastRead 3 FirstWrite -1}
		clusters_phi {Type I LastRead 3 FirstWrite -1}
		clusters_window_size {Type I LastRead 3 FirstWrite -1}
		clusters_iso_outer_size {Type I LastRead 3 FirstWrite -1}
		clusters_valid {Type I LastRead 2 FirstWrite -1}
		num_clusters {Type I LastRead 1 FirstWrite -1}
		top_clusters_et {Type IO LastRead 2 FirstWrite -1}
		top_clusters_isolation_et {Type IO LastRead 0 FirstWrite 0}
		top_clusters_eta {Type IO LastRead 3 FirstWrite -1}
		top_clusters_phi {Type IO LastRead 4 FirstWrite -1}
		top_clusters_window_size {Type IO LastRead 0 FirstWrite 0}
		top_clusters_iso_outer_size {Type IO LastRead 0 FirstWrite 0}
		top_clusters_valid {Type IO LastRead 1 FirstWrite -1}}
	select_top_n_Pipeline_VITIS_LOOP_108_1 {
		top_clusters_et {Type O LastRead -1 FirstWrite 0}
		top_clusters_isolation_et {Type O LastRead -1 FirstWrite 0}
		top_clusters_eta {Type O LastRead -1 FirstWrite 0}
		top_clusters_phi {Type O LastRead -1 FirstWrite 0}
		top_clusters_window_size {Type O LastRead -1 FirstWrite 0}
		top_clusters_iso_outer_size {Type O LastRead -1 FirstWrite 0}
		top_clusters_valid {Type O LastRead -1 FirstWrite 0}}
	select_top_n_Pipeline_VITIS_LOOP_128_3 {
		candidate_et {Type I LastRead 0 FirstWrite -1}
		top_clusters_et {Type I LastRead 2 FirstWrite -1}
		top_clusters_eta {Type I LastRead 3 FirstWrite -1}
		top_clusters_phi {Type I LastRead 4 FirstWrite -1}
		top_clusters_valid {Type I LastRead 1 FirstWrite -1}
		candidate_eta {Type I LastRead 0 FirstWrite -1}
		candidate_phi {Type I LastRead 0 FirstWrite -1}
		j_out {Type O LastRead -1 FirstWrite 2}
		zext_ln128_out {Type O LastRead -1 FirstWrite 3}}
	select_top_n_Pipeline_VITIS_LOOP_131_4 {
		empty {Type I LastRead 0 FirstWrite -1}
		top_clusters_et {Type IO LastRead 0 FirstWrite 1}
		top_clusters_isolation_et {Type IO LastRead 0 FirstWrite 1}
		top_clusters_eta {Type IO LastRead 0 FirstWrite 1}
		top_clusters_phi {Type IO LastRead 0 FirstWrite 1}
		top_clusters_window_size {Type IO LastRead 0 FirstWrite 1}
		top_clusters_iso_outer_size {Type IO LastRead 0 FirstWrite 1}
		top_clusters_valid {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3612", "Max" : "113412"}
	, {"Name" : "Interval", "Min" : "3612", "Max" : "113412"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	clusters_et { ap_memory {  { clusters_et_address0 mem_address 1 11 }  { clusters_et_ce0 mem_ce 1 1 }  { clusters_et_q0 mem_dout 0 16 } } }
	clusters_isolation_et { ap_memory {  { clusters_isolation_et_address0 mem_address 1 11 }  { clusters_isolation_et_ce0 mem_ce 1 1 }  { clusters_isolation_et_q0 mem_dout 0 18 } } }
	clusters_eta { ap_memory {  { clusters_eta_address0 mem_address 1 11 }  { clusters_eta_ce0 mem_ce 1 1 }  { clusters_eta_q0 mem_dout 0 5 } } }
	clusters_phi { ap_memory {  { clusters_phi_address0 mem_address 1 11 }  { clusters_phi_ce0 mem_ce 1 1 }  { clusters_phi_q0 mem_dout 0 6 } } }
	clusters_window_size { ap_memory {  { clusters_window_size_address0 mem_address 1 11 }  { clusters_window_size_ce0 mem_ce 1 1 }  { clusters_window_size_q0 mem_dout 0 1 } } }
	clusters_iso_outer_size { ap_memory {  { clusters_iso_outer_size_address0 mem_address 1 11 }  { clusters_iso_outer_size_ce0 mem_ce 1 1 }  { clusters_iso_outer_size_q0 mem_dout 0 3 } } }
	clusters_valid { ap_memory {  { clusters_valid_address0 mem_address 1 11 }  { clusters_valid_ce0 mem_ce 1 1 }  { clusters_valid_q0 mem_dout 0 1 } } }
	num_clusters { ap_none {  { num_clusters in_data 0 32 } } }
	top_clusters_et { ap_memory {  { top_clusters_et_address0 mem_address 1 3 }  { top_clusters_et_ce0 mem_ce 1 1 }  { top_clusters_et_we0 mem_we 1 1 }  { top_clusters_et_d0 mem_din 1 16 }  { top_clusters_et_q0 mem_dout 0 16 }  { top_clusters_et_address1 MemPortADDR2 1 3 }  { top_clusters_et_ce1 MemPortCE2 1 1 }  { top_clusters_et_q1 MemPortDOUT2 0 16 } } }
	top_clusters_isolation_et { ap_memory {  { top_clusters_isolation_et_address0 mem_address 1 3 }  { top_clusters_isolation_et_ce0 mem_ce 1 1 }  { top_clusters_isolation_et_we0 mem_we 1 1 }  { top_clusters_isolation_et_d0 mem_din 1 18 }  { top_clusters_isolation_et_address1 MemPortADDR2 1 3 }  { top_clusters_isolation_et_ce1 MemPortCE2 1 1 }  { top_clusters_isolation_et_q1 MemPortDOUT2 0 18 } } }
	top_clusters_eta { ap_memory {  { top_clusters_eta_address0 mem_address 1 3 }  { top_clusters_eta_ce0 mem_ce 1 1 }  { top_clusters_eta_we0 mem_we 1 1 }  { top_clusters_eta_d0 mem_din 1 5 }  { top_clusters_eta_q0 mem_dout 0 5 }  { top_clusters_eta_address1 MemPortADDR2 1 3 }  { top_clusters_eta_ce1 MemPortCE2 1 1 }  { top_clusters_eta_q1 MemPortDOUT2 0 5 } } }
	top_clusters_phi { ap_memory {  { top_clusters_phi_address0 mem_address 1 3 }  { top_clusters_phi_ce0 mem_ce 1 1 }  { top_clusters_phi_we0 mem_we 1 1 }  { top_clusters_phi_d0 mem_din 1 6 }  { top_clusters_phi_q0 mem_dout 0 6 }  { top_clusters_phi_address1 MemPortADDR2 1 3 }  { top_clusters_phi_ce1 MemPortCE2 1 1 }  { top_clusters_phi_q1 MemPortDOUT2 0 6 } } }
	top_clusters_window_size { ap_memory {  { top_clusters_window_size_address0 mem_address 1 3 }  { top_clusters_window_size_ce0 mem_ce 1 1 }  { top_clusters_window_size_we0 mem_we 1 1 }  { top_clusters_window_size_d0 mem_din 1 2 }  { top_clusters_window_size_address1 MemPortADDR2 1 3 }  { top_clusters_window_size_ce1 MemPortCE2 1 1 }  { top_clusters_window_size_q1 MemPortDOUT2 0 2 } } }
	top_clusters_iso_outer_size { ap_memory {  { top_clusters_iso_outer_size_address0 mem_address 1 3 }  { top_clusters_iso_outer_size_ce0 mem_ce 1 1 }  { top_clusters_iso_outer_size_we0 mem_we 1 1 }  { top_clusters_iso_outer_size_d0 mem_din 1 3 }  { top_clusters_iso_outer_size_address1 MemPortADDR2 1 3 }  { top_clusters_iso_outer_size_ce1 MemPortCE2 1 1 }  { top_clusters_iso_outer_size_q1 MemPortDOUT2 0 3 } } }
	top_clusters_valid { ap_memory {  { top_clusters_valid_address0 mem_address 1 3 }  { top_clusters_valid_ce0 mem_ce 1 1 }  { top_clusters_valid_we0 mem_we 1 1 }  { top_clusters_valid_d0 mem_din 1 1 }  { top_clusters_valid_q0 mem_dout 0 1 }  { top_clusters_valid_address1 MemPortADDR2 1 3 }  { top_clusters_valid_ce1 MemPortCE2 1 1 }  { top_clusters_valid_q1 MemPortDOUT2 0 1 } } }
}
