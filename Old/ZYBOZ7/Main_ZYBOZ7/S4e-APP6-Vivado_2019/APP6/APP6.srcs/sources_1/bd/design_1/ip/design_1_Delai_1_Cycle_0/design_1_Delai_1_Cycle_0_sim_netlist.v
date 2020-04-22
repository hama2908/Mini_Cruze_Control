// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:29:50 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/jbm/Desktop/S4e-APP6-Vivado_2019/APP6/APP6.srcs/sources_1/bd/design_1/ip/design_1_Delai_1_Cycle_0/design_1_Delai_1_Cycle_0_sim_netlist.v
// Design      : design_1_Delai_1_Cycle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Delai_1_Cycle_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_Delai_1_Cycle_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}, PortType data, PortType.PROP_SRC false" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_Delai_1_Cycle_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "2" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_Delai_1_Cycle_0_c_shift_ram_v12_0_13
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_Delai_1_Cycle_0_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
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
Zq2ytNj8hN+l0VD8mr4GJHRolzpysyHqbBrlr75p44soQNRopZWvHoINQ6s80+voR08KtNa5SiXQ
2WAXduhUAHgSBoMS0syMIQeJokZZyQCnEeq4egH1lqTFrPV3CIxzGddchW51q6w45mP53NskZ+jA
fzmSA+c2OEykZsy9kyIB7RTYllhLswI4kg/2jYWzFNeqrCRoQ5vDxIyw76mWRq3OKs68S81/d2Gd
3qyJ3Sdn4rImlMLDyzqVFf8O7sLYEZ6ZE0T7kqgDGRJc5Bm7wN2es55iPWakekXV66ShIQ7wdQKX
V61eiAA6oNS9Fk7Y6pEEx7a5HderNOg7cbjOWg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URu1qhp8vnABWl0PHR/HoMMHYNZum5Bt8WtxSjk9jTTZ90fi0ZeX3s++zjvwPiGQggHoEXydrYUO
0gX4tgjLyaBfO3Pox4S9/jEkPwcI1WJuZbRxSMiKRwATHXbq6h4pKGdSGMlzhjgyachQKay7AnEU
ZPmn5c+tSSXN+GQUqqIQCv0YKroo3Jb3Sb0UwcuyOGtEGS5oGQDfbyydrEY2ZfuDTiaWS6hMVv5R
KULWV9eNyRZHEs69dih1g7SJg5H9pz4ZagcmJkghim4mbatNxsq1OIGdIAdRWawgWbiP8lwR1Itw
knb8Kuq4onpOdXcw2DQI8q8KRRn2aAjwxDtB9g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4048)
`pragma protect data_block
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
zw==
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
