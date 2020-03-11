set moduleName align
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
set C_modelName {align}
set C_modelType { int 64 }
set C_modelArgList {
	{ seq1 int 8 regular {array 100 { 1 3 } 1 1 }  }
	{ n int 7 regular  }
	{ seq2 int 8 regular {array 100 { 1 3 } 1 1 }  }
	{ m int 7 regular  }
	{ H int 32 regular {array 10201 { 1 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seq1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "seq2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "H", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 24
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
	{ n sc_in sc_lv 7 signal 1 } 
	{ seq2_address0 sc_out sc_lv 7 signal 2 } 
	{ seq2_ce0 sc_out sc_logic 1 signal 2 } 
	{ seq2_q0 sc_in sc_lv 8 signal 2 } 
	{ m sc_in sc_lv 7 signal 3 } 
	{ H_address0 sc_out sc_lv 14 signal 4 } 
	{ H_ce0 sc_out sc_logic 1 signal 4 } 
	{ H_q0 sc_in sc_lv 32 signal 4 } 
	{ H_address1 sc_out sc_lv 14 signal 4 } 
	{ H_ce1 sc_out sc_logic 1 signal 4 } 
	{ H_we1 sc_out sc_logic 1 signal 4 } 
	{ H_d1 sc_out sc_lv 32 signal 4 } 
	{ H_q1 sc_in sc_lv 32 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "seq2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seq2", "role": "address0" }} , 
 	{ "name": "seq2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seq2", "role": "ce0" }} , 
 	{ "name": "seq2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seq2", "role": "q0" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "H_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "H", "role": "address0" }} , 
 	{ "name": "H_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce0" }} , 
 	{ "name": "H_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "q0" }} , 
 	{ "name": "H_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "H", "role": "address1" }} , 
 	{ "name": "H_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce1" }} , 
 	{ "name": "H_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "we1" }} , 
 	{ "name": "H_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "d1" }} , 
 	{ "name": "H_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "30201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seq1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "seq2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	align {
		seq1 {Type I LastRead 2 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		seq2 {Type I LastRead 2 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		H {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "30201"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "30201"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seq1 { ap_memory {  { seq1_address0 mem_address 1 7 }  { seq1_ce0 mem_ce 1 1 }  { seq1_q0 mem_dout 0 8 } } }
	n { ap_none {  { n in_data 0 7 } } }
	seq2 { ap_memory {  { seq2_address0 mem_address 1 7 }  { seq2_ce0 mem_ce 1 1 }  { seq2_q0 mem_dout 0 8 } } }
	m { ap_none {  { m in_data 0 7 } } }
	H { ap_memory {  { H_address0 mem_address 1 14 }  { H_ce0 mem_ce 1 1 }  { H_q0 mem_dout 0 32 }  { H_address1 MemPortADDR2 1 14 }  { H_ce1 MemPortCE2 1 1 }  { H_we1 MemPortWE2 1 1 }  { H_d1 MemPortDIN2 1 32 }  { H_q1 MemPortDOUT2 0 32 } } }
}
