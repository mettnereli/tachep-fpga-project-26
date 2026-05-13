set moduleName calo_trigger_ref
set isTopModule 1
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
set C_modelName {calo_trigger_ref}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict grid { MEM_WIDTH 12 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ grid int 12 regular {bram 1800 { 1 1 } 1 1 }  }
	{ seed_threshold int 12 regular {axi_slave 0}  }
	{ cluster_threshold int 20 regular {axi_slave 0}  }
	{ objects_0 int 89 regular {pointer 1}  }
	{ objects_1 int 89 regular {pointer 1}  }
	{ objects_2 int 89 regular {pointer 1}  }
	{ objects_3 int 89 regular {pointer 1}  }
	{ objects_4 int 89 regular {pointer 1}  }
	{ objects_5 int 89 regular {pointer 1}  }
	{ objects_6 int 89 regular {pointer 1}  }
	{ objects_7 int 89 regular {pointer 1}  }
	{ ht int 24 regular {axi_slave 1}  }
	{ num_clusters int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "grid", "interface" : "bram", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "seed_threshold", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 12, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "cluster_threshold", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 20, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "objects_0", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_1", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_2", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_3", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_4", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_5", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_6", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "objects_7", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ht", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 24, "direction" : "WRITEONLY", "offset" : {"out":32}, "offset_end" : {"out":39}} , 
 	{ "Name" : "num_clusters", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":48}, "offset_end" : {"out":55}} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ grid_Addr_A sc_out sc_lv 32 signal 0 } 
	{ grid_EN_A sc_out sc_logic 1 signal 0 } 
	{ grid_WEN_A sc_out sc_lv 2 signal 0 } 
	{ grid_Din_A sc_out sc_lv 16 signal 0 } 
	{ grid_Dout_A sc_in sc_lv 16 signal 0 } 
	{ grid_Clk_A sc_out sc_logic 1 signal 0 } 
	{ grid_Rst_A sc_out sc_logic 1 signal 0 } 
	{ grid_Addr_B sc_out sc_lv 32 signal 0 } 
	{ grid_EN_B sc_out sc_logic 1 signal 0 } 
	{ grid_WEN_B sc_out sc_lv 2 signal 0 } 
	{ grid_Din_B sc_out sc_lv 16 signal 0 } 
	{ grid_Dout_B sc_in sc_lv 16 signal 0 } 
	{ grid_Clk_B sc_out sc_logic 1 signal 0 } 
	{ grid_Rst_B sc_out sc_logic 1 signal 0 } 
	{ objects_0 sc_out sc_lv 89 signal 3 } 
	{ objects_0_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ objects_1 sc_out sc_lv 89 signal 4 } 
	{ objects_1_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ objects_2 sc_out sc_lv 89 signal 5 } 
	{ objects_2_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ objects_3 sc_out sc_lv 89 signal 6 } 
	{ objects_3_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ objects_4 sc_out sc_lv 89 signal 7 } 
	{ objects_4_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ objects_5 sc_out sc_lv 89 signal 8 } 
	{ objects_5_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ objects_6 sc_out sc_lv 89 signal 9 } 
	{ objects_6_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ objects_7 sc_out sc_lv 89 signal 10 } 
	{ objects_7_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"calo_trigger_ref","role":"start","value":"0","valid_bit":"0"},{"name":"calo_trigger_ref","role":"continue","value":"0","valid_bit":"4"},{"name":"calo_trigger_ref","role":"auto_start","value":"0","valid_bit":"7"},{"name":"seed_threshold","role":"data","value":"16"},{"name":"cluster_threshold","role":"data","value":"24"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"calo_trigger_ref","role":"start","value":"0","valid_bit":"0"},{"name":"calo_trigger_ref","role":"done","value":"0","valid_bit":"1"},{"name":"calo_trigger_ref","role":"idle","value":"0","valid_bit":"2"},{"name":"calo_trigger_ref","role":"ready","value":"0","valid_bit":"3"},{"name":"calo_trigger_ref","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ht","role":"data","value":"32"}, {"name":"ht","role":"valid","value":"36","valid_bit":"0"},{"name":"num_clusters","role":"data","value":"48"}, {"name":"num_clusters","role":"valid","value":"52","valid_bit":"0"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "grid_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid", "role": "Addr_A" }} , 
 	{ "name": "grid_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "EN_A" }} , 
 	{ "name": "grid_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grid", "role": "WEN_A" }} , 
 	{ "name": "grid_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Din_A" }} , 
 	{ "name": "grid_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Dout_A" }} , 
 	{ "name": "grid_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "Clk_A" }} , 
 	{ "name": "grid_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "Rst_A" }} , 
 	{ "name": "grid_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid", "role": "Addr_B" }} , 
 	{ "name": "grid_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "EN_B" }} , 
 	{ "name": "grid_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grid", "role": "WEN_B" }} , 
 	{ "name": "grid_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Din_B" }} , 
 	{ "name": "grid_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grid", "role": "Dout_B" }} , 
 	{ "name": "grid_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "Clk_B" }} , 
 	{ "name": "grid_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "Rst_B" }} , 
 	{ "name": "objects_0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_0", "role": "default" }} , 
 	{ "name": "objects_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_0", "role": "ap_vld" }} , 
 	{ "name": "objects_1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_1", "role": "default" }} , 
 	{ "name": "objects_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_1", "role": "ap_vld" }} , 
 	{ "name": "objects_2", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_2", "role": "default" }} , 
 	{ "name": "objects_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_2", "role": "ap_vld" }} , 
 	{ "name": "objects_3", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_3", "role": "default" }} , 
 	{ "name": "objects_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_3", "role": "ap_vld" }} , 
 	{ "name": "objects_4", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_4", "role": "default" }} , 
 	{ "name": "objects_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_4", "role": "ap_vld" }} , 
 	{ "name": "objects_5", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_5", "role": "default" }} , 
 	{ "name": "objects_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_5", "role": "ap_vld" }} , 
 	{ "name": "objects_6", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_6", "role": "default" }} , 
 	{ "name": "objects_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_6", "role": "ap_vld" }} , 
 	{ "name": "objects_7", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects_7", "role": "default" }} , 
 	{ "name": "objects_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "objects_7", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "17"],
		"CDFG" : "calo_trigger_ref",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25694", "EstimateLatencyMax" : "47294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "grid", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_find_clusters_3_5_s_fu_278", "Port" : "grid", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "objects_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "HT_ETA_HT_PHI", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state4"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state7"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_et_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_isolation_et_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_eta_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_phi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_window_size_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_iso_outer_size_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_valid_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_find_clusters_3_5_s_fu_278", "Parent" : "0", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_clusters_3_5_s_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302.sparsemux_15_3_20_1_1_U10", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302.sparsemux_15_3_20_1_1_U11", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302.sparsemux_15_3_6_1_1_U12", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302.sparsemux_15_3_6_1_1_U13", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302.sparsemux_15_3_4_1_1_U14", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_302.sparsemux_15_3_1_1_1_U15", "Parent" : "10"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calo_trigger_ref {
		grid {Type I LastRead 18 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		objects_0 {Type O LastRead -1 FirstWrite 3}
		objects_1 {Type O LastRead -1 FirstWrite 3}
		objects_2 {Type O LastRead -1 FirstWrite 3}
		objects_3 {Type O LastRead -1 FirstWrite 3}
		objects_4 {Type O LastRead -1 FirstWrite 3}
		objects_5 {Type O LastRead -1 FirstWrite 3}
		objects_6 {Type O LastRead -1 FirstWrite 3}
		objects_7 {Type O LastRead -1 FirstWrite 3}
		ht {Type O LastRead -1 FirstWrite 6}
		num_clusters {Type O LastRead -1 FirstWrite 6}}
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
		clusters_valid {Type O LastRead -1 FirstWrite 6}}
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
	{"Name" : "Latency", "Min" : "25694", "Max" : "47294"}
	, {"Name" : "Interval", "Min" : "25695", "Max" : "47295"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	grid { bram {  { grid_Addr_A MemPortADDR2 1 32 }  { grid_EN_A MemPortCE2 1 1 }  { grid_WEN_A MemPortWE2 1 2 }  { grid_Din_A MemPortDIN2 1 16 }  { grid_Dout_A MemPortDOUT2 0 16 }  { grid_Clk_A mem_clk 1 1 }  { grid_Rst_A mem_rst 1 1 }  { grid_Addr_B MemPortADDR2 1 32 }  { grid_EN_B MemPortCE2 1 1 }  { grid_WEN_B MemPortWE2 1 2 }  { grid_Din_B MemPortDIN2 1 16 }  { grid_Dout_B MemPortDOUT2 0 16 }  { grid_Clk_B mem_clk 1 1 }  { grid_Rst_B mem_rst 1 1 } } }
	objects_0 { ap_vld {  { objects_0 out_data 1 89 }  { objects_0_ap_vld out_vld 1 1 } } }
	objects_1 { ap_vld {  { objects_1 out_data 1 89 }  { objects_1_ap_vld out_vld 1 1 } } }
	objects_2 { ap_vld {  { objects_2 out_data 1 89 }  { objects_2_ap_vld out_vld 1 1 } } }
	objects_3 { ap_vld {  { objects_3 out_data 1 89 }  { objects_3_ap_vld out_vld 1 1 } } }
	objects_4 { ap_vld {  { objects_4 out_data 1 89 }  { objects_4_ap_vld out_vld 1 1 } } }
	objects_5 { ap_vld {  { objects_5 out_data 1 89 }  { objects_5_ap_vld out_vld 1 1 } } }
	objects_6 { ap_vld {  { objects_6 out_data 1 89 }  { objects_6_ap_vld out_vld 1 1 } } }
	objects_7 { ap_vld {  { objects_7 out_data 1 89 }  { objects_7_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
