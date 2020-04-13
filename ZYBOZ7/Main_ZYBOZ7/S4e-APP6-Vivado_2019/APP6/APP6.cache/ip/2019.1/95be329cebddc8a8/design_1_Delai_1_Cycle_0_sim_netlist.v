// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:29:49 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Delai_1_Cycle_0_sim_netlist.v
// Design      : design_1_Delai_1_Cycle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Delai_1_Cycle_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13_viv i_synth
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
ALoxdoUsb0vBrTHTKpECnuklm9eBsmecW7PktR9DLHNpORmEEE1KsK8yjDIOp23RS2sVejP04gbL
k9/5AgFgzh1RO3IHN8hDIdswqIfa5P/hgtutsQ1FLCXMr1ELEA4WUO7u4AmfV851t8xi00XNUXaq
7mWWrrVCx2pTY307G/wXXBh6lvEATYwAKlqkLwL9veFxMv7emJGaqmXDPPU8gAfOzzKvMDeDYc+v
QoF/FAk5gM4yTVBkptjyT1h7ls31G41JO9Ai8+PN2I+s9scneoCqZ6DigY7z4kw/WQI9y27U/uLF
UVyzjXecNFz6tyLXsppXSrKJZ+jBzzJ8pEt8rQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tVe7/QNMJcImjjtg+gep5/uEYIQgN79BPSSkYy195O+2N7d57lc0T/yQ35oe41fFhP8e3rHM4pBD
J9N+rdCTwtZjeHAIOmigH/7iv2NBrafZVBd8XU9l9/xuJeA5tmUPSIIl1oQx7aMqIUyzCxh0E1gu
KDPPHv6rwKk2Oj08q68SzzL9WrtmwSU/1LfU+RqCOWLC8Q9c8ZfLuGLrhGSkrB6t74ITYMliTzLz
B3c5K7rINr+LAg29ohpfF4NJOJ0xpjMbG8VdYen7FZ1f7smKWHuCWohZ6vPsTOSQ09BdQQeP561w
vNCi12c6ML1x9AiPyeETOfvaPTObjCUkQXt7FA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4000)
`pragma protect data_block
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
yP/26Z8XuCrDSg==
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
