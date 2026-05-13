set moduleName select_top_n_Pipeline_VITIS_LOOP_128_3
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
set C_modelName {select_top_n_Pipeline_VITIS_LOOP_128_3}
set C_modelType { int 3 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict top_clusters_et { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_eta { MEM_WIDTH 5 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_phi { MEM_WIDTH 6 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict top_clusters_valid { MEM_WIDTH 1 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ candidate_et int 16 regular  }
	{ top_clusters_et int 16 regular {array 8 { 1 3 } 1 1 }  }
	{ top_clusters_eta int 5 regular {array 8 { 1 3 } 1 1 }  }
	{ top_clusters_phi int 6 regular {array 8 { 1 3 } 1 1 }  }
	{ top_clusters_valid int 1 regular {array 8 { 1 3 } 1 1 }  }
	{ candidate_eta int 5 regular  }
	{ candidate_phi int 6 regular  }
	{ j_out int 3 regular {pointer 1}  }
	{ zext_ln128_out int 3 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "candidate_et", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "top_clusters_et", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "top_clusters_eta", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "top_clusters_phi", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "top_clusters_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "candidate_eta", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "candidate_phi", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "j_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln128_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 3} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ candidate_et sc_in sc_lv 16 signal 0 } 
	{ top_clusters_et_address0 sc_out sc_lv 3 signal 1 } 
	{ top_clusters_et_ce0 sc_out sc_logic 1 signal 1 } 
	{ top_clusters_et_q0 sc_in sc_lv 16 signal 1 } 
	{ top_clusters_eta_address0 sc_out sc_lv 3 signal 2 } 
	{ top_clusters_eta_ce0 sc_out sc_logic 1 signal 2 } 
	{ top_clusters_eta_q0 sc_in sc_lv 5 signal 2 } 
	{ top_clusters_phi_address0 sc_out sc_lv 3 signal 3 } 
	{ top_clusters_phi_ce0 sc_out sc_logic 1 signal 3 } 
	{ top_clusters_phi_q0 sc_in sc_lv 6 signal 3 } 
	{ top_clusters_valid_address0 sc_out sc_lv 3 signal 4 } 
	{ top_clusters_valid_ce0 sc_out sc_logic 1 signal 4 } 
	{ top_clusters_valid_q0 sc_in sc_lv 1 signal 4 } 
	{ candidate_eta sc_in sc_lv 5 signal 5 } 
	{ candidate_phi sc_in sc_lv 6 signal 6 } 
	{ j_out sc_out sc_lv 3 signal 7 } 
	{ j_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ zext_ln128_out sc_out sc_lv 3 signal 8 } 
	{ zext_ln128_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ ap_return sc_out sc_lv 3 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "candidate_et", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "candidate_et", "role": "default" }} , 
 	{ "name": "top_clusters_et_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "address0" }} , 
 	{ "name": "top_clusters_et_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "ce0" }} , 
 	{ "name": "top_clusters_et_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "top_clusters_et", "role": "q0" }} , 
 	{ "name": "top_clusters_eta_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "address0" }} , 
 	{ "name": "top_clusters_eta_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "ce0" }} , 
 	{ "name": "top_clusters_eta_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "top_clusters_eta", "role": "q0" }} , 
 	{ "name": "top_clusters_phi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "address0" }} , 
 	{ "name": "top_clusters_phi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "ce0" }} , 
 	{ "name": "top_clusters_phi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "top_clusters_phi", "role": "q0" }} , 
 	{ "name": "top_clusters_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "address0" }} , 
 	{ "name": "top_clusters_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "ce0" }} , 
 	{ "name": "top_clusters_valid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "top_clusters_valid", "role": "q0" }} , 
 	{ "name": "candidate_eta", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "candidate_eta", "role": "default" }} , 
 	{ "name": "candidate_phi", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "candidate_phi", "role": "default" }} , 
 	{ "name": "j_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "j_out", "role": "default" }} , 
 	{ "name": "j_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "j_out", "role": "ap_vld" }} , 
 	{ "name": "zext_ln128_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln128_out", "role": "default" }} , 
 	{ "name": "zext_ln128_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "zext_ln128_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7", "ap_ST_fsm_state8", "ap_ST_fsm_state9", "ap_ST_fsm_state10", "ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	select_top_n_Pipeline_VITIS_LOOP_128_3 {
		candidate_et {Type I LastRead 0 FirstWrite -1}
		top_clusters_et {Type I LastRead 2 FirstWrite -1}
		top_clusters_eta {Type I LastRead 3 FirstWrite -1}
		top_clusters_phi {Type I LastRead 4 FirstWrite -1}
		top_clusters_valid {Type I LastRead 1 FirstWrite -1}
		candidate_eta {Type I LastRead 0 FirstWrite -1}
		candidate_phi {Type I LastRead 0 FirstWrite -1}
		j_out {Type O LastRead -1 FirstWrite 2}
		zext_ln128_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "47"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "47"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	candidate_et { ap_none {  { candidate_et in_data 0 16 } } }
	top_clusters_et { ap_memory {  { top_clusters_et_address0 mem_address 1 3 }  { top_clusters_et_ce0 mem_ce 1 1 }  { top_clusters_et_q0 mem_dout 0 16 } } }
	top_clusters_eta { ap_memory {  { top_clusters_eta_address0 mem_address 1 3 }  { top_clusters_eta_ce0 mem_ce 1 1 }  { top_clusters_eta_q0 mem_dout 0 5 } } }
	top_clusters_phi { ap_memory {  { top_clusters_phi_address0 mem_address 1 3 }  { top_clusters_phi_ce0 mem_ce 1 1 }  { top_clusters_phi_q0 mem_dout 0 6 } } }
	top_clusters_valid { ap_memory {  { top_clusters_valid_address0 mem_address 1 3 }  { top_clusters_valid_ce0 mem_ce 1 1 }  { top_clusters_valid_q0 mem_dout 0 1 } } }
	candidate_eta { ap_none {  { candidate_eta in_data 0 5 } } }
	candidate_phi { ap_none {  { candidate_phi in_data 0 6 } } }
	j_out { ap_vld {  { j_out out_data 1 3 }  { j_out_ap_vld out_vld 1 1 } } }
	zext_ln128_out { ap_vld {  { zext_ln128_out out_data 1 3 }  { zext_ln128_out_ap_vld out_vld 1 1 } } }
}
