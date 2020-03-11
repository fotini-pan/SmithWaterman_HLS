set moduleName SmithWaterman
set isTopModule 1
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
set C_modelName {SmithWaterman}
set C_modelType { void 0 }
set C_modelArgList {
	{ seq1 int 8 regular {array 100 { 1 3 } 1 1 }  }
	{ seq2 int 8 regular {array 100 { 1 3 } 1 1 }  }
	{ aligned_seq1 int 8 regular {array 100 { 2 3 } 1 1 }  }
	{ n int 32 regular {pointer 1}  }
	{ aligned_seq2 int 8 regular {array 100 { 2 3 } 1 1 }  }
	{ m int 32 regular {pointer 1}  }
	{ l int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seq1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "seq1","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "seq2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "seq2","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "aligned_seq1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "aligned_seq1","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "n","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "aligned_seq2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "aligned_seq2","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "m","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "l", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "l","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 28
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
	{ aligned_seq1_address0 sc_out sc_lv 7 signal 2 } 
	{ aligned_seq1_ce0 sc_out sc_logic 1 signal 2 } 
	{ aligned_seq1_we0 sc_out sc_logic 1 signal 2 } 
	{ aligned_seq1_d0 sc_out sc_lv 8 signal 2 } 
	{ aligned_seq1_q0 sc_in sc_lv 8 signal 2 } 
	{ n sc_out sc_lv 32 signal 3 } 
	{ n_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ aligned_seq2_address0 sc_out sc_lv 7 signal 4 } 
	{ aligned_seq2_ce0 sc_out sc_logic 1 signal 4 } 
	{ aligned_seq2_we0 sc_out sc_logic 1 signal 4 } 
	{ aligned_seq2_d0 sc_out sc_lv 8 signal 4 } 
	{ aligned_seq2_q0 sc_in sc_lv 8 signal 4 } 
	{ m sc_out sc_lv 32 signal 5 } 
	{ m_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ l sc_out sc_lv 32 signal 6 } 
	{ l_ap_vld sc_out sc_logic 1 outvld 6 } 
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
 	{ "name": "aligned_seq1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "address0" }} , 
 	{ "name": "aligned_seq1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "ce0" }} , 
 	{ "name": "aligned_seq1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "we0" }} , 
 	{ "name": "aligned_seq1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "d0" }} , 
 	{ "name": "aligned_seq1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq1", "role": "q0" }} , 
 	{ "name": "n", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "n_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "n", "role": "ap_vld" }} , 
 	{ "name": "aligned_seq2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "address0" }} , 
 	{ "name": "aligned_seq2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "ce0" }} , 
 	{ "name": "aligned_seq2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "we0" }} , 
 	{ "name": "aligned_seq2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "d0" }} , 
 	{ "name": "aligned_seq2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aligned_seq2", "role": "q0" }} , 
 	{ "name": "m", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "m_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m", "role": "ap_vld" }} , 
 	{ "name": "l", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l", "role": "default" }} , 
 	{ "name": "l_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "l", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5"],
		"CDFG" : "SmithWaterman",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1119", "EstimateLatencyMax" : "31715",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_traceback_fu_187"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_align_fu_203"}],
		"Port" : [
			{"Name" : "seq1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_traceback_fu_187", "Port" : "seq1"},
					{"ID" : "5", "SubInstance" : "grp_align_fu_203", "Port" : "seq1"}]},
			{"Name" : "seq2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_traceback_fu_187", "Port" : "seq2"},
					{"ID" : "5", "SubInstance" : "grp_align_fu_203", "Port" : "seq2"}]},
			{"Name" : "aligned_seq1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_traceback_fu_187", "Port" : "aligned_seq1"}]},
			{"Name" : "n", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "aligned_seq2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_traceback_fu_187", "Port" : "aligned_seq2"}]},
			{"Name" : "m", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "l", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_traceback_fu_187", "Parent" : "0", "Child" : ["3", "4"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_traceback_fu_187.SmithWaterman_mulbkb_U6", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_traceback_fu_187.SmithWaterman_mulbkb_U7", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_align_fu_203", "Parent" : "0",
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
	SmithWaterman {
		seq1 {Type I LastRead 2 FirstWrite -1}
		seq2 {Type I LastRead 3 FirstWrite -1}
		aligned_seq1 {Type IO LastRead 4 FirstWrite 2}
		n {Type O LastRead -1 FirstWrite 0}
		aligned_seq2 {Type IO LastRead 5 FirstWrite 2}
		m {Type O LastRead -1 FirstWrite 5}
		l {Type O LastRead -1 FirstWrite 8}}
	traceback {
		seq1 {Type I LastRead 2 FirstWrite -1}
		seq2 {Type I LastRead 2 FirstWrite -1}
		H {Type I LastRead 4 FirstWrite -1}
		pos_0_read {Type I LastRead 0 FirstWrite -1}
		pos_1_read {Type I LastRead 0 FirstWrite -1}
		aligned_seq1 {Type IO LastRead 4 FirstWrite 2}
		aligned_seq2 {Type IO LastRead 5 FirstWrite 2}}
	align {
		seq1 {Type I LastRead 2 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		seq2 {Type I LastRead 2 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		H {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1119", "Max" : "31715"}
	, {"Name" : "Interval", "Min" : "1120", "Max" : "31716"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seq1 { ap_memory {  { seq1_address0 mem_address 1 7 }  { seq1_ce0 mem_ce 1 1 }  { seq1_q0 mem_dout 0 8 } } }
	seq2 { ap_memory {  { seq2_address0 mem_address 1 7 }  { seq2_ce0 mem_ce 1 1 }  { seq2_q0 mem_dout 0 8 } } }
	aligned_seq1 { ap_memory {  { aligned_seq1_address0 mem_address 1 7 }  { aligned_seq1_ce0 mem_ce 1 1 }  { aligned_seq1_we0 mem_we 1 1 }  { aligned_seq1_d0 mem_din 1 8 }  { aligned_seq1_q0 mem_dout 0 8 } } }
	n { ap_vld {  { n out_data 1 32 }  { n_ap_vld out_vld 1 1 } } }
	aligned_seq2 { ap_memory {  { aligned_seq2_address0 mem_address 1 7 }  { aligned_seq2_ce0 mem_ce 1 1 }  { aligned_seq2_we0 mem_we 1 1 }  { aligned_seq2_d0 mem_din 1 8 }  { aligned_seq2_q0 mem_dout 0 8 } } }
	m { ap_vld {  { m out_data 1 32 }  { m_ap_vld out_vld 1 1 } } }
	l { ap_vld {  { l out_data 1 32 }  { l_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

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
