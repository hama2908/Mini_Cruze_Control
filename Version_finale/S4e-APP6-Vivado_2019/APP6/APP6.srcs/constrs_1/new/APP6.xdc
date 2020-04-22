
##Clock signal
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sys_clock }];

##reset = btn[0]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { reset}]; #IO_L12N_T1_MRCC_35 Sch=btn[0]

###Switches
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L19N_T3_VREF_35 Sch=sw[0]
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L24P_T3_34 Sch=sw[1]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L4N_T0_34 Sch=sw[2]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L9P_T1_DQS_34 Sch=sw[3]

##LEDs
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { LEDS[0] }];
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { LEDS[1] }];
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports { LEDS[2] }];
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { LEDS[3] }]; 

#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ledtemoin_b }]; #IO_L8P_T1_AD10P_35 Sch=led6_b

## Boutons
set_property -dict { PACKAGE_PIN K18 IOSTANDARD LVCMOS33 } [get_ports { Boutons_tri_io[0] }];
set_property -dict { PACKAGE_PIN P16 IOSTANDARD LVCMOS33 } [get_ports { Boutons_tri_io[1] }];
set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS33 } [get_ports { Boutons_tri_io[2] }];
set_property -dict { PACKAGE_PIN Y16 IOSTANDARD LVCMOS33 } [get_ports { Boutons_tri_io[3] }];

##Pmod Header JA - Comm
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[0] }];
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[1]  }];
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[2]  }];
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[3]  }];
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[4]  }]; #remettre a N16
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[5] }];
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[6] }];
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[7]  }];

#Pmod Header JC - SSD
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[0] }];
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33     } [get_ports { UART_txd  }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33     } [get_ports { UART_rxd }];
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[3] }];
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[4] }];
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[5] }];
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[6] }];
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33     } [get_ports { o_SSD[7] }];        

#Pmod Header JD - Pot partie 1
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33     } [get_ports { i_pot[0] }];
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33     } [get_ports { i_pot[1] }];
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33     } [get_ports { i_pot[2] }];
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33     } [get_ports { i_pot[3] }];
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33     } [get_ports { i_pot[4] }];
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33     } [get_ports { i_pot[5] }];
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33     } [get_ports { i_pot[6] }];
set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33     } [get_ports { i_pot[7] }];

#Pmod Header JE - Pot partie 2
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33     } [get_ports { Pmod_NIC100_ss_io[0] }];
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33     } [get_ports { Pmod_NIC100_io0_io  }];
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33     } [get_ports { Pmod_NIC100_io1_io  }];
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33     } [get_ports { Pmod_NIC100_sck_io  }];
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33     } [get_ports { INT_NIC100[0]   }];
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33     } [get_ports { UART_txd }];
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33     } [get_ports { UART_rxd }];
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33     } [get_ports {  }];