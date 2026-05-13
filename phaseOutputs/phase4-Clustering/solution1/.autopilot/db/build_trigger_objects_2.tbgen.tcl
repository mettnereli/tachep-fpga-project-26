set moduleName build_trigger_objects_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {build_trigger_objects.2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_read int 20 regular  }
	{ p_read1 int 20 regular  }
	{ p_read2 int 20 regular  }
	{ p_read3 int 20 regular  }
	{ p_read4 int 20 regular  }
	{ p_read5 int 20 regular  }
	{ p_read6 int 20 regular  }
	{ p_read7 int 20 regular  }
	{ p_read8 int 20 regular  }
	{ p_read9 int 20 regular  }
	{ p_read10 int 20 regular  }
	{ p_read11 int 20 regular  }
	{ p_read12 int 20 regular  }
	{ p_read13 int 20 regular  }
	{ p_read14 int 20 regular  }
	{ p_read15 int 20 regular  }
	{ p_read16 int 6 regular  }
	{ p_read17 int 6 regular  }
	{ p_read18 int 6 regular  }
	{ p_read19 int 6 regular  }
	{ p_read20 int 6 regular  }
	{ p_read21 int 6 regular  }
	{ p_read22 int 6 regular  }
	{ p_read23 int 6 regular  }
	{ p_read24 int 6 regular  }
	{ p_read25 int 6 regular  }
	{ p_read26 int 6 regular  }
	{ p_read27 int 6 regular  }
	{ p_read28 int 6 regular  }
	{ p_read29 int 6 regular  }
	{ p_read30 int 6 regular  }
	{ p_read31 int 6 regular  }
	{ p_read32 int 4 regular  }
	{ p_read33 int 4 regular  }
	{ p_read34 int 4 regular  }
	{ p_read35 int 4 regular  }
	{ p_read36 int 4 regular  }
	{ p_read37 int 4 regular  }
	{ p_read38 int 4 regular  }
	{ p_read39 int 4 regular  }
	{ p_read40 int 1 regular  }
	{ p_read41 int 1 regular  }
	{ p_read42 int 1 regular  }
	{ p_read43 int 1 regular  }
	{ p_read44 int 1 regular  }
	{ p_read45 int 1 regular  }
	{ p_read46 int 1 regular  }
	{ p_read47 int 1 regular  }
	{ jet_objects_0 int 89 regular {pointer 1}  }
	{ jet_objects_1 int 89 regular {pointer 1}  }
	{ jet_objects_2 int 89 regular {pointer 1}  }
	{ jet_objects_3 int 89 regular {pointer 1}  }
	{ jet_objects_4 int 89 regular {pointer 1}  }
	{ jet_objects_5 int 89 regular {pointer 1}  }
	{ jet_objects_6 int 89 regular {pointer 1}  }
	{ jet_objects_7 int 89 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "jet_objects_0", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_1", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_2", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_3", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_4", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_5", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_6", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_7", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 20 signal 0 } 
	{ p_read1 sc_in sc_lv 20 signal 1 } 
	{ p_read2 sc_in sc_lv 20 signal 2 } 
	{ p_read3 sc_in sc_lv 20 signal 3 } 
	{ p_read4 sc_in sc_lv 20 signal 4 } 
	{ p_read5 sc_in sc_lv 20 signal 5 } 
	{ p_read6 sc_in sc_lv 20 signal 6 } 
	{ p_read7 sc_in sc_lv 20 signal 7 } 
	{ p_read8 sc_in sc_lv 20 signal 8 } 
	{ p_read9 sc_in sc_lv 20 signal 9 } 
	{ p_read10 sc_in sc_lv 20 signal 10 } 
	{ p_read11 sc_in sc_lv 20 signal 11 } 
	{ p_read12 sc_in sc_lv 20 signal 12 } 
	{ p_read13 sc_in sc_lv 20 signal 13 } 
	{ p_read14 sc_in sc_lv 20 signal 14 } 
	{ p_read15 sc_in sc_lv 20 signal 15 } 
	{ p_read16 sc_in sc_lv 6 signal 16 } 
	{ p_read17 sc_in sc_lv 6 signal 17 } 
	{ p_read18 sc_in sc_lv 6 signal 18 } 
	{ p_read19 sc_in sc_lv 6 signal 19 } 
	{ p_read20 sc_in sc_lv 6 signal 20 } 
	{ p_read21 sc_in sc_lv 6 signal 21 } 
	{ p_read22 sc_in sc_lv 6 signal 22 } 
	{ p_read23 sc_in sc_lv 6 signal 23 } 
	{ p_read24 sc_in sc_lv 6 signal 24 } 
	{ p_read25 sc_in sc_lv 6 signal 25 } 
	{ p_read26 sc_in sc_lv 6 signal 26 } 
	{ p_read27 sc_in sc_lv 6 signal 27 } 
	{ p_read28 sc_in sc_lv 6 signal 28 } 
	{ p_read29 sc_in sc_lv 6 signal 29 } 
	{ p_read30 sc_in sc_lv 6 signal 30 } 
	{ p_read31 sc_in sc_lv 6 signal 31 } 
	{ p_read32 sc_in sc_lv 4 signal 32 } 
	{ p_read33 sc_in sc_lv 4 signal 33 } 
	{ p_read34 sc_in sc_lv 4 signal 34 } 
	{ p_read35 sc_in sc_lv 4 signal 35 } 
	{ p_read36 sc_in sc_lv 4 signal 36 } 
	{ p_read37 sc_in sc_lv 4 signal 37 } 
	{ p_read38 sc_in sc_lv 4 signal 38 } 
	{ p_read39 sc_in sc_lv 4 signal 39 } 
	{ p_read40 sc_in sc_lv 1 signal 40 } 
	{ p_read41 sc_in sc_lv 1 signal 41 } 
	{ p_read42 sc_in sc_lv 1 signal 42 } 
	{ p_read43 sc_in sc_lv 1 signal 43 } 
	{ p_read44 sc_in sc_lv 1 signal 44 } 
	{ p_read45 sc_in sc_lv 1 signal 45 } 
	{ p_read46 sc_in sc_lv 1 signal 46 } 
	{ p_read47 sc_in sc_lv 1 signal 47 } 
	{ jet_objects_0 sc_out sc_lv 89 signal 48 } 
	{ jet_objects_0_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ jet_objects_1 sc_out sc_lv 89 signal 49 } 
	{ jet_objects_1_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ jet_objects_2 sc_out sc_lv 89 signal 50 } 
	{ jet_objects_2_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ jet_objects_3 sc_out sc_lv 89 signal 51 } 
	{ jet_objects_3_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ jet_objects_4 sc_out sc_lv 89 signal 52 } 
	{ jet_objects_4_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ jet_objects_5 sc_out sc_lv 89 signal 53 } 
	{ jet_objects_5_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ jet_objects_6 sc_out sc_lv 89 signal 54 } 
	{ jet_objects_6_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ jet_objects_7 sc_out sc_lv 89 signal 55 } 
	{ jet_objects_7_ap_vld sc_out sc_logic 1 outvld 55 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "jet_objects_0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_0", "role": "default" }} , 
 	{ "name": "jet_objects_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_0", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_1", "role": "default" }} , 
 	{ "name": "jet_objects_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_1", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_2", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_2", "role": "default" }} , 
 	{ "name": "jet_objects_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_2", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_3", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_3", "role": "default" }} , 
 	{ "name": "jet_objects_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_3", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_4", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_4", "role": "default" }} , 
 	{ "name": "jet_objects_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_4", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_5", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_5", "role": "default" }} , 
 	{ "name": "jet_objects_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_5", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_6", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_6", "role": "default" }} , 
 	{ "name": "jet_objects_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_6", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_7", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_7", "role": "default" }} , 
 	{ "name": "jet_objects_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_7", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "build_trigger_objects_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	build_trigger_objects_2 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		jet_objects_0 {Type O LastRead -1 FirstWrite 0}
		jet_objects_1 {Type O LastRead -1 FirstWrite 0}
		jet_objects_2 {Type O LastRead -1 FirstWrite 0}
		jet_objects_3 {Type O LastRead -1 FirstWrite 0}
		jet_objects_4 {Type O LastRead -1 FirstWrite 0}
		jet_objects_5 {Type O LastRead -1 FirstWrite 0}
		jet_objects_6 {Type O LastRead -1 FirstWrite 0}
		jet_objects_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 20 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 20 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 20 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 20 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 20 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 20 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 20 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 20 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 20 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 20 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 20 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 20 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 20 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 20 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 20 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 20 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 6 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 6 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 6 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 6 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 6 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 6 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 6 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 6 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 6 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 6 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 6 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 6 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 6 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 6 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 6 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 6 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 4 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 4 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 4 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 4 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 4 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 4 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 4 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 4 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 1 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 1 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 1 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 1 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 1 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 1 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 1 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 1 } } }
	jet_objects_0 { ap_vld {  { jet_objects_0 out_data 1 89 }  { jet_objects_0_ap_vld out_vld 1 1 } } }
	jet_objects_1 { ap_vld {  { jet_objects_1 out_data 1 89 }  { jet_objects_1_ap_vld out_vld 1 1 } } }
	jet_objects_2 { ap_vld {  { jet_objects_2 out_data 1 89 }  { jet_objects_2_ap_vld out_vld 1 1 } } }
	jet_objects_3 { ap_vld {  { jet_objects_3 out_data 1 89 }  { jet_objects_3_ap_vld out_vld 1 1 } } }
	jet_objects_4 { ap_vld {  { jet_objects_4 out_data 1 89 }  { jet_objects_4_ap_vld out_vld 1 1 } } }
	jet_objects_5 { ap_vld {  { jet_objects_5 out_data 1 89 }  { jet_objects_5_ap_vld out_vld 1 1 } } }
	jet_objects_6 { ap_vld {  { jet_objects_6 out_data 1 89 }  { jet_objects_6_ap_vld out_vld 1 1 } } }
	jet_objects_7 { ap_vld {  { jet_objects_7 out_data 1 89 }  { jet_objects_7_ap_vld out_vld 1 1 } } }
}
