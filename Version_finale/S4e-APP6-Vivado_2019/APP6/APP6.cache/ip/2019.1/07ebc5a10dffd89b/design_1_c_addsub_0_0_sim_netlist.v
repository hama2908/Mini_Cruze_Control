// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Feb 10 12:28:18 2020
// Host        : Bougalou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
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
  (* c_add_mode = "0" *) 
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
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
  (* c_add_mode = "0" *) 
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
N7hfn7H4EaPF3Rrvgfpy14Fk9H6cXTnyEdchhhjSIOWQ4g4/XXgWlFknm3WqKjQlKILaH1py30la
e6CEI4vXWq3erpDZD7RgR+vHwL5xeJLao4/jwvjnsJ2grBo6/9jkQ0DxFYZOGNzI3kKW2WJ4xU/L
cS/BkofHsn2XcmrmIWpBLFGDPUZlKLKz5W4D8o0vYLf5+LEz6SqsBE8F+gq4kC9ywKmpx43L6tbn
iTT/m/mgSBm+Wz8aXq/LEuBJ5qRy+R06y18kO6N32Vn1o4PVf61EwWagivXEwKcBEuEOok9NTIAd
UfK77i/R1cTYlLUs/6i2CJNpz0aJxlNzN8W8Iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
adCeFsbE1neckKdh8oD0lW9ZbcKv/TIbhWrNW9KMutuu2TpMKpXNDr3mRq2UGKWtwGnTweL7L8AA
TGnhAd7/KtjggGtNsw8YNBsVfSxJA8Bc++6L2CCmE/UGB6gjsaRqkJIszF1BJJHwxXBOEF67Y8ld
qV1qXvqnIc8I6apCb/3tFs95CtBGRVzStAGOffjSUtStRNiK02fIaXN0KELgWCDb3iSSNcDoPzSS
+LiljEToLKySPo3uEnYJ6sUtFTHtIsJolUi06KRSct64B4VNnECWZAK90tE2Uj4ZYw4xGBk7mOLU
zUfcJbNOJVeY7jGmOMhvRsqIgnIoCTH7DsJ05w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23376)
`pragma protect data_block
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
OcZeHhf3
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
