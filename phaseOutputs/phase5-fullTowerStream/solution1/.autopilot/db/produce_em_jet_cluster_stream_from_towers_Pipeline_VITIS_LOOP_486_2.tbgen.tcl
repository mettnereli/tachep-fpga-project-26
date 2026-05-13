set moduleName produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2
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
set C_modelName {produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict linebuf_6 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf_5 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf_4 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf_3 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf_2 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf_1 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ local_ht int 24 regular  }
	{ linebuf_6 int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ linebuf_5 int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ linebuf_4 int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ linebuf_3 int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ linebuf_2 int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ linebuf_1 int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ linebuf int 12 regular {array 60 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ tower_in int 16 regular {axi_s 0 volatile  { tower_in Data } }  }
	{ empty_25 int 3 regular  }
	{ empty int 1 regular  }
	{ local_ht_1_out int 24 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "local_ht", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_6", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf_5", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf_4", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tower_in", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "empty_25", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "local_ht_1_out", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tower_in_TVALID sc_in sc_logic 1 invld 8 } 
	{ local_ht sc_in sc_lv 24 signal 0 } 
	{ linebuf_6_address0 sc_out sc_lv 6 signal 1 } 
	{ linebuf_6_ce0 sc_out sc_logic 1 signal 1 } 
	{ linebuf_6_we0 sc_out sc_logic 1 signal 1 } 
	{ linebuf_6_d0 sc_out sc_lv 12 signal 1 } 
	{ linebuf_5_address0 sc_out sc_lv 6 signal 2 } 
	{ linebuf_5_ce0 sc_out sc_logic 1 signal 2 } 
	{ linebuf_5_we0 sc_out sc_logic 1 signal 2 } 
	{ linebuf_5_d0 sc_out sc_lv 12 signal 2 } 
	{ linebuf_4_address0 sc_out sc_lv 6 signal 3 } 
	{ linebuf_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ linebuf_4_we0 sc_out sc_logic 1 signal 3 } 
	{ linebuf_4_d0 sc_out sc_lv 12 signal 3 } 
	{ linebuf_3_address0 sc_out sc_lv 6 signal 4 } 
	{ linebuf_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_3_we0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_3_d0 sc_out sc_lv 12 signal 4 } 
	{ linebuf_2_address0 sc_out sc_lv 6 signal 5 } 
	{ linebuf_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ linebuf_2_we0 sc_out sc_logic 1 signal 5 } 
	{ linebuf_2_d0 sc_out sc_lv 12 signal 5 } 
	{ linebuf_1_address0 sc_out sc_lv 6 signal 6 } 
	{ linebuf_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ linebuf_1_we0 sc_out sc_logic 1 signal 6 } 
	{ linebuf_1_d0 sc_out sc_lv 12 signal 6 } 
	{ linebuf_address0 sc_out sc_lv 6 signal 7 } 
	{ linebuf_ce0 sc_out sc_logic 1 signal 7 } 
	{ linebuf_we0 sc_out sc_logic 1 signal 7 } 
	{ linebuf_d0 sc_out sc_lv 12 signal 7 } 
	{ tower_in_TDATA sc_in sc_lv 16 signal 8 } 
	{ tower_in_TREADY sc_out sc_logic 1 inacc 8 } 
	{ empty_25 sc_in sc_lv 3 signal 9 } 
	{ empty sc_in sc_lv 1 signal 10 } 
	{ local_ht_1_out sc_out sc_lv 24 signal 11 } 
	{ local_ht_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tower_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tower_in", "role": "TVALID" }} , 
 	{ "name": "local_ht", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "local_ht", "role": "default" }} , 
 	{ "name": "linebuf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address0" }} , 
 	{ "name": "linebuf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce0" }} , 
 	{ "name": "linebuf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "we0" }} , 
 	{ "name": "linebuf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "d0" }} , 
 	{ "name": "linebuf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address0" }} , 
 	{ "name": "linebuf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce0" }} , 
 	{ "name": "linebuf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "we0" }} , 
 	{ "name": "linebuf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "d0" }} , 
 	{ "name": "linebuf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address0" }} , 
 	{ "name": "linebuf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce0" }} , 
 	{ "name": "linebuf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "we0" }} , 
 	{ "name": "linebuf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "d0" }} , 
 	{ "name": "linebuf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address0" }} , 
 	{ "name": "linebuf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce0" }} , 
 	{ "name": "linebuf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "we0" }} , 
 	{ "name": "linebuf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "d0" }} , 
 	{ "name": "linebuf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address0" }} , 
 	{ "name": "linebuf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce0" }} , 
 	{ "name": "linebuf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "we0" }} , 
 	{ "name": "linebuf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "d0" }} , 
 	{ "name": "linebuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address0" }} , 
 	{ "name": "linebuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce0" }} , 
 	{ "name": "linebuf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "we0" }} , 
 	{ "name": "linebuf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "d0" }} , 
 	{ "name": "linebuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address0" }} , 
 	{ "name": "linebuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce0" }} , 
 	{ "name": "linebuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "we0" }} , 
 	{ "name": "linebuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "d0" }} , 
 	{ "name": "tower_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tower_in", "role": "TDATA" }} , 
 	{ "name": "tower_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "tower_in", "role": "TREADY" }} , 
 	{ "name": "empty_25", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_25", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "local_ht_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "local_ht_1_out", "role": "default" }} , 
 	{ "name": "local_ht_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_ht_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "62",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_ht", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tower_in", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tower_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_ht_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_486_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2 {
		local_ht {Type I LastRead 0 FirstWrite -1}
		linebuf_6 {Type O LastRead -1 FirstWrite 0}
		linebuf_5 {Type O LastRead -1 FirstWrite 0}
		linebuf_4 {Type O LastRead -1 FirstWrite 0}
		linebuf_3 {Type O LastRead -1 FirstWrite 0}
		linebuf_2 {Type O LastRead -1 FirstWrite 0}
		linebuf_1 {Type O LastRead -1 FirstWrite 0}
		linebuf {Type O LastRead -1 FirstWrite 0}
		tower_in {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		local_ht_1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "62", "Max" : "62"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "62"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	local_ht { ap_none {  { local_ht in_data 0 24 } } }
	linebuf_6 { ap_memory {  { linebuf_6_address0 mem_address 1 6 }  { linebuf_6_ce0 mem_ce 1 1 }  { linebuf_6_we0 mem_we 1 1 }  { linebuf_6_d0 mem_din 1 12 } } }
	linebuf_5 { ap_memory {  { linebuf_5_address0 mem_address 1 6 }  { linebuf_5_ce0 mem_ce 1 1 }  { linebuf_5_we0 mem_we 1 1 }  { linebuf_5_d0 mem_din 1 12 } } }
	linebuf_4 { ap_memory {  { linebuf_4_address0 mem_address 1 6 }  { linebuf_4_ce0 mem_ce 1 1 }  { linebuf_4_we0 mem_we 1 1 }  { linebuf_4_d0 mem_din 1 12 } } }
	linebuf_3 { ap_memory {  { linebuf_3_address0 mem_address 1 6 }  { linebuf_3_ce0 mem_ce 1 1 }  { linebuf_3_we0 mem_we 1 1 }  { linebuf_3_d0 mem_din 1 12 } } }
	linebuf_2 { ap_memory {  { linebuf_2_address0 mem_address 1 6 }  { linebuf_2_ce0 mem_ce 1 1 }  { linebuf_2_we0 mem_we 1 1 }  { linebuf_2_d0 mem_din 1 12 } } }
	linebuf_1 { ap_memory {  { linebuf_1_address0 mem_address 1 6 }  { linebuf_1_ce0 mem_ce 1 1 }  { linebuf_1_we0 mem_we 1 1 }  { linebuf_1_d0 mem_din 1 12 } } }
	linebuf { ap_memory {  { linebuf_address0 mem_address 1 6 }  { linebuf_ce0 mem_ce 1 1 }  { linebuf_we0 mem_we 1 1 }  { linebuf_d0 mem_din 1 12 } } }
	tower_in { axis {  { tower_in_TVALID in_vld 0 1 }  { tower_in_TDATA in_data 0 16 }  { tower_in_TREADY in_acc 1 1 } } }
	empty_25 { ap_none {  { empty_25 in_data 0 3 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	local_ht_1_out { ap_vld {  { local_ht_1_out out_data 1 24 }  { local_ht_1_out_ap_vld out_vld 1 1 } } }
}
