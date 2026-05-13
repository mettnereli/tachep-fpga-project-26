set moduleName find_clusters_3_5_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {find_clusters<3, 5>}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict grid { MEM_WIDTH 12 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict clusters_et { MEM_WIDTH 16 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict clusters_isolation_et { MEM_WIDTH 16 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict clusters_eta { MEM_WIDTH 5 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict clusters_phi { MEM_WIDTH 6 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict clusters_window_size { MEM_WIDTH 1 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict clusters_iso_outer_size { MEM_WIDTH 3 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict clusters_valid { MEM_WIDTH 1 MEM_SIZE 1800 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ grid int 12 regular {bram 1800 { 1 1 } 1 1 }  }
	{ seed_threshold int 12 regular  }
	{ cluster_threshold int 20 regular  }
	{ clusters_et int 16 regular {array 1800 { 0 3 } 0 1 }  }
	{ clusters_isolation_et int 16 regular {array 1800 { 0 3 } 0 1 }  }
	{ clusters_eta int 5 regular {array 1800 { 0 3 } 0 1 }  }
	{ clusters_phi int 6 regular {array 1800 { 0 3 } 0 1 }  }
	{ clusters_window_size int 1 regular {array 1800 { 0 3 } 0 1 }  }
	{ clusters_iso_outer_size int 3 regular {array 1800 { 0 3 } 0 1 }  }
	{ clusters_valid int 1 regular {array 1800 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "grid", "interface" : "bram", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "clusters_et", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clusters_isolation_et", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clusters_eta", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clusters_phi", "interface" : "memory", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clusters_window_size", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clusters_iso_outer_size", "interface" : "memory", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clusters_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ grid_Addr_A sc_out sc_lv 32 signal 0 } 
	{ grid_EN_A sc_out sc_logic 1 signal 0 } 
	{ grid_WEN_A sc_out sc_lv 2 signal 0 } 
	{ grid_Din_A sc_out sc_lv 16 signal 0 } 
	{ grid_Dout_A sc_in sc_lv 16 signal 0 } 
	{ grid_Addr_B sc_out sc_lv 32 signal 0 } 
	{ grid_EN_B sc_out sc_logic 1 signal 0 } 
	{ grid_WEN_B sc_out sc_lv 2 signal 0 } 
	{ grid_Din_B sc_out sc_lv 16 signal 0 } 
	{ grid_Dout_B sc_in sc_lv 16 signal 0 } 
	{ seed_threshold sc_in sc_lv 12 signal 1 } 
	{ cluster_threshold sc_in sc_lv 20 signal 2 } 
	{ clusters_et_address0 sc_out sc_lv 11 signal 3 } 
	{ clusters_et_ce0 sc_out sc_logic 1 signal 3 } 
	{ clusters_et_we0 sc_out sc_logic 1 signal 3 } 
	{ clusters_et_d0 sc_out sc_lv 16 signal 3 } 
	{ clusters_isolation_et_address0 sc_out sc_lv 11 signal 4 } 
	{ clusters_isolation_et_ce0 sc_out sc_logic 1 signal 4 } 
	{ clusters_isolation_et_we0 sc_out sc_logic 1 signal 4 } 
	{ clusters_isolation_et_d0 sc_out sc_lv 16 signal 4 } 
	{ clusters_eta_address0 sc_out sc_lv 11 signal 5 } 
	{ clusters_eta_ce0 sc_out sc_logic 1 signal 5 } 
	{ clusters_eta_we0 sc_out sc_logic 1 signal 5 } 
	{ clusters_eta_d0 sc_out sc_lv 5 signal 5 } 
	{ clusters_phi_address0 sc_out sc_lv 11 signal 6 } 
	{ clusters_phi_ce0 sc_out sc_logic 1 signal 6 } 
	{ clusters_phi_we0 sc_out sc_logic 1 signal 6 } 
	{ clusters_phi_d0 sc_out sc_lv 6 signal 6 } 
	{ clusters_window_size_address0 sc_out sc_lv 11 signal 7 } 
	{ clusters_window_size_ce0 sc_out sc_logic 1 signal 7 } 
	{ clusters_window_size_we0 sc_out sc_logic 1 signal 7 } 
	{ clusters_window_size_d0 sc_out sc_lv 1 signal 7 } 
	{ clusters_iso_outer_size_address0 sc_out sc_lv 11 signal 8 } 
	{ clusters_iso_outer_size_ce0 sc_out sc_logic 1 signal 8 } 
	{ clusters_iso_outer_size_we0 sc_out sc_logic 1 signal 8 } 
	{ clusters_iso_outer_size_d0 sc_out sc_lv 3 signal 8 } 
	{ clusters_valid_address0 sc_out sc_lv 11 signal 9 } 
	{ clusters_valid_ce0 sc_out sc_logic 1 signal 9 } 
	{ clusters_valid_we0 sc_out sc_logic 1 signal 9 } 
	{ clusters_valid_d0 sc_out sc_lv 1 signal 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "grid_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid", "role": "Addr_A" }} , 
 	{ "name": "grid_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "EN_A" }} , 
 	{ "name": "grid_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grid", "role": "WEN_A" }} , 
 	{ "name": "grid_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Din_A" }} , 
 	{ "name": "grid_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Dout_A" }} , 
 	{ "name": "grid_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid", "role": "Addr_B" }} , 
 	{ "name": "grid_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "EN_B" }} , 
 	{ "name": "grid_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grid", "role": "WEN_B" }} , 
 	{ "name": "grid_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Din_B" }} , 
 	{ "name": "grid_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Dout_B" }} , 
 	{ "name": "seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_threshold", "role": "default" }} , 
 	{ "name": "cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "cluster_threshold", "role": "default" }} , 
 	{ "name": "clusters_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_et", "role": "address0" }} , 
 	{ "name": "clusters_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_et", "role": "ce0" }} , 
 	{ "name": "clusters_et_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_et", "role": "we0" }} , 
 	{ "name": "clusters_et_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "clusters_et", "role": "d0" }} , 
 	{ "name": "clusters_isolation_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "address0" }} , 
 	{ "name": "clusters_isolation_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "ce0" }} , 
 	{ "name": "clusters_isolation_et_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "we0" }} , 
 	{ "name": "clusters_isolation_et_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "clusters_isolation_et", "role": "d0" }} , 
 	{ "name": "clusters_eta_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_eta", "role": "address0" }} , 
 	{ "name": "clusters_eta_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_eta", "role": "ce0" }} , 
 	{ "name": "clusters_eta_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_eta", "role": "we0" }} , 
 	{ "name": "clusters_eta_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "clusters_eta", "role": "d0" }} , 
 	{ "name": "clusters_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_phi", "role": "address0" }} , 
 	{ "name": "clusters_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_phi", "role": "ce0" }} , 
 	{ "name": "clusters_phi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_phi", "role": "we0" }} , 
 	{ "name": "clusters_phi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "clusters_phi", "role": "d0" }} , 
 	{ "name": "clusters_window_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "address0" }} , 
 	{ "name": "clusters_window_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "ce0" }} , 
 	{ "name": "clusters_window_size_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "we0" }} , 
 	{ "name": "clusters_window_size_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_window_size", "role": "d0" }} , 
 	{ "name": "clusters_iso_outer_size_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "address0" }} , 
 	{ "name": "clusters_iso_outer_size_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "ce0" }} , 
 	{ "name": "clusters_iso_outer_size_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "we0" }} , 
 	{ "name": "clusters_iso_outer_size_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "clusters_iso_outer_size", "role": "d0" }} , 
 	{ "name": "clusters_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "clusters_valid", "role": "address0" }} , 
 	{ "name": "clusters_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "ce0" }} , 
 	{ "name": "clusters_valid_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "we0" }} , 
 	{ "name": "clusters_valid_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clusters_valid", "role": "d0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "find_clusters_3_5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20288", "EstimateLatencyMax" : "20288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "grid", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "clusters_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_isolation_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_eta", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_phi", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_window_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_iso_outer_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_valid", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FIND_ETA_FIND_PHI", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	find_clusters_3_5_s {
		grid {Type I LastRead 18 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		clusters_et {Type O LastRead -1 FirstWrite 6}
		clusters_isolation_et {Type O LastRead -1 FirstWrite 19}
		clusters_eta {Type O LastRead -1 FirstWrite 6}
		clusters_phi {Type O LastRead -1 FirstWrite 6}
		clusters_window_size {Type O LastRead -1 FirstWrite 6}
		clusters_iso_outer_size {Type O LastRead -1 FirstWrite 6}
		clusters_valid {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20288", "Max" : "20288"}
	, {"Name" : "Interval", "Min" : "20288", "Max" : "20288"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	grid { bram {  { grid_Addr_A MemPortADDR2 1 32 }  { grid_EN_A MemPortCE2 1 1 }  { grid_WEN_A MemPortWE2 1 2 }  { grid_Din_A MemPortDIN2 1 16 }  { grid_Dout_A MemPortDOUT2 0 16 }  { grid_Addr_B MemPortADDR2 1 32 }  { grid_EN_B MemPortCE2 1 1 }  { grid_WEN_B MemPortWE2 1 2 }  { grid_Din_B MemPortDIN2 1 16 }  { grid_Dout_B MemPortDOUT2 0 16 } } }
	seed_threshold { ap_none {  { seed_threshold in_data 0 12 } } }
	cluster_threshold { ap_none {  { cluster_threshold in_data 0 20 } } }
	clusters_et { ap_memory {  { clusters_et_address0 mem_address 1 11 }  { clusters_et_ce0 mem_ce 1 1 }  { clusters_et_we0 mem_we 1 1 }  { clusters_et_d0 mem_din 1 16 } } }
	clusters_isolation_et { ap_memory {  { clusters_isolation_et_address0 mem_address 1 11 }  { clusters_isolation_et_ce0 mem_ce 1 1 }  { clusters_isolation_et_we0 mem_we 1 1 }  { clusters_isolation_et_d0 mem_din 1 16 } } }
	clusters_eta { ap_memory {  { clusters_eta_address0 mem_address 1 11 }  { clusters_eta_ce0 mem_ce 1 1 }  { clusters_eta_we0 mem_we 1 1 }  { clusters_eta_d0 mem_din 1 5 } } }
	clusters_phi { ap_memory {  { clusters_phi_address0 mem_address 1 11 }  { clusters_phi_ce0 mem_ce 1 1 }  { clusters_phi_we0 mem_we 1 1 }  { clusters_phi_d0 mem_din 1 6 } } }
	clusters_window_size { ap_memory {  { clusters_window_size_address0 mem_address 1 11 }  { clusters_window_size_ce0 mem_ce 1 1 }  { clusters_window_size_we0 mem_we 1 1 }  { clusters_window_size_d0 mem_din 1 1 } } }
	clusters_iso_outer_size { ap_memory {  { clusters_iso_outer_size_address0 mem_address 1 11 }  { clusters_iso_outer_size_ce0 mem_ce 1 1 }  { clusters_iso_outer_size_we0 mem_we 1 1 }  { clusters_iso_outer_size_d0 mem_din 1 3 } } }
	clusters_valid { ap_memory {  { clusters_valid_address0 mem_address 1 11 }  { clusters_valid_ce0 mem_ce 1 1 }  { clusters_valid_we0 mem_we 1 1 }  { clusters_valid_d0 mem_din 1 1 } } }
}
