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
set C_modelType { int 456 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict clusters_et { MEM_WIDTH 16 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_isolation_et { MEM_WIDTH 16 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_eta { MEM_WIDTH 5 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_phi { MEM_WIDTH 6 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_window_size { MEM_WIDTH 1 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_valid { MEM_WIDTH 1 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ clusters_et int 16 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_isolation_et int 16 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_eta int 5 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_phi int 6 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_window_size int 1 regular {array 1800 { 1 3 } 1 1 }  }
	{ clusters_valid int 1 regular {array 1800 { 1 3 } 1 1 }  }
	{ num_clusters int 32 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "clusters_et", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_isolation_et", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_eta", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_phi", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_window_size", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "num_clusters", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 456} ]}
# RTL Port declarations: 
set portNum 73
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
	{ clusters_isolation_et_q0 sc_in sc_lv 16 signal 1 } 
	{ clusters_eta_address0 sc_out sc_lv 11 signal 2 } 
	{ clusters_eta_ce0 sc_out sc_logic 1 signal 2 } 
	{ clusters_eta_q0 sc_in sc_lv 5 signal 2 } 
	{ clusters_phi_address0 sc_out sc_lv 11 signal 3 } 
	{ clusters_phi_ce0 sc_out sc_logic 1 signal 3 } 
	{ clusters_phi_q0 sc_in sc_lv 6 signal 3 } 
	{ clusters_window_size_address0 sc_out sc_lv 11 signal 4 } 
	{ clusters_window_size_ce0 sc_out sc_logic 1 signal 4 } 
	{ clusters_window_size_q0 sc_in sc_lv 1 signal 4 } 
	{ clusters_valid_address0 sc_out sc_lv 11 signal 5 } 
	{ clusters_valid_ce0 sc_out sc_logic 1 signal 5 } 
	{ clusters_valid_q0 sc_in sc_lv 1 signal 5 } 
	{ num_clusters sc_in sc_lv 32 signal 6 } 
	{ ap_return_0 sc_out sc_lv 20 signal -1 } 
	{ ap_return_1 sc_out sc_lv 20 signal -1 } 
	{ ap_return_2 sc_out sc_lv 20 signal -1 } 
	{ ap_return_3 sc_out sc_lv 20 signal -1 } 
	{ ap_return_4 sc_out sc_lv 20 signal -1 } 
	{ ap_return_5 sc_out sc_lv 20 signal -1 } 
	{ ap_return_6 sc_out sc_lv 20 signal -1 } 
	{ ap_return_7 sc_out sc_lv 20 signal -1 } 
	{ ap_return_8 sc_out sc_lv 20 signal -1 } 
	{ ap_return_9 sc_out sc_lv 20 signal -1 } 
	{ ap_return_10 sc_out sc_lv 20 signal -1 } 
	{ ap_return_11 sc_out sc_lv 20 signal -1 } 
	{ ap_return_12 sc_out sc_lv 20 signal -1 } 
	{ ap_return_13 sc_out sc_lv 20 signal -1 } 
	{ ap_return_14 sc_out sc_lv 20 signal -1 } 
	{ ap_return_15 sc_out sc_lv 20 signal -1 } 
	{ ap_return_16 sc_out sc_lv 6 signal -1 } 
	{ ap_return_17 sc_out sc_lv 6 signal -1 } 
	{ ap_return_18 sc_out sc_lv 6 signal -1 } 
	{ ap_return_19 sc_out sc_lv 6 signal -1 } 
	{ ap_return_20 sc_out sc_lv 6 signal -1 } 
	{ ap_return_21 sc_out sc_lv 6 signal -1 } 
	{ ap_return_22 sc_out sc_lv 6 signal -1 } 
	{ ap_return_23 sc_out sc_lv 6 signal -1 } 
	{ ap_return_24 sc_out sc_lv 6 signal -1 } 
	{ ap_return_25 sc_out sc_lv 6 signal -1 } 
	{ ap_return_26 sc_out sc_lv 6 signal -1 } 
	{ ap_return_27 sc_out sc_lv 6 signal -1 } 
	{ ap_return_28 sc_out sc_lv 6 signal -1 } 
	{ ap_return_29 sc_out sc_lv 6 signal -1 } 
	{ ap_return_30 sc_out sc_lv 6 signal -1 } 
	{ ap_return_31 sc_out sc_lv 6 signal -1 } 
	{ ap_return_32 sc_out sc_lv 4 signal -1 } 
	{ ap_return_33 sc_out sc_lv 4 signal -1 } 
	{ ap_return_34 sc_out sc_lv 4 signal -1 } 
	{ ap_return_35 sc_out sc_lv 4 signal -1 } 
	{ ap_return_36 sc_out sc_lv 4 signal -1 } 
	{ ap_return_37 sc_out sc_lv 4 signal -1 } 
	{ ap_return_38 sc_out sc_lv 4 signal -1 } 
	{ ap_return_39 sc_out sc_lv 4 signal -1 } 
	{ ap_return_40 sc_out sc_lv 1 signal -1 } 
	{ ap_return_41 sc_out sc_lv 1 signal -1 } 
	{ ap_return_42 sc_out sc_lv 1 signal -1 } 
	{ ap_return_43 sc_out sc_lv 1 signal -1 } 
	{ ap_return_44 sc_out sc_lv 1 signal -1 } 
	{ ap_return_45 sc_out sc_lv 1 signal -1 } 
	{ ap_return_46 sc_out sc_lv 1 signal -1 } 
	{ ap_return_47 sc_out sc_lv 1 signal -1 } 
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
 	{ "name": "clusters_isolation_et_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "q0" }} , 
 	{ "name": "clusters_eta_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_eta", "role": "address0" }} , 
 	{ "name": "clusters_eta_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_eta", "role": "ce0" }} , 
 	{ "name": "clusters_eta_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "clusters_eta", "role": "q0" }} , 
 	{ "name": "clusters_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_phi", "role": "address0" }} , 
 	{ "name": "clusters_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_phi", "role": "ce0" }} , 
 	{ "name": "clusters_phi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "clusters_phi", "role": "q0" }} , 
 	{ "name": "clusters_window_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "address0" }} , 
 	{ "name": "clusters_window_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "ce0" }} , 
 	{ "name": "clusters_window_size_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "q0" }} , 
 	{ "name": "clusters_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_valid", "role": "address0" }} , 
 	{ "name": "clusters_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "ce0" }} , 
 	{ "name": "clusters_valid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "q0" }} , 
 	{ "name": "num_clusters", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_clusters", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "select_top_n",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3601", "EstimateLatencyMax" : "25201",
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
			{"Name" : "clusters_valid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_clusters", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_135_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state6_blk"}},
			{"Name" : "FIND_CLUSTER", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_20_1_1_U10", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_20_1_1_U11", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_6_1_1_U12", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_6_1_1_U13", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_4_1_1_U14", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_1_1_1_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	select_top_n {
		clusters_et {Type I LastRead 2 FirstWrite -1}
		clusters_isolation_et {Type I LastRead 2 FirstWrite -1}
		clusters_eta {Type I LastRead 2 FirstWrite -1}
		clusters_phi {Type I LastRead 2 FirstWrite -1}
		clusters_window_size {Type I LastRead 2 FirstWrite -1}
		clusters_valid {Type I LastRead 1 FirstWrite -1}
		num_clusters {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3601", "Max" : "25201"}
	, {"Name" : "Interval", "Min" : "3601", "Max" : "25201"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	clusters_et { ap_memory {  { clusters_et_address0 mem_address 1 11 }  { clusters_et_ce0 mem_ce 1 1 }  { clusters_et_q0 mem_dout 0 16 } } }
	clusters_isolation_et { ap_memory {  { clusters_isolation_et_address0 mem_address 1 11 }  { clusters_isolation_et_ce0 mem_ce 1 1 }  { clusters_isolation_et_q0 mem_dout 0 16 } } }
	clusters_eta { ap_memory {  { clusters_eta_address0 mem_address 1 11 }  { clusters_eta_ce0 mem_ce 1 1 }  { clusters_eta_q0 mem_dout 0 5 } } }
	clusters_phi { ap_memory {  { clusters_phi_address0 mem_address 1 11 }  { clusters_phi_ce0 mem_ce 1 1 }  { clusters_phi_q0 mem_dout 0 6 } } }
	clusters_window_size { ap_memory {  { clusters_window_size_address0 mem_address 1 11 }  { clusters_window_size_ce0 mem_ce 1 1 }  { clusters_window_size_q0 mem_dout 0 1 } } }
	clusters_valid { ap_memory {  { clusters_valid_address0 mem_address 1 11 }  { clusters_valid_ce0 mem_ce 1 1 }  { clusters_valid_q0 mem_dout 0 1 } } }
	num_clusters { ap_none {  { num_clusters in_data 0 32 } } }
}
