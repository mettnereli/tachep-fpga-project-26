set moduleName find_clusters_stream_3_5_s
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
set C_modelName {find_clusters_stream<3, 5>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict towers { MEM_WIDTH 12 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ towers int 12 regular {bram 1800 { 1 1 } 1 1 }  }
	{ seed_threshold int 12 regular  }
	{ cluster_threshold int 20 regular  }
	{ cluster_stream int 61 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "towers", "interface" : "bram", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "cluster_stream", "interface" : "fifo", "bitwidth" : 61, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cluster_stream_din sc_out sc_lv 61 signal 3 } 
	{ cluster_stream_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ cluster_stream_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ cluster_stream_full_n sc_in sc_logic 1 signal 3 } 
	{ cluster_stream_write sc_out sc_logic 1 signal 3 } 
	{ towers_Addr_A sc_out sc_lv 32 signal 0 } 
	{ towers_EN_A sc_out sc_logic 1 signal 0 } 
	{ towers_WEN_A sc_out sc_lv 2 signal 0 } 
	{ towers_Din_A sc_out sc_lv 16 signal 0 } 
	{ towers_Dout_A sc_in sc_lv 16 signal 0 } 
	{ towers_Addr_B sc_out sc_lv 32 signal 0 } 
	{ towers_EN_B sc_out sc_logic 1 signal 0 } 
	{ towers_WEN_B sc_out sc_lv 2 signal 0 } 
	{ towers_Din_B sc_out sc_lv 16 signal 0 } 
	{ towers_Dout_B sc_in sc_lv 16 signal 0 } 
	{ seed_threshold sc_in sc_lv 12 signal 1 } 
	{ cluster_threshold sc_in sc_lv 20 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cluster_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "cluster_stream", "role": "din" }} , 
 	{ "name": "cluster_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cluster_stream", "role": "num_data_valid" }} , 
 	{ "name": "cluster_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cluster_stream", "role": "fifo_cap" }} , 
 	{ "name": "cluster_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cluster_stream", "role": "full_n" }} , 
 	{ "name": "cluster_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cluster_stream", "role": "write" }} , 
 	{ "name": "towers_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "towers", "role": "Addr_A" }} , 
 	{ "name": "towers_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "EN_A" }} , 
 	{ "name": "towers_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "towers", "role": "WEN_A" }} , 
 	{ "name": "towers_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Din_A" }} , 
 	{ "name": "towers_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Dout_A" }} , 
 	{ "name": "towers_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "towers", "role": "Addr_B" }} , 
 	{ "name": "towers_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "EN_B" }} , 
 	{ "name": "towers_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "towers", "role": "WEN_B" }} , 
 	{ "name": "towers_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Din_B" }} , 
 	{ "name": "towers_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Dout_B" }} , 
 	{ "name": "seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_threshold", "role": "default" }} , 
 	{ "name": "cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "cluster_threshold", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "find_clusters_stream_3_5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20282", "EstimateLatencyMax" : "20282",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "towers", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cluster_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_288_1_VITIS_LOOP_289_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	find_clusters_stream_3_5_s {
		towers {Type I LastRead 13 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_stream {Type O LastRead -1 FirstWrite 13}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20282", "Max" : "20282"}
	, {"Name" : "Interval", "Min" : "20282", "Max" : "20282"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	towers { bram {  { towers_Addr_A MemPortADDR2 1 32 }  { towers_EN_A MemPortCE2 1 1 }  { towers_WEN_A MemPortWE2 1 2 }  { towers_Din_A MemPortDIN2 1 16 }  { towers_Dout_A MemPortDOUT2 0 16 }  { towers_Addr_B MemPortADDR2 1 32 }  { towers_EN_B MemPortCE2 1 1 }  { towers_WEN_B MemPortWE2 1 2 }  { towers_Din_B MemPortDIN2 1 16 }  { towers_Dout_B MemPortDOUT2 0 16 } } }
	seed_threshold { ap_none {  { seed_threshold in_data 0 12 } } }
	cluster_threshold { ap_none {  { cluster_threshold in_data 0 20 } } }
	cluster_stream { ap_fifo {  { cluster_stream_din fifo_data_in 1 61 }  { cluster_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { cluster_stream_fifo_cap fifo_update 0 7 }  { cluster_stream_full_n fifo_status 0 1 }  { cluster_stream_write fifo_port_we 1 1 } } }
}
