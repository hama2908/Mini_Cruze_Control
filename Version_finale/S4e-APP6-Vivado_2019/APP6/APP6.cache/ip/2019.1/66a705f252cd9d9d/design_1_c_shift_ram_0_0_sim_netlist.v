// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:28:32 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_shift_ram_0_0_sim_netlist.v
// Design      : design_1_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13_viv i_synth
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
FVY8fW8rqXvh0uf00cy8ZJCJ5yxt7twyfzJci4W9W7kLUr+CnNo2hup//mxRyZIQEIX+PvzPF+VS
8gBnylYuVuVbbue748ntrCG1IeHZ5eCZd1pSjPSdW0d+SetpEDmE+1Jp3dviynV2nqETnKnrbPaG
Nyc4KopPGIGXA6ZipFPUn2kgwyOsSTsp51HKvaj9kZYHhwZ3A/yEXD6yPVSBc+ocS9/jUlaUSgmW
R5kPRHCn/GKyXbSWjMSPR0LvWza5lk7TOyud4nalAq7iSTStozIVbY91Zt4DTpPRtVf/kLCAZdyO
F0Dr61hsayhTCfk+AzCPz/Ro5EHIG6HgWkfqIA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pxuJS3Ql+hjZfeAaY4Kji7U8ES55SXX+BPUt1RkHg/w3QFIU+DOlrjwmUQogkVNOd6EPsQTbRk73
IUQoG3HxxhcoGrTMJ5mO+UcSgoLvyKPxxxC8n020sl53t42Ot4flTEOsOf7VC7X0XyHYW1TgL8Jy
lLVnGNq3WieX0lMD2jzAZy+HKkl8TOLngznQPP5VXFcklxaqrzmgXYoQySM3O1xYEgV8bvWse7KQ
3yiLNRo2p4EAmtS507K9PEqRvD810QHDthcLNqypL+2vCnrW6a96kKrtgvcwpYEsrH5L+oQ7RN8S
rLxoJ1BhVrFjK+gTMfDLw2othnpdmEM1457VqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30176)
`pragma protect data_block
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
f/bfq2HEwisQG+jN1F2ANj/QQYMagjE=
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
