
/fasthome/Xilinx/Vivado/2019.2/bin/xelab xil_defaultlib.apatb_SmithWaterman_top glbl -prj SmithWaterman.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims  -L unisims_ver -L xpm --initfile "/fasthome/Xilinx/Vivado/2019.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s SmithWaterman 
/fasthome/Xilinx/Vivado/2019.2/bin/xsim --noieeewarnings SmithWaterman -tclbatch SmithWaterman.tcl

