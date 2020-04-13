// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:28:58 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_addsub_0_1_sim_netlist.v
// Design      : design_1_c_addsub_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_1,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 32}" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_13 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_13
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_13_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
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
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UcGBKsFEaLubtriUET/D4x4hgtxpTp2ySPba3j7aCJO53bFTvRBP+UnwCgwZPf2dFX6K/Mregwpg
eWO5kyG6/GFZ+yRjA7FtxaPWNQ9MPiFrT38dXbyC2Yv04+D6Ds2up8RWx+bJX33ooLY1lVL+WAK0
VDYj5dcFuqwjcQ95kXTalWgw1XlIERx6QXV1tH4cT/BNJdQsbuX+zNWFX/H9r8cf38kYtdbXrywo
GwDA4DmKStKUMd0vl2zXJ/9eVkIghQvwmFptj7xKCNmj2e2eIip2Mr610QxtXWGL1QEgZt1lVcs8
wtzWpFEbYK9tQoaBgctWk2R5mJmXmV+Dff28GQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wqCNKMaedKW/Wob3GAPX/uLNObJebobOBM1ozLvbpRNwrfjtIhf7wtqPZsUA5eDJwflJ+ZQio0Ep
yUOiMca907/0KDzapUUiX1dIoSMJU1FGPXnfnv1GsdBOPq/md/3xWzhVttnDvzRoOKLLvUIPOYq0
A3YoVZODNFPscaZCKJ+PrvuJhY0HjWWlJPjmeNfW87FPH2bpFbb+Wo+lUT6+/kES0HBofuF06PCJ
v4G4My1iBbQHo216lnS0H45hShvTim/DFlm3pN63WfEP25JUkqC5GYZSfwRi+rnWPCpKNafEsHjk
H7fVp5EMdpge3NB89Aeo4TUQgMs3ejYWSWrMcw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23376)
`pragma protect data_block
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
9MRJnsLQ
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
