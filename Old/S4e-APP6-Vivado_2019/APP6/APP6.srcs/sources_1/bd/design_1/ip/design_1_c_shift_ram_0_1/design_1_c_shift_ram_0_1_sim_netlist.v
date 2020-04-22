// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:29:23 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/jbm/Desktop/S4e-APP6-Vivado_2019/APP6/APP6.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_0_1/design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_0_1
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
  design_1_c_shift_ram_0_1_c_shift_ram_v12_0_13 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_0_1_c_shift_ram_v12_0_13
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
  design_1_c_shift_ram_0_1_c_shift_ram_v12_0_13_viv i_synth
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
h/O9/H2ZshyfpFEGGj8oryNGEUX4tRyIF8cuJkheZG6s+DfBeA9k6rT7jCfboCz9fvL3/Tsz25Ow
NiHFgI9amqzUcpmofNTwD4YiRckAOgK8KstPiSIGTjPhjuOt6gyUP+x9pqcsa/6TalfvhSkLBFpK
bGtd3LozDmqXf/ive7MP2R3hEdI8U1y+fbZKZRKVz/6LbP19pmyT+mvaAsbJlT0Gq6H8ZyW70ui0
zOwUeWtEfBsZKPVBTiymm1AmvxOZuqkJIaD5NLUMfPKsbRFdOQKZ+Sblq/oytCvl44ky9yexDrYW
VDo4MsUmqzu9HAgRI6Qj8aPgm5mJ2iIXRMP46w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
10KfusQJowC8hakHVPPuOSGI3VUff4dz304eQeiwd3R22FbFbL+Gd9GeMwhub7lfou763Mr7UuFc
NPxjHSC+M+a+Al2LMTUteUn5QgbQpgTNKDMeS0ja+mSm4s9mrsqv8Wn9/5RNmlEh5bPfrgdYsdE+
IwV1cENW6N+5JG5QQYAnuEDERP4jhz+WIlr+ir0iYOz+gWFfHSaopQVjM+H8O/B2BAYcuNgY86vE
rwcdRvGYgnJxTTrcOhxfkgNho/SKBrywrxPJb7a2ayX/O5wYT8E7pY5I/wWE02SbFeQ899tQ+Yj0
kQjoK35GHb1dhpW6G8LSh4IDdogXsm8kJKGrkQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4208)
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
