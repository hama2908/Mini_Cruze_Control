// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:29:22 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_Delai_1_Cycle_1_0 -prefix
//               design_1_Delai_1_Cycle_1_0_ design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_Delai_1_Cycle_1_0
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
  design_1_Delai_1_Cycle_1_0_c_shift_ram_v12_0_13 U0
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
module design_1_Delai_1_Cycle_1_0_c_shift_ram_v12_0_13
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
  design_1_Delai_1_Cycle_1_0_c_shift_ram_v12_0_13_viv i_synth
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
FF8C+W3ouaUQ5wlbLaSQync=
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
