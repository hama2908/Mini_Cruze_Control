// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:29:22 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
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
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
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
klQ5h9hgPT4p1YBkLUYG8lguTKRhX0z2xODTfvC0iZ4ANS2ufXQ4XxirL31R7wyoNNR1hd7rMjwq
bhFP3bRYRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m0Wn8/fGtoK5/3nNxNBBvNhfylkjw8jAoTERkIzypaD+FUTSQmf52TpAbVY1LPDo/g6d8tzIrR8n
vZ2G5ckAbcwDRGFF5wpZ/kzyANCTceWo7S+WbzLbzhWkG5fkJbJk/tafbSvqruxodmgtrUI2IZDv
n7Mrf4GRIdC1iTgv+oM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mC2bSkADVOO0t7I1BTHPnOuMcPIdeypycvBkfsUtXFD/WSov2Pt6qF5xMTcs6woq+465yEDvey00
mpX9JC1ypEuHaZI+dtH7s+A4vYLXy34kFLryTKJtqycAy6XqNtTegvy4giaDFwDn7LgsamHSf/4D
cVGL06Ul6gm+ZOMvzok6Y9TBltlEkZOZ4GncKspHPcn3EJar4GdDxKcPll1RqSFbA2m7bWz6jPV3
uOD6IWnIflyobdLIsuB8hse3kjXBG5sl6X8AP4armpo9TNNnRIRG2FoI6g16Sj6zldS9XF54ge/w
jnsP0vce7kfzvP1LjtFrWdW0raW61dIddZVz5A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LC8srWyP8+H+elFwWxNw8UhEF94Tx3vV4OlwBcwFszd9xuvwYRipLEwY4ar7HEoCwJI7beW6k6I1
ntJSXGEnPMgIDe7PadSQIz6gi9ErRHWRhWD6bEDNd/ZjFQuOakXk78jzxOTKuOpQ+ExjdHImyPzK
mDR0BnkVc/QiSO7zpOf3yjx9Vzb0Fba6OgXg0iLPz1MUr0ahYIc0MAkw4pRBo6IH5ilqVbkgNQcT
G4z/0OSzsBxipE9o1elAez7CnehtEQ66g6i3JpIIwqwnpZNQ9otSnS8LN/spRcQLOUuBq9ynGkPL
sF7EUF1gLkTFFMGgnZgawWi0V0jhiHQkJuLKPQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijV0yStg7uRIl3uzK8/hlbIaWGHa9aPC5Eu/o1vErrwtArYsGFt3RCyG/S90FB6jkuLgqwPR8ZlQ
P9t/F2FWmEkwwjGbdrRKFfpbkjh5HVn0vvLKCP3SiVHXCOWxxb5z8BV+yCNdpgdnsHFecK1M8ydQ
C530kRu3UD1LcnZcWJi41LcJAc5rvlw/SP1gbl+I1qsRNEHsb+MK5vyjgwBZAqKyqi7/UK1VEPdq
myeWeCRrU0GqEq5y/PHBMknv1SqNe0d5qzG1rmAtC4df+iivMCc9xuHsCA7iqoe+ZKnMmnA/8F6+
nY+gx8AQNplCeFxWppKH952fIYplHtE2rKQyVQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
saHlQAxOuJkLItpv5N3fJoJP3EdR34QNYHtUBFx7fcQy8HAUaZ/9Tlt2kfpn9r/pk1MmJ7uf4z73
LyaG/PWw7v3yH/KIVSLeIxiaSHoVfdWH1/RDH6k3DTDNbWSJDOjGSvMTThUKe899F8IXTD5jKxCh
frGB3Io0W4klQV7ADEw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RFiy0rrSiVrZMC725S3XkUSDuMS7Z+xog1sOwADnIBmdCChtYLUQVO9oPjXIujfg3bBFTH3qzII3
Y63fFMSZnnzk+ups3RPMBqEPPdMQSwlpDzsvhCOwYHe/rsOPZvqd7lL6QOKoA3mS9TZIP+mOaTKd
vzQiVyfS0rs+QHdJcw49jD5y7Dc3clQHD9xZMAMUHa5v8hzX4IOcnkSUOLpsZptR/WM7rcMnTzCL
x6m2UC+xSrwrb5vEz9cePMHx9NJyO2DBG0HTEDzGQQkrOCJJjvBxtB3r/E7/3eWGHvMwphSJnfCd
PfvYXz88X+ZVCW9dTNfc75jI7ogVMSunmtUuMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fjlCAlZXpRKbLtP4uWoRRyvfFWu8Q8V9ri1wcfy3ObD+t9CxMzaEnRIXaLmZzvs+T7zayzc8Uibu
/A0la7GrpSKFnPpjhHDddlKFZ7UnvHbZIjgYff/DK1T3XQ3E5Y+PazpCkqfMOcFkn0182OHzsX9C
5x6JBTL1npnVeGZ7nQaAlGvtxEdbDnMZBjmKWUAseC1EgLPw/3LzsWok/f+KdruJDpzkSDX3auVt
Bt3QruD9N24C5Sy0jAR+aDqBhvX1eZwLhjf3MPqFjuSpFD78wp/+5wC2Tb12PfAsm6vW8Af419KN
Yc7O7mFsch95/peLr1zalnb3FCtWeMkJ/mlIPg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A2ZAMB/TL+K6Bny/tTs9Tfk1Oe+jX7C3J3vlZElNkM4u+DmQ/jSmjBZrTIv5oi2UnicSVbg4pljx
cZlSYAHlSxhIp5eitRZWrkX/EPC1fj0VPaF9AEx05nHgVy0lbDTyx5nPh4gWQkUyfeLWrlg0c3It
6EM1ikGOZOaNHSPfuOMaoy+UHKN6bTHyAN8884Bv6v5aJBarCow9CQgC9TZ3qvwKcmSaM0UmxtKD
FPOuDPby3wsv0lOtmzkWdCvLhKMiuTlTGsyPPcbEEDWflH797rNlseER06ffsCC5tGTKD2RmWCNC
YOcel9z8mrfhd+31QjSBHub7/d8xxpPRVCO4Ig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4144)
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
