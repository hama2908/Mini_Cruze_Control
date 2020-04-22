// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:28:33 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/jbm/Desktop/S4e-APP6-Vivado_2019/APP6/APP6.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_0_0/design_1_c_shift_ram_0_0_sim_netlist.v
// Design      : design_1_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [31:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CE;
  wire CLK;
  wire [31:0]D;
  wire [31:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "8" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "1" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000000000000000000000000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "32" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "8" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000000000000000000000000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_0_0_c_shift_ram_v12_0_13
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [31:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [31:0]Q;

  wire CE;
  wire CLK;
  wire [31:0]D;
  wire [31:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "8" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "1" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "00000000000000000000000000000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "32" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nn2y8yvGEAU+oxfqIjNJMT0yc3TadO2A5cZHoK3dC6l8eNK9HFYMskFicvVj1pqkc9mDJyUKrSId
CCL/HetNvg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNkKvQED4vWNv+vYe3nI8o8VVd25+7OXvcQGN/bznOgwwQ9zOLtv8RpNciTxGp//tcY2jCAsQOQR
SAwBc00y7wnNCTMtZFvxXOqSHEUPYTYxcXYrIMSElXg1AeD03zwd+qdTjbS69InbpBZ40pWQBX71
ctP6YeotRwK8SefTdE8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aw7jhd7UZTrADfLTZ5YsRTYTdEzrJ+N4enHI0pDja6no68W2U8xeZSGR45xVkKPWy4UGH3zDqIyg
YAP5FGIc5LcSqiGDfNdrdIvThTT5xBjpM9zvSxq6836B2yVmJhQLgvziF962Xaqbe7uQRnXQp17I
kjzsA6zhURm/05lRx/day4Cz2CbJD4D4RVpd36+ytOucw4q+sxb/dm0j/Zj3I3aD0G+lVv+6bECF
ISSRuJv19uehdbvwf+qrzqTMPcPX7L9lxubWjJXjm+4496NlRuEv4eng6rowNLkC1RQXoUtW+UVo
PyhgdGfb+nJPLDiP90hHMCg0AlZBGnoQ4bZYlw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
biYqlehfUy2MPR5IeETLexHTdJ7q51nWkAsSzWCNbkr2c3/I9AYuwIkh2pcsUMgsCkL2Lcb26gJW
D9+BY0gYxVOzcZx9DtuxM/DqEvzsBG5XW/R6eymYeJJXtW18hS5aOcO2RDf30eieTCZwOyx3cnis
herNQHaIc5PrMK7dsl2V0mRQ4Lex1+r46DNrReU4z+3VNRVfL0mX4NhB+QV2zDspLTAYf1l7nA5u
EbLi12YBXczbhvawRV6TjHxA4Ml/QzRmYMg1mfxJ+3FZmfoR+uU07NrBc1LOhonCg2DPch0TTDa/
+umVNvlER66pUotjBuU9vgjw7Dkkp+/MdqAajg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VR2RqLmiSvIq90JPqVnSqgmKE5SicXJKPyTAunTpAaj1DuEXlVsRD04gzJadbWfPqE9xAoUiq9wU
PHjRKiQbrR4JC+wy8bkLpY5iW3oxOSRDZ65wXxQUvMxgGE2eFRVI/k/ZQRRYqr9mm8YdVU01dvtU
egqfPLie7vxuQB/aiN7a0E7FJ3PMFpnNM/lmZU8kUoAycwEcAu9Lvc3isAys48OIVQPaQHkMn2eB
HIwPBmpuermPsgmSnBIbbJxQ+dBWkPL0EzxPuDn7PUp+ojaG9ZnKwIfZL1me0oBJdzhp2dyAcfIo
QfkynG/j81yZHbXXctAPpAfTUjbbnye2spH36A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
spURjF4NoZ4yjaDCJd2V8NW+Oj5ZMaUYbemUjajnsue2uyV5q0a5IBxkOcXgNdlJ2vnd44QwYWa4
lylHJkTIRWpMiAc6oKbTc0UpP1dy19psYVCAqRk/1+Ql6FdGPO88bH+fSSVGZp3FT1qBOx/xZdlI
oCEDIIhFzto+GF3j648=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eMFwa46SXA6HVoFlviJtJvyKfnw7oJgLT1JrVR0eN4c/X8/spoO5r8yshZA3q3KquxGdP0kyqeP9
P1R/bA4WmHDfXN2hXErIJk8CzVEKi7D17DVfKTkvxwdjjBmDO5EYn24/k+RSr/VKfX4X0GFHpb5X
2fgSZVIPaY/ztx/tIF1U+TG7NvoQlBKjqBJyQNgDmciPzSPkSPzhpcEFL95PVLp2IwwcbtuM5PnK
SYBqbLz3Y6FcLScZwLiOUD+aFacR+bbjaJnOQ+Aap6Jy6mwXic0Vpf3KziYI6760f5HtSIaKYnEf
2emYl3n7jq3Nqev5AAxpFg7eUMHAnHMWb375Iw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L1PXQZJR1AqB8uN1uMwUalaC63iQughYg6/PyqQN6ZJqkQsrWODrJ4Ht9/7BWCpHlcbkoi2a7Ots
847zIPAzn5nwfjd5QaLHXaCWMLoDMmOHVqWDFahl7/+6fmeTVcuJ9UqT2BvNSMOmTwpKIUWg+eBD
CkxoLykKG4Jj/19+hEYHRQCJVqS4TqI3hjCmlgSPl4vbDqI+pQ/ZKlx4Es2/jfiytFzJ2QBL3z2N
ry3+tGm4BOjmY7/t0ory7PLw0IDu9SukCU+7zjvdB9Tr9fzLCB4CrBBsknuVLGZ+CRwOjyDhe73k
wjVjGleaIADMaDzM1CwHUEib6faEMtz+9N39XA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VDwV5gxl9+y+JEdvMs5HN9esnCPinnIsbuONY9R4u7CEarvrnE+UUchKt7yo+IKiXfMu+jItkfph
0jVIJS5mili+4J3CvW4lc+iltTikO6Q4IkYwX/FcZj7mHhmBrPq1RnyEoSacm5fAZhjTZ0xxwKwd
efbP8UCisCURlq+uTGSS6v9YKk5eeq958vkuuSkxSj8+H1J6foO8CGe8/pluJFF8fvvBE5khUo/Y
+3oyjL09SI02n4eDOj28I4aLBOTfM3cxUQsyGTnhIicGIWTiMDu61qPU6hdou+oXd9LHrQYv1ajY
UFe3XannARCnX9oNlarsyPiX4zVTlnqsteBXBg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30240)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
