set moduleName traceback
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {traceback}
set C_modelType { int 32 }
set C_modelArgList {
	{ seq1 int 8 regular {array 100 { 1 3 } 1 1 }  }
	{ seq2 int 8 regular {array 100 { 1 3 } 1 1 }  }
	{ H int 32 regular {array 10201 { 1 1 } 1 1 }  }
	{ pos_0_read int 32 regular  }
	{ pos_1_read int 32 regular  }
	{ aligned_seq1 int 8 regular {array 100 { 2 3 } 1 1 }  }
	{ aligned_seq2 int 8 regular {array 100 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seq1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "seq2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "H", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pos_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pos_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aligned_seq1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "aligned_seq2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seq1_address0 sc_out sc_lv 7 signal 0 } 
	{ seq1_ce0 sc_out sc_logic 1 signal 0 } 
	{ seq1_q0 sc_in sc_lv 8 signal 0 } 
	{ seq2_address0 sc_out sc_lv 7 signal 1 } 
	{ seq2_ce0 sc_out sc_logic 1 signal 1 } 
	{ seq2_q0 sc_in sc_lv 8 signal 1 } 
	{ H_address0 sc_out sc_lv 14 signal 2 } 
	{ H_ce0 sc_out sc_logic 1 signal 2 } 
	{ H_q0 sc_in sc_lv 32 signal 2 } 
	{ H_address1 sc_out sc_lv 14 signal 2 } 
	{ H_ce1 sc_out sc_logic 1 signal 2 } 
	{ H_q1 sc_in sc_lv 32 signal 2 } 
	{ pos_0_read sc_in sc_lv 32 signal 3 } 
	{ pos_1_read sc_in sc_lv 32 signal 4 } 
	{ aligned_seq1_address0 sc_out sc_lv 7 signal 5 } 
	{ aligned_seq1_ce0 sc_out sc_logic 1 signal 5 } 
	{ aligned_seq1_we0 sc_out sc_logic 1 signal 5 } 
	{ aligned_seq1_d0 sc_out sc_lv 8 signal 5 } 
	{ aligned_seq1_q0 sc_in sc_lv 8 signal 5 } 
	{ aligned_seq2_address0 sc_out sc_lv 7 signal 6 } 
	{ aligned_seq2_ce0 sc_out sc_logic 1 signal 6 } 
	{ aligned_seq2_we0 sc_out sc_logic 1 signal 6 } 
	{ aligned_seq2_d0 sc_out sc_lv 8 signal 6 } 
	{ aligned_seq2_q0 sc_in sc_lv 8 signal 6 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seq1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seq1", "role": "address0" }} , 
 	{ "name": "seq1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seq1", "role": "ce0" }} , 
 	{ "name": "seq1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seq1", "role": "q0" }} , 
 	{ "name": "seq2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seq2", "role": "address0" }} , 
 	{ "name": "seq2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seq2", "role": "ce0" }} , 
 	{ "name": "seq2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seq2", "role": "q0" }} , 
 	{ "name": "H_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "H", "role": "address0" }} , 
 	{ "name": "H_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce0" }} , 
 	{ "name": "H_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "q0" }} , 
 	{ "name": "H_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "H", "role": "address1" }} , 
 	{ "name": "H_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce1" }} , 
 	{ "name": "H_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "q1" }} , 
 	{ "name": "pos_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pos_0_read", "role": "default" }} , 
 	{ "name": "pos_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pos_1_read", "role": "default" }} , 
 	{ "name": "aligned_seq1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "address0" }} , 
 	{ "name": "aligned_seq1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "ce0" }} , 
 	{ "name": "aligned_seq1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "we0" }} , 
 	{ "name": "aligned_seq1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "d0" }} , 
 	{ "name": "aligned_seq1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "q0" }} , 
 	{ "name": "aligned_seq2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "address0" }} , 
 	{ "name": "aligned_seq2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "ce0" }} , 
 	{ "name": "aligned_seq2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "we0" }} , 
 	{ "name": "aligned_seq2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "d0" }} , 
 	{ "name": "aligned_seq2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "traceback",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1103", "EstimateLatencyMax" : "1105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seq1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seq2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "aligned_seq1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "aligned_seq2", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SmithWaterman_mulbkb_U6", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SmithWaterman_mulbkb_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	traceback {
		seq1 {Type I LastRead 2 FirstWrite -1}
		seq2 {Type I LastRead 2 FirstWrite -1}
		H {Type I LastRead 4 FirstWrite -1}
		pos_0_read {Type I LastRead 0 FirstWrite -1}
		pos_1_read {Type I LastRead 0 FirstWrite -1}
		aligned_seq1 {Type IO LastRead 4 FirstWrite 2}
		aligned_seq2 {Type IO LastRead 5 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1103", "Max" : "1105"}
	, {"Name" : "Interval", "Min" : "1103", "Max" : "1105"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seq1 { ap_memory {  { seq1_address0 mem_address 1 7 }  { seq1_ce0 mem_ce 1 1 }  { seq1_q0 mem_dout 0 8 } } }
	seq2 { ap_memory {  { seq2_address0 mem_address 1 7 }  { seq2_ce0 mem_ce 1 1 }  { seq2_q0 mem_dout 0 8 } } }
	H { ap_memory {  { H_address0 mem_address 1 14 }  { H_ce0 mem_ce 1 1 }  { H_q0 mem_dout 0 32 }  { H_address1 MemPortADDR2 1 14 }  { H_ce1 MemPortCE2 1 1 }  { H_q1 MemPortDOUT2 0 32 } } }
	pos_0_read { ap_none {  { pos_0_read in_data 0 32 } } }
	pos_1_read { ap_none {  { pos_1_read in_data 0 32 } } }
	aligned_seq1 { ap_memory {  { aligned_seq1_address0 mem_address 1 7 }  { aligned_seq1_ce0 mem_ce 1 1 }  { aligned_seq1_we0 mem_we 1 1 }  { aligned_seq1_d0 mem_din 1 8 }  { aligned_seq1_q0 mem_dout 0 8 } } }
	aligned_seq2 { ap_memory {  { aligned_seq2_address0 mem_address 1 7 }  { aligned_seq2_ce0 mem_ce 1 1 }  { aligned_seq2_we0 mem_we 1 1 }  { aligned_seq2_d0 mem_din 1 8 }  { aligned_seq2_q0 mem_dout 0 8 } } }
}
