set moduleName select_top_n_Pipeline_VITIS_LOOP_131_4
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
set C_modelName {select_top_n_Pipeline_VITIS_LOOP_131_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict top_clusters_et { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_isolation_et { MEM_WIDTH 18 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_eta { MEM_WIDTH 5 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_phi { MEM_WIDTH 6 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_window_size { MEM_WIDTH 2 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_iso_outer_size { MEM_WIDTH 3 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict top_clusters_valid { MEM_WIDTH 1 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ empty int 3 regular  }
	{ top_clusters_et int 16 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_isolation_et int 18 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_eta int 5 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_phi int 6 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_window_size int 2 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_iso_outer_size int 3 regular {array 8 { 0 1 } 1 1 }  }
	{ top_clusters_valid int 1 regular {array 8 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "top_clusters_et", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_isolation_et", "interface" : "memory", "bitwidth" : 18, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_eta", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_phi", "interface" : "memory", "bitwidth" : 6, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_window_size", "interface" : "memory", "bitwidth" : 2, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_iso_outer_size", "interface" : "memory", "bitwidth" : 3, "direction" : "READWRITE"} , 
 	{ "Name" : "top_clusters_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty sc_in sc_lv 3 signal 0 } 
	{ top_clusters_et_address0 sc_out sc_lv 3 signal 1 } 
	{ top_clusters_et_ce0 sc_out sc_logic 1 signal 1 } 
	{ top_clusters_et_we0 sc_out sc_logic 1 signal 1 } 
	{ top_clusters_et_d0 sc_out sc_lv 16 signal 1 } 
	{ top_clusters_et_address1 sc_out sc_lv 3 signal 1 } 
	{ top_clusters_et_ce1 sc_out sc_logic 1 signal 1 } 
	{ top_clusters_et_q1 sc_in sc_lv 16 signal 1 } 
	{ top_clusters_isolation_et_address0 sc_out sc_lv 3 signal 2 } 
	{ top_clusters_isolation_et_ce0 sc_out sc_logic 1 signal 2 } 
	{ top_clusters_isolation_et_we0 sc_out sc_logic 1 signal 2 } 
	{ top_clusters_isolation_et_d0 sc_out sc_lv 18 signal 2 } 
	{ top_clusters_isolation_et_address1 sc_out sc_lv 3 signal 2 } 
	{ top_clusters_isolation_et_ce1 sc_out sc_logic 1 signal 2 } 
	{ top_clusters_isolation_et_q1 sc_in sc_lv 18 signal 2 } 
	{ top_clusters_eta_address0 sc_out sc_lv 3 signal 3 } 
	{ top_clusters_eta_ce0 sc_out sc_logic 1 signal 3 } 
	{ top_clusters_eta_we0 sc_out sc_logic 1 signal 3 } 
	{ top_clusters_eta_d0 sc_out sc_lv 5 signal 3 } 
	{ top_clusters_eta_address1 sc_out sc_lv 3 signal 3 } 
	{ top_clusters_eta_ce1 sc_out sc_logic 1 signal 3 } 
	{ top_clusters_eta_q1 sc_in sc_lv 5 signal 3 } 
	{ top_clusters_phi_address0 sc_out sc_lv 3 signal 4 } 
	{ top_clusters_phi_ce0 sc_out sc_logic 1 signal 4 } 
	{ top_clusters_phi_we0 sc_out sc_logic 1 signal 4 } 
	{ top_clusters_phi_d0 sc_out sc_lv 6 signal 4 } 
	{ top_clusters_phi_address1 sc_out sc_lv 3 signal 4 } 
	{ top_clusters_phi_ce1 sc_out sc_logic 1 signal 4 } 
	{ top_clusters_phi_q1 sc_in sc_lv 6 signal 4 } 
	{ top_clusters_window_size_address0 sc_out sc_lv 3 signal 5 } 
	{ top_clusters_window_size_ce0 sc_out sc_logic 1 signal 5 } 
	{ top_clusters_window_size_we0 sc_out sc_logic 1 signal 5 } 
	{ top_clusters_window_size_d0 sc_out sc_lv 2 signal 5 } 
	{ top_clusters_window_size_address1 sc_out sc_lv 3 signal 5 } 
	{ top_clusters_window_size_ce1 sc_out sc_logic 1 signal 5 } 
	{ top_clusters_window_size_q1 sc_in sc_lv 2 signal 5 } 
	{ top_clusters_iso_outer_size_address0 sc_out sc_lv 3 signal 6 } 
	{ top_clusters_iso_outer_size_ce0 sc_out sc_logic 1 signal 6 } 
	{ top_clusters_iso_outer_size_we0 sc_out sc_logic 1 signal 6 } 
	{ top_clusters_iso_outer_size_d0 sc_out sc_lv 3 signal 6 } 
	{ top_clusters_iso_outer_size_address1 sc_out sc_lv 3 signal 6 } 
	{ top_clusters_iso_outer_size_ce1 sc_out sc_logic 1 signal 6 } 
	{ top_clusters_iso_outer_size_q1 sc_in sc_lv 3 signal 6 } 
	{ top_clusters_valid_address0 sc_out sc_lv 3 signal 7 } 
	{ top_clusters_valid_ce0 sc_out sc_logic 1 signal 7 } 
	{ top_clusters_valid_we0 sc_out sc_logic 1 signal 7 } 
	{ top_clusters_valid_d0 sc_out sc_lv 1 signal 7 } 
	{ top_clusters_valid_address1 sc_out sc_lv 3 signal 7 } 
	{ top_clusters_valid_ce1 sc_out sc_logic 1 signal 7 } 
	{ top_clusters_valid_q1 sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "top_clusters_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "address0" }} , 
 	{ "name": "top_clusters_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "ce0" }} , 
 	{ "name": "top_clusters_et_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "we0" }} , 
 	{ "name": "top_clusters_et_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "d0" }} , 
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
 	{ "name": "top_clusters_eta_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "address1" }} , 
 	{ "name": "top_clusters_eta_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "ce1" }} , 
 	{ "name": "top_clusters_eta_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "q1" }} , 
 	{ "name": "top_clusters_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "address0" }} , 
 	{ "name": "top_clusters_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "ce0" }} , 
 	{ "name": "top_clusters_phi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "we0" }} , 
 	{ "name": "top_clusters_phi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "d0" }} , 
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
 	{ "name": "top_clusters_valid_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "address1" }} , 
 	{ "name": "top_clusters_valid_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "ce1" }} , 
 	{ "name": "top_clusters_valid_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 3 } } }
	top_clusters_et { ap_memory {  { top_clusters_et_address0 mem_address 1 3 }  { top_clusters_et_ce0 mem_ce 1 1 }  { top_clusters_et_we0 mem_we 1 1 }  { top_clusters_et_d0 mem_din 1 16 }  { top_clusters_et_address1 MemPortADDR2 1 3 }  { top_clusters_et_ce1 MemPortCE2 1 1 }  { top_clusters_et_q1 MemPortDOUT2 0 16 } } }
	top_clusters_isolation_et { ap_memory {  { top_clusters_isolation_et_address0 mem_address 1 3 }  { top_clusters_isolation_et_ce0 mem_ce 1 1 }  { top_clusters_isolation_et_we0 mem_we 1 1 }  { top_clusters_isolation_et_d0 mem_din 1 18 }  { top_clusters_isolation_et_address1 MemPortADDR2 1 3 }  { top_clusters_isolation_et_ce1 MemPortCE2 1 1 }  { top_clusters_isolation_et_q1 MemPortDOUT2 0 18 } } }
	top_clusters_eta { ap_memory {  { top_clusters_eta_address0 mem_address 1 3 }  { top_clusters_eta_ce0 mem_ce 1 1 }  { top_clusters_eta_we0 mem_we 1 1 }  { top_clusters_eta_d0 mem_din 1 5 }  { top_clusters_eta_address1 MemPortADDR2 1 3 }  { top_clusters_eta_ce1 MemPortCE2 1 1 }  { top_clusters_eta_q1 MemPortDOUT2 0 5 } } }
	top_clusters_phi { ap_memory {  { top_clusters_phi_address0 mem_address 1 3 }  { top_clusters_phi_ce0 mem_ce 1 1 }  { top_clusters_phi_we0 mem_we 1 1 }  { top_clusters_phi_d0 mem_din 1 6 }  { top_clusters_phi_address1 MemPortADDR2 1 3 }  { top_clusters_phi_ce1 MemPortCE2 1 1 }  { top_clusters_phi_q1 MemPortDOUT2 0 6 } } }
	top_clusters_window_size { ap_memory {  { top_clusters_window_size_address0 mem_address 1 3 }  { top_clusters_window_size_ce0 mem_ce 1 1 }  { top_clusters_window_size_we0 mem_we 1 1 }  { top_clusters_window_size_d0 mem_din 1 2 }  { top_clusters_window_size_address1 MemPortADDR2 1 3 }  { top_clusters_window_size_ce1 MemPortCE2 1 1 }  { top_clusters_window_size_q1 MemPortDOUT2 0 2 } } }
	top_clusters_iso_outer_size { ap_memory {  { top_clusters_iso_outer_size_address0 mem_address 1 3 }  { top_clusters_iso_outer_size_ce0 mem_ce 1 1 }  { top_clusters_iso_outer_size_we0 mem_we 1 1 }  { top_clusters_iso_outer_size_d0 mem_din 1 3 }  { top_clusters_iso_outer_size_address1 MemPortADDR2 1 3 }  { top_clusters_iso_outer_size_ce1 MemPortCE2 1 1 }  { top_clusters_iso_outer_size_q1 MemPortDOUT2 0 3 } } }
	top_clusters_valid { ap_memory {  { top_clusters_valid_address0 mem_address 1 3 }  { top_clusters_valid_ce0 mem_ce 1 1 }  { top_clusters_valid_we0 mem_we 1 1 }  { top_clusters_valid_d0 mem_din 1 1 }  { top_clusters_valid_address1 MemPortADDR2 1 3 }  { top_clusters_valid_ce1 MemPortCE2 1 1 }  { top_clusters_valid_q1 MemPortDOUT2 0 1 } } }
}
