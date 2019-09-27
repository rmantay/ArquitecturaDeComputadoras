////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Int_Rx_map.v
// /___/   /\     Timestamp: Thu Sep 26 15:34:53 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf Int_Rx.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim Int_Rx_map.ncd Int_Rx_map.v 
// Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: Int_Rx_map.ncd
// Output file	: \\vboxsrv\win7vm\workspace\ArquitecturaDeComputadoras\TP2-2019-UART\netgen\map\Int_Rx_map.v
// # of Modules	: 1
// Design Name	: Int_Rx
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Int_Rx (
  CLK, RESET, RD_FIFO, FIN, FIFO_empty, CH, STATE, data_out, OP, DATOA, DATOB, SEL, data_in
);
  input CLK;
  input RESET;
  output RD_FIFO;
  output FIN;
  input FIFO_empty;
  output [7 : 0] CH;
  output [2 : 0] STATE;
  output [7 : 0] data_out;
  output [7 : 0] OP;
  output [7 : 0] DATOA;
  output [7 : 0] DATOB;
  output [2 : 0] SEL;
  input [7 : 0] data_in;
  wire data_in_0_IBUF_1083;
  wire data_in_1_IBUF_1085;
  wire \Madd_datoB_next_addsub0000_cy[1] ;
  wire data_in_2_IBUF_1090;
  wire data_in_3_IBUF_1092;
  wire \Madd_datoB_next_addsub0000_cy[3] ;
  wire data_in_6_IBUF_1104;
  wire \_old_ch_rnm0_1<7>_0 ;
  wire \Madd_datoA_next_addsub0000_cy[1] ;
  wire \Madd_datoA_next_addsub0000_cy[3] ;
  wire FIFO_empty_IBUF1;
  wire FIFO_empty_IBUF_1132;
  wire FIN_OBUF_0;
  wire state_rnm0_FSM_FFd1_1163;
  wire data_in_7_IBUF_1167;
  wire \op_rnm0[0] ;
  wire \op_rnm0[1] ;
  wire \op_rnm0[2] ;
  wire \op_rnm0[5] ;
  wire \CLK_BUFGP/IBUFG_1173 ;
  wire RESET_IBUF_1174;
  wire CLK_BUFGP;
  wire state_rnm0_FSM_FFd2_1177;
  wire state_rnm0_cmp_le0003_0;
  wire ch_rnm0_or0000;
  wire N11;
  wire N201;
  wire N13;
  wire N23;
  wire state_rnm0_cmp_eq0008_0;
  wire select_next_cmp_eq0000_0;
  wire N0;
  wire N14;
  wire \select_next<1>2_0 ;
  wire N49_0;
  wire \select_next<2>31 ;
  wire \d_out_next<5>4_0 ;
  wire N25;
  wire \d_out_next<5>5/O ;
  wire \datoB_next<0>19_0 ;
  wire \datoB_next<0>9/O ;
  wire N18;
  wire \datoB_next<0>3_0 ;
  wire \datoA_next<0>_SW0/O ;
  wire N19_0;
  wire \datoA_next<1>_SW0/O ;
  wire \datoA_next<2>_SW0/O ;
  wire \datoB_next<1>9/O ;
  wire \datoA_next<3>_SW0/O ;
  wire \datoA_next<4>_SW0/O ;
  wire \datoA_next<5>_SW0/O ;
  wire \_old_ch_rnm0_1<5>_0 ;
  wire \datoA_next<6>_SW0/O ;
  wire \datoB_next<2>9/O ;
  wire \datoA_next<7>_SW0/O ;
  wire \datoB_next<3>9/O ;
  wire \datoB_next<4>12/O ;
  wire \datoB_next<5>9/O ;
  wire \datoB_next<6>9/O ;
  wire N43_0;
  wire \d_out_next<3>_SW0/O ;
  wire \datoB_next<7>9/O ;
  wire \d_out_next<4>_SW0/O ;
  wire \d_out_next<0>4_0 ;
  wire \d_out_next<0>5/O ;
  wire \d_out_next<6>_SW0/O ;
  wire \d_out_next<7>_SW0/O ;
  wire \d_out_next<1>4_0 ;
  wire \d_out_next<1>5/O ;
  wire \d_out_next<2>4_0 ;
  wire \d_out_next<2>5/O ;
  wire \FIN_SW0/O ;
  wire ch_rnm0_or00001220_0;
  wire ch_rnm0_or0000122_0;
  wire N211;
  wire N161_0;
  wire N3;
  wire N82;
  wire \op_next<5>8 ;
  wire N7_0;
  wire \op_next<5>0_1236 ;
  wire \op_next<0>231_1237 ;
  wire \op_next<0>277_0 ;
  wire \op_next<0>2135_0 ;
  wire N78_0;
  wire \op_next<0>28_0 ;
  wire N10_0;
  wire N30;
  wire N86;
  wire N76;
  wire \op_next<1>10_0 ;
  wire N84;
  wire \op_next<1>32_1248 ;
  wire N80_0;
  wire \op_next<1>45_1250 ;
  wire N41;
  wire \datoB_next_addsub0000<0>/XORF_1286 ;
  wire \datoB_next_addsub0000<0>/CYINIT_1285 ;
  wire \datoB_next_addsub0000<0>/CY0F_1284 ;
  wire \datoB_next_addsub0000<0>/CYSELF_1276 ;
  wire \datoB_next_addsub0000<0>/BXINV_1274 ;
  wire \datoB_next_addsub0000<0>/XORG_1272 ;
  wire \datoB_next_addsub0000<0>/CYMUXG_1271 ;
  wire \Madd_datoB_next_addsub0000_cy[0] ;
  wire \datoB_next_addsub0000<0>/CY0G_1269 ;
  wire \datoB_next_addsub0000<0>/CYSELG_1261 ;
  wire \datoB_next_addsub0000<2>/XORF_1325 ;
  wire \datoB_next_addsub0000<2>/CYINIT_1324 ;
  wire \datoB_next_addsub0000<2>/CY0F_1323 ;
  wire \datoB_next_addsub0000<2>/XORG_1313 ;
  wire \Madd_datoB_next_addsub0000_cy[2] ;
  wire \datoB_next_addsub0000<2>/CYSELF_1311 ;
  wire \datoB_next_addsub0000<2>/CYMUXFAST_1310 ;
  wire \datoB_next_addsub0000<2>/CYAND_1309 ;
  wire \datoB_next_addsub0000<2>/FASTCARRY_1308 ;
  wire \datoB_next_addsub0000<2>/CYMUXG2_1307 ;
  wire \datoB_next_addsub0000<2>/CYMUXF2_1306 ;
  wire \datoB_next_addsub0000<2>/CY0G_1305 ;
  wire \datoB_next_addsub0000<2>/CYSELG_1297 ;
  wire \datoB_next_addsub0000<4>/XORF_1364 ;
  wire \datoB_next_addsub0000<4>/CYINIT_1363 ;
  wire \datoB_next_addsub0000<4>/CY0F_1362 ;
  wire \datoB_next_addsub0000<4>/XORG_1352 ;
  wire \Madd_datoB_next_addsub0000_cy[4] ;
  wire \datoB_next_addsub0000<4>/CYSELF_1350 ;
  wire \datoB_next_addsub0000<4>/CYMUXFAST_1349 ;
  wire \datoB_next_addsub0000<4>/CYAND_1348 ;
  wire \datoB_next_addsub0000<4>/FASTCARRY_1347 ;
  wire \datoB_next_addsub0000<4>/CYMUXG2_1346 ;
  wire \datoB_next_addsub0000<4>/CYMUXF2_1345 ;
  wire \datoB_next_addsub0000<4>/CY0G_1344 ;
  wire \datoB_next_addsub0000<4>/CYSELG_1337 ;
  wire \datoB_next_addsub0000<6>/XORF_1395 ;
  wire \datoB_next_addsub0000<6>/CYINIT_1394 ;
  wire \datoB_next_addsub0000<6>/CY0F_1393 ;
  wire \datoB_next_addsub0000<6>/CYSELF_1387 ;
  wire \datoB_next_addsub0000<6>/XORG_1384 ;
  wire \Madd_datoB_next_addsub0000_cy[6] ;
  wire \datoA_next_addsub0000<0>/XORF_1431 ;
  wire \datoA_next_addsub0000<0>/CYINIT_1430 ;
  wire \datoA_next_addsub0000<0>/CY0F_1429 ;
  wire \datoA_next_addsub0000<0>/CYSELF_1421 ;
  wire \datoA_next_addsub0000<0>/BXINV_1419 ;
  wire \datoA_next_addsub0000<0>/XORG_1417 ;
  wire \datoA_next_addsub0000<0>/CYMUXG_1416 ;
  wire \Madd_datoA_next_addsub0000_cy[0] ;
  wire \datoA_next_addsub0000<0>/CY0G_1414 ;
  wire \datoA_next_addsub0000<0>/CYSELG_1406 ;
  wire \datoA_next_addsub0000<2>/XORF_1470 ;
  wire \datoA_next_addsub0000<2>/CYINIT_1469 ;
  wire \datoA_next_addsub0000<2>/CY0F_1468 ;
  wire \datoA_next_addsub0000<2>/XORG_1458 ;
  wire \Madd_datoA_next_addsub0000_cy[2] ;
  wire \datoA_next_addsub0000<2>/CYSELF_1456 ;
  wire \datoA_next_addsub0000<2>/CYMUXFAST_1455 ;
  wire \datoA_next_addsub0000<2>/CYAND_1454 ;
  wire \datoA_next_addsub0000<2>/FASTCARRY_1453 ;
  wire \datoA_next_addsub0000<2>/CYMUXG2_1452 ;
  wire \datoA_next_addsub0000<2>/CYMUXF2_1451 ;
  wire \datoA_next_addsub0000<2>/CY0G_1450 ;
  wire \datoA_next_addsub0000<2>/CYSELG_1442 ;
  wire \datoA_next_addsub0000<4>/XORF_1509 ;
  wire \datoA_next_addsub0000<4>/CYINIT_1508 ;
  wire \datoA_next_addsub0000<4>/CY0F_1507 ;
  wire \datoA_next_addsub0000<4>/XORG_1497 ;
  wire \Madd_datoA_next_addsub0000_cy[4] ;
  wire \datoA_next_addsub0000<4>/CYSELF_1495 ;
  wire \datoA_next_addsub0000<4>/CYMUXFAST_1494 ;
  wire \datoA_next_addsub0000<4>/CYAND_1493 ;
  wire \datoA_next_addsub0000<4>/FASTCARRY_1492 ;
  wire \datoA_next_addsub0000<4>/CYMUXG2_1491 ;
  wire \datoA_next_addsub0000<4>/CYMUXF2_1490 ;
  wire \datoA_next_addsub0000<4>/CY0G_1489 ;
  wire \datoA_next_addsub0000<4>/CYSELG_1482 ;
  wire \datoA_next_addsub0000<6>/XORF_1540 ;
  wire \datoA_next_addsub0000<6>/CYINIT_1539 ;
  wire \datoA_next_addsub0000<6>/CY0F_1538 ;
  wire \datoA_next_addsub0000<6>/CYSELF_1532 ;
  wire \datoA_next_addsub0000<6>/XORG_1529 ;
  wire \Madd_datoA_next_addsub0000_cy[6] ;
  wire \RD_FIFO/O ;
  wire \SEL<0>/O ;
  wire \SEL<1>/O ;
  wire \SEL<2>/O ;
  wire \CH<0>/O ;
  wire \CH<1>/O ;
  wire \CH<2>/O ;
  wire \CH<2>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<2>/OUTPUT/OTCLK1INV_1616 ;
  wire \FIFO_empty/INBUF ;
  wire \CH<3>/O ;
  wire \CH<3>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<3>/OUTPUT/OTCLK1INV_1639 ;
  wire \CH<4>/O ;
  wire \CH<4>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<4>/OUTPUT/OTCLK1INV_1656 ;
  wire \CH<5>/O ;
  wire \CH<6>/O ;
  wire \CH<7>/O ;
  wire \data_out<0>/O ;
  wire \data_out<1>/O ;
  wire \DATOA<0>/O ;
  wire \data_out<2>/O ;
  wire \DATOA<1>/O ;
  wire \FIN/O ;
  wire \data_out<3>/O ;
  wire \DATOA<2>/O ;
  wire \data_out<4>/O ;
  wire \DATOA<3>/O ;
  wire \data_in<0>/INBUF ;
  wire \data_out<5>/O ;
  wire \DATOB<0>/O ;
  wire \DATOA<4>/O ;
  wire \data_in<1>/INBUF ;
  wire \data_out<6>/O ;
  wire \DATOB<1>/O ;
  wire \DATOA<5>/O ;
  wire \data_in<2>/INBUF ;
  wire \data_out<7>/O ;
  wire \DATOB<2>/O ;
  wire \DATOA<6>/O ;
  wire \data_in<3>/INBUF ;
  wire \STATE<0>/O ;
  wire \DATOB<3>/O ;
  wire \DATOA<7>/O ;
  wire \data_in<4>/INBUF ;
  wire \STATE<1>/O ;
  wire \DATOB<4>/O ;
  wire \data_in<5>/INBUF ;
  wire \STATE<2>/O ;
  wire \DATOB<5>/O ;
  wire \data_in<6>/INBUF ;
  wire \DATOB<6>/O ;
  wire \data_in<7>/INBUF ;
  wire \OP<0>/O ;
  wire \DATOB<7>/O ;
  wire \OP<1>/O ;
  wire \OP<2>/O ;
  wire \OP<3>/O ;
  wire \OP<4>/O ;
  wire \OP<5>/O ;
  wire \CLK/INBUF ;
  wire \OP<6>/O ;
  wire \OP<7>/O ;
  wire \RESET/INBUF ;
  wire \FIFO_empty_IBUF_BUFG/S_INVNOT ;
  wire \CLK_BUFGP/BUFG/S_INVNOT ;
  wire \Mmult_datoA_next_mult0001/BCOUT0 ;
  wire \Mmult_datoA_next_mult0001/BCOUT1 ;
  wire \Mmult_datoA_next_mult0001/BCOUT2 ;
  wire \Mmult_datoA_next_mult0001/BCOUT3 ;
  wire \Mmult_datoA_next_mult0001/BCOUT4 ;
  wire \Mmult_datoA_next_mult0001/BCOUT5 ;
  wire \Mmult_datoA_next_mult0001/BCOUT6 ;
  wire \Mmult_datoA_next_mult0001/BCOUT7 ;
  wire \Mmult_datoA_next_mult0001/BCOUT8 ;
  wire \Mmult_datoA_next_mult0001/BCOUT9 ;
  wire \Mmult_datoA_next_mult0001/BCOUT10 ;
  wire \Mmult_datoA_next_mult0001/BCOUT11 ;
  wire \Mmult_datoA_next_mult0001/BCOUT12 ;
  wire \Mmult_datoA_next_mult0001/BCOUT13 ;
  wire \Mmult_datoA_next_mult0001/BCOUT14 ;
  wire \Mmult_datoA_next_mult0001/BCOUT15 ;
  wire \Mmult_datoA_next_mult0001/BCOUT16 ;
  wire \Mmult_datoA_next_mult0001/BCOUT17 ;
  wire \Mmult_datoA_next_mult0001/P8 ;
  wire \Mmult_datoA_next_mult0001/P9 ;
  wire \Mmult_datoA_next_mult0001/P10 ;
  wire \Mmult_datoA_next_mult0001/P11 ;
  wire \Mmult_datoA_next_mult0001/P12 ;
  wire \Mmult_datoA_next_mult0001/P13 ;
  wire \Mmult_datoA_next_mult0001/P14 ;
  wire \Mmult_datoA_next_mult0001/P15 ;
  wire \Mmult_datoA_next_mult0001/P16 ;
  wire \Mmult_datoA_next_mult0001/P17 ;
  wire \Mmult_datoA_next_mult0001/P18 ;
  wire \Mmult_datoA_next_mult0001/P19 ;
  wire \Mmult_datoA_next_mult0001/P20 ;
  wire \Mmult_datoA_next_mult0001/P21 ;
  wire \Mmult_datoA_next_mult0001/P22 ;
  wire \Mmult_datoA_next_mult0001/P23 ;
  wire \Mmult_datoA_next_mult0001/P24 ;
  wire \Mmult_datoA_next_mult0001/P25 ;
  wire \Mmult_datoA_next_mult0001/P26 ;
  wire \Mmult_datoA_next_mult0001/P27 ;
  wire \Mmult_datoA_next_mult0001/P28 ;
  wire \Mmult_datoA_next_mult0001/P29 ;
  wire \Mmult_datoA_next_mult0001/P30 ;
  wire \Mmult_datoA_next_mult0001/P31 ;
  wire \Mmult_datoA_next_mult0001/P32 ;
  wire \Mmult_datoA_next_mult0001/P33 ;
  wire \Mmult_datoA_next_mult0001/P34 ;
  wire \Mmult_datoA_next_mult0001/P35 ;
  wire \Mmult_datoA_next_mult0001/BCIN0 ;
  wire \Mmult_datoA_next_mult0001/BCIN1 ;
  wire \Mmult_datoA_next_mult0001/BCIN2 ;
  wire \Mmult_datoA_next_mult0001/BCIN3 ;
  wire \Mmult_datoA_next_mult0001/BCIN4 ;
  wire \Mmult_datoA_next_mult0001/BCIN5 ;
  wire \Mmult_datoA_next_mult0001/BCIN6 ;
  wire \Mmult_datoA_next_mult0001/BCIN7 ;
  wire \Mmult_datoA_next_mult0001/BCIN8 ;
  wire \Mmult_datoA_next_mult0001/BCIN9 ;
  wire \Mmult_datoA_next_mult0001/BCIN10 ;
  wire \Mmult_datoA_next_mult0001/BCIN11 ;
  wire \Mmult_datoA_next_mult0001/BCIN12 ;
  wire \Mmult_datoA_next_mult0001/BCIN13 ;
  wire \Mmult_datoA_next_mult0001/BCIN14 ;
  wire \Mmult_datoA_next_mult0001/BCIN15 ;
  wire \Mmult_datoA_next_mult0001/BCIN16 ;
  wire \Mmult_datoA_next_mult0001/BCIN17 ;
  wire \Mmult_datoA_next_mult0001/RSTP_INT ;
  wire \Mmult_datoA_next_mult0001/RSTB_INT ;
  wire \Mmult_datoA_next_mult0001/RSTA_INT ;
  wire \Mmult_datoA_next_mult0001/CLK_INT ;
  wire \Mmult_datoA_next_mult0001/CEP_INT ;
  wire \Mmult_datoA_next_mult0001/CEB_INT ;
  wire \Mmult_datoA_next_mult0001/CEA_INT ;
  wire \Mmult_datoB_next_mult0001/BCOUT0 ;
  wire \Mmult_datoB_next_mult0001/BCOUT1 ;
  wire \Mmult_datoB_next_mult0001/BCOUT2 ;
  wire \Mmult_datoB_next_mult0001/BCOUT3 ;
  wire \Mmult_datoB_next_mult0001/BCOUT4 ;
  wire \Mmult_datoB_next_mult0001/BCOUT5 ;
  wire \Mmult_datoB_next_mult0001/BCOUT6 ;
  wire \Mmult_datoB_next_mult0001/BCOUT7 ;
  wire \Mmult_datoB_next_mult0001/BCOUT8 ;
  wire \Mmult_datoB_next_mult0001/BCOUT9 ;
  wire \Mmult_datoB_next_mult0001/BCOUT10 ;
  wire \Mmult_datoB_next_mult0001/BCOUT11 ;
  wire \Mmult_datoB_next_mult0001/BCOUT12 ;
  wire \Mmult_datoB_next_mult0001/BCOUT13 ;
  wire \Mmult_datoB_next_mult0001/BCOUT14 ;
  wire \Mmult_datoB_next_mult0001/BCOUT15 ;
  wire \Mmult_datoB_next_mult0001/BCOUT16 ;
  wire \Mmult_datoB_next_mult0001/BCOUT17 ;
  wire \Mmult_datoB_next_mult0001/P8 ;
  wire \Mmult_datoB_next_mult0001/P9 ;
  wire \Mmult_datoB_next_mult0001/P10 ;
  wire \Mmult_datoB_next_mult0001/P11 ;
  wire \Mmult_datoB_next_mult0001/P12 ;
  wire \Mmult_datoB_next_mult0001/P13 ;
  wire \Mmult_datoB_next_mult0001/P14 ;
  wire \Mmult_datoB_next_mult0001/P15 ;
  wire \Mmult_datoB_next_mult0001/P16 ;
  wire \Mmult_datoB_next_mult0001/P17 ;
  wire \Mmult_datoB_next_mult0001/P18 ;
  wire \Mmult_datoB_next_mult0001/P19 ;
  wire \Mmult_datoB_next_mult0001/P20 ;
  wire \Mmult_datoB_next_mult0001/P21 ;
  wire \Mmult_datoB_next_mult0001/P22 ;
  wire \Mmult_datoB_next_mult0001/P23 ;
  wire \Mmult_datoB_next_mult0001/P24 ;
  wire \Mmult_datoB_next_mult0001/P25 ;
  wire \Mmult_datoB_next_mult0001/P26 ;
  wire \Mmult_datoB_next_mult0001/P27 ;
  wire \Mmult_datoB_next_mult0001/P28 ;
  wire \Mmult_datoB_next_mult0001/P29 ;
  wire \Mmult_datoB_next_mult0001/P30 ;
  wire \Mmult_datoB_next_mult0001/P31 ;
  wire \Mmult_datoB_next_mult0001/P32 ;
  wire \Mmult_datoB_next_mult0001/P33 ;
  wire \Mmult_datoB_next_mult0001/P34 ;
  wire \Mmult_datoB_next_mult0001/P35 ;
  wire \Mmult_datoB_next_mult0001/BCIN0 ;
  wire \Mmult_datoB_next_mult0001/BCIN1 ;
  wire \Mmult_datoB_next_mult0001/BCIN2 ;
  wire \Mmult_datoB_next_mult0001/BCIN3 ;
  wire \Mmult_datoB_next_mult0001/BCIN4 ;
  wire \Mmult_datoB_next_mult0001/BCIN5 ;
  wire \Mmult_datoB_next_mult0001/BCIN6 ;
  wire \Mmult_datoB_next_mult0001/BCIN7 ;
  wire \Mmult_datoB_next_mult0001/BCIN8 ;
  wire \Mmult_datoB_next_mult0001/BCIN9 ;
  wire \Mmult_datoB_next_mult0001/BCIN10 ;
  wire \Mmult_datoB_next_mult0001/BCIN11 ;
  wire \Mmult_datoB_next_mult0001/BCIN12 ;
  wire \Mmult_datoB_next_mult0001/BCIN13 ;
  wire \Mmult_datoB_next_mult0001/BCIN14 ;
  wire \Mmult_datoB_next_mult0001/BCIN15 ;
  wire \Mmult_datoB_next_mult0001/BCIN16 ;
  wire \Mmult_datoB_next_mult0001/BCIN17 ;
  wire \Mmult_datoB_next_mult0001/RSTP_INT ;
  wire \Mmult_datoB_next_mult0001/RSTB_INT ;
  wire \Mmult_datoB_next_mult0001/RSTA_INT ;
  wire \Mmult_datoB_next_mult0001/CLK_INT ;
  wire \Mmult_datoB_next_mult0001/CEP_INT ;
  wire \Mmult_datoB_next_mult0001/CEB_INT ;
  wire \Mmult_datoB_next_mult0001/CEA_INT ;
  wire \N11/F5MUX_2341 ;
  wire \datoA_next<0>11 ;
  wire \N11/BXINV_2334 ;
  wire \datoA_next<0>111_2332 ;
  wire \ch_rnm0_or0000/F5MUX_2366 ;
  wire ch_rnm0_or00001_2364;
  wire \ch_rnm0_or0000/BXINV_2359 ;
  wire ch_rnm0_or00002_2357;
  wire \N23/F5MUX_2391 ;
  wire \datoA_next<0>31 ;
  wire \N23/BXINV_2384 ;
  wire \N23/G ;
  wire \N0/F5MUX_2416 ;
  wire N89;
  wire \N0/BXINV_2409 ;
  wire N88;
  wire \state_rnm0_FSM_FFd1/DXMUX_2447 ;
  wire \state_rnm0_FSM_FFd1/F5MUX_2445 ;
  wire N93;
  wire \state_rnm0_FSM_FFd1/BXINV_2437 ;
  wire N92;
  wire \state_rnm0_FSM_FFd1/CLKINV_2429 ;
  wire \N14/F5MUX_2477 ;
  wire state_rnm0_cmp_eq00011;
  wire \N14/BXINV_2470 ;
  wire \N14/G ;
  wire \select<1>/DXMUX_2508 ;
  wire \select<1>/F5MUX_2506 ;
  wire \select_next<1>33 ;
  wire \select<1>/BXINV_2499 ;
  wire \select_next<1>331_2497 ;
  wire \select<1>/CLKINV_2491 ;
  wire \select_next<2>31/F5MUX_2538 ;
  wire N91;
  wire \select_next<2>31/BXINV_2531 ;
  wire N90;
  wire \d_out<5>/DXMUX_2568 ;
  wire \d_out_next<5>5/O_pack_2 ;
  wire \d_out<5>/CLKINV_2550 ;
  wire \datob_rnm0<0>/DXMUX_2603 ;
  wire \datoB_next<0>9/O_pack_2 ;
  wire \datob_rnm0<0>/CLKINV_2586 ;
  wire \datoa_rnm0<0>/DXMUX_2638 ;
  wire \datoA_next<0>_SW0/O_pack_2 ;
  wire \datoa_rnm0<0>/CLKINV_2621 ;
  wire \datoa_rnm0<1>/DXMUX_2673 ;
  wire \datoA_next<1>_SW0/O_pack_2 ;
  wire \datoa_rnm0<1>/CLKINV_2656 ;
  wire \datoa_rnm0<2>/DXMUX_2708 ;
  wire \datoA_next<2>_SW0/O_pack_2 ;
  wire \datoa_rnm0<2>/CLKINV_2691 ;
  wire \datob_rnm0<1>/DXMUX_2743 ;
  wire \datoB_next<1>9/O_pack_2 ;
  wire \datob_rnm0<1>/CLKINV_2726 ;
  wire \datoa_rnm0<3>/DXMUX_2778 ;
  wire \datoA_next<3>_SW0/O_pack_2 ;
  wire \datoa_rnm0<3>/CLKINV_2761 ;
  wire \datoa_rnm0<4>/DXMUX_2813 ;
  wire \datoA_next<4>_SW0/O_pack_2 ;
  wire \datoa_rnm0<4>/CLKINV_2796 ;
  wire \datoa_rnm0<5>/DXMUX_2848 ;
  wire \datoA_next<5>_SW0/O_pack_2 ;
  wire \datoa_rnm0<5>/CLKINV_2831 ;
  wire \datoa_rnm0<6>/DXMUX_2883 ;
  wire \datoA_next<6>_SW0/O_pack_2 ;
  wire \datoa_rnm0<6>/CLKINV_2866 ;
  wire \datob_rnm0<2>/DXMUX_2918 ;
  wire \datoB_next<2>9/O_pack_2 ;
  wire \datob_rnm0<2>/CLKINV_2901 ;
  wire \datoa_rnm0<7>/DXMUX_2953 ;
  wire \datoA_next<7>_SW0/O_pack_2 ;
  wire \datoa_rnm0<7>/CLKINV_2936 ;
  wire \datob_rnm0<3>/DXMUX_2988 ;
  wire \datoB_next<3>9/O_pack_2 ;
  wire \datob_rnm0<3>/CLKINV_2971 ;
  wire \datob_rnm0<4>/DXMUX_3023 ;
  wire \datoB_next<4>12/O_pack_2 ;
  wire \datob_rnm0<4>/CLKINV_3006 ;
  wire \datob_rnm0<5>/DXMUX_3058 ;
  wire \datoB_next<5>9/O_pack_2 ;
  wire \datob_rnm0<5>/CLKINV_3041 ;
  wire \datob_rnm0<6>/DXMUX_3093 ;
  wire \datoB_next<6>9/O_pack_2 ;
  wire \datob_rnm0<6>/CLKINV_3076 ;
  wire \select<0>/DXMUX_3128 ;
  wire \select_next[0] ;
  wire N25_pack_3;
  wire \select<0>/CLKINV_3112 ;
  wire \d_out<3>/DXMUX_3163 ;
  wire \d_out_next<3>_SW0/O_pack_2 ;
  wire \d_out<3>/CLKINV_3146 ;
  wire \datob_rnm0<7>/DXMUX_3198 ;
  wire \datoB_next<7>9/O_pack_2 ;
  wire \datob_rnm0<7>/CLKINV_3181 ;
  wire \d_out<4>/DXMUX_3233 ;
  wire \d_out_next<4>_SW0/O_pack_2 ;
  wire \d_out<4>/CLKINV_3216 ;
  wire \d_out<0>/DXMUX_3268 ;
  wire \d_out_next<0>5/O_pack_2 ;
  wire \d_out<0>/CLKINV_3250 ;
  wire \d_out<6>/DXMUX_3303 ;
  wire \d_out_next<6>_SW0/O_pack_2 ;
  wire \d_out<6>/CLKINV_3286 ;
  wire \d_out<7>/DXMUX_3338 ;
  wire \d_out_next<7>_SW0/O_pack_2 ;
  wire \d_out<7>/CLKINV_3321 ;
  wire \d_out<1>/DXMUX_3373 ;
  wire \d_out_next<1>5/O_pack_2 ;
  wire \d_out<1>/CLKINV_3355 ;
  wire \d_out<2>/DXMUX_3408 ;
  wire \d_out_next<2>5/O_pack_2 ;
  wire \d_out<2>/CLKINV_3390 ;
  wire \d_out_next<5>4_3436 ;
  wire N18_pack_1;
  wire FIN_OBUF_3460;
  wire \FIN_SW0/O_pack_1 ;
  wire \d_out_next<0>4_3495 ;
  wire \select<2>/DYMUX_3484 ;
  wire \select_next[2] ;
  wire \select<2>/CLKINV_3474 ;
  wire \datoB_next<0>19_3530 ;
  wire \state_rnm0_FSM_FFd2/DYMUX_3519 ;
  wire \state_rnm0_FSM_FFd2-In ;
  wire \state_rnm0_FSM_FFd2/CLKINV_3510 ;
  wire N161;
  wire N211_pack_1;
  wire N19;
  wire select_next_cmp_eq0000_3571;
  wire ch_rnm0_or00001220_3626;
  wire N82_pack_1;
  wire \op_rnm0<5>/DXMUX_3657 ;
  wire \op_next[5] ;
  wire \op_next<5>0_pack_2 ;
  wire \op_rnm0<5>/CLKINV_3641 ;
  wire \select_next<1>2_3708 ;
  wire STATE_0_OBUF_3699;
  wire \datoB_next<0>3_3732 ;
  wire N43;
  wire N3_pack_1;
  wire N78;
  wire ch_rnm0_or0000122_3773;
  wire N49;
  wire N201_pack_1;
  wire \op_next<0>28_3852 ;
  wire \d_out_next<2>4_3876 ;
  wire \d_out_next<1>4_3869 ;
  wire \op_rnm0<2>/DXMUX_3907 ;
  wire \op_next[2] ;
  wire N30_pack_2;
  wire \op_rnm0<2>/CLKINV_3891 ;
  wire state_rnm0_cmp_eq0008_3935;
  wire N86_pack_1;
  wire \op_rnm0<0>/DXMUX_3966 ;
  wire \op_next[0] ;
  wire \op_next<5>8_pack_2 ;
  wire \op_rnm0<0>/CLKINV_3950 ;
  wire \op_next<0>277_3994 ;
  wire N76_pack_1;
  wire \op_next<1>10_4011 ;
  wire \_old_ch_rnm0_1<6>_pack_2 ;
  wire \op_next<0>2135_4066 ;
  wire N84_pack_1;
  wire N80;
  wire \op_next<1>32_pack_1 ;
  wire \op_rnm0<1>/DXMUX_4121 ;
  wire \op_next[1] ;
  wire \op_next<1>45_pack_2 ;
  wire \op_rnm0<1>/CLKINV_4105 ;
  wire N7;
  wire N13_pack_1;
  wire state_rnm0_cmp_le0003;
  wire N41_pack_1;
  wire N10;
  wire \op_next<0>231_pack_1 ;
  wire \CH<0>/OUTPUT/OTCLK1INV_1582 ;
  wire \CH<0>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<1>/OUTPUT/OTCLK1INV_1599 ;
  wire \CH<1>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<5>/OUTPUT/OTCLK1INV_1673 ;
  wire \CH<5>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<6>/OUTPUT/OTCLK1INV_1690 ;
  wire \CH<6>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \CH<7>/OUTPUT/OTCLK1INV_1707 ;
  wire \CH<7>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \state_rnm0_FSM_FFd1/FFX/RSTAND_2452 ;
  wire \select<1>/FFX/RSTAND_2513 ;
  wire \d_out<5>/FFX/RSTAND_2573 ;
  wire \datob_rnm0<0>/FFX/RSTAND_2608 ;
  wire \datoa_rnm0<0>/FFX/RSTAND_2643 ;
  wire \datoa_rnm0<1>/FFX/RSTAND_2678 ;
  wire \datoa_rnm0<2>/FFX/RSTAND_2713 ;
  wire \datob_rnm0<1>/FFX/RSTAND_2748 ;
  wire \datoa_rnm0<3>/FFX/RSTAND_2783 ;
  wire \datoa_rnm0<4>/FFX/RSTAND_2818 ;
  wire \datoa_rnm0<5>/FFX/RSTAND_2853 ;
  wire \datoa_rnm0<6>/FFX/RSTAND_2888 ;
  wire \datob_rnm0<2>/FFX/RSTAND_2923 ;
  wire \datoa_rnm0<7>/FFX/RSTAND_2958 ;
  wire \datob_rnm0<3>/FFX/RSTAND_2993 ;
  wire \datob_rnm0<4>/FFX/RSTAND_3028 ;
  wire \datob_rnm0<5>/FFX/RSTAND_3063 ;
  wire \datob_rnm0<6>/FFX/RSTAND_3098 ;
  wire \select<0>/FFX/RSTAND_3133 ;
  wire \d_out<3>/FFX/RSTAND_3168 ;
  wire \datob_rnm0<7>/FFX/RSTAND_3203 ;
  wire \d_out<4>/FFX/RSTAND_3238 ;
  wire \d_out<0>/FFX/RSTAND_3273 ;
  wire \d_out<6>/FFX/RSTAND_3308 ;
  wire \d_out<7>/FFX/RSTAND_3343 ;
  wire \d_out<1>/FFX/RSTAND_3378 ;
  wire \d_out<2>/FFX/RSTAND_3413 ;
  wire \select<2>/FFY/RSTAND_3489 ;
  wire \state_rnm0_FSM_FFd2/FFY/RSTAND_3524 ;
  wire \op_rnm0<5>/FFX/SET ;
  wire \op_rnm0<2>/FFX/RSTAND_3912 ;
  wire \op_rnm0<0>/FFX/RSTAND_3971 ;
  wire \op_rnm0<1>/FFX/RSTAND_4126 ;
  wire \STATE<2>/OUTPUT/OFF/O1INV_1951 ;
  wire \OP<3>/OUTPUT/OFF/O1INV_2019 ;
  wire \OP<4>/OUTPUT/OFF/O1INV_2027 ;
  wire \OP<6>/OUTPUT/OFF/O1INV_2049 ;
  wire \OP<7>/OUTPUT/OFF/O1INV_2057 ;
  wire VCC;
  wire \NlwInverterSignal_ch_rnm0_2/CLK ;
  wire GND;
  wire \NlwInverterSignal_ch_rnm0_3/CLK ;
  wire \NlwInverterSignal_ch_rnm0_4/CLK ;
  wire \NlwInverterSignal_ch_rnm0_0/CLK ;
  wire \NlwInverterSignal_ch_rnm0_1/CLK ;
  wire \NlwInverterSignal_ch_rnm0_5/CLK ;
  wire \NlwInverterSignal_ch_rnm0_6/CLK ;
  wire \NlwInverterSignal_ch_rnm0_7/CLK ;
  wire [7 : 0] datoB_next_mult0001;
  wire [7 : 0] datoB_next_addsub0000;
  wire [4 : 4] Msub__old_ch_rnm0_1_cy;
  wire [5 : 5] Msub__old_ch_rnm0_1_lut;
  wire [7 : 0] datoA_next_mult0001;
  wire [7 : 0] datoA_next_addsub0000;
  wire [2 : 0] select;
  wire [7 : 0] d_out;
  wire [7 : 0] datoa_rnm0;
  wire [7 : 0] datob_rnm0;
  wire [7 : 5] _old_ch_rnm0_1;
  wire [7 : 0] Madd_datoB_next_addsub0000_lut;
  wire [7 : 0] Madd_datoA_next_addsub0000_lut;
  wire [7 : 0] ch_rnm0;
  wire [7 : 0] d_out_next;
  wire [7 : 0] datoB_next;
  wire [7 : 0] datoA_next;
  wire [7 : 0] ch_rnm0_mux0000;
  initial $sdf_annotate("netgen/map/int_rx_map.sdf");
  X_BUF   \datoB_next_addsub0000<0>/XUSED  (
    .I(\datoB_next_addsub0000<0>/XORF_1286 ),
    .O(datoB_next_addsub0000[0])
  );
  X_XOR2   \datoB_next_addsub0000<0>/XORF  (
    .I0(\datoB_next_addsub0000<0>/CYINIT_1285 ),
    .I1(Madd_datoB_next_addsub0000_lut[0]),
    .O(\datoB_next_addsub0000<0>/XORF_1286 )
  );
  X_MUX2   \datoB_next_addsub0000<0>/CYMUXF  (
    .IA(\datoB_next_addsub0000<0>/CY0F_1284 ),
    .IB(\datoB_next_addsub0000<0>/CYINIT_1285 ),
    .SEL(\datoB_next_addsub0000<0>/CYSELF_1276 ),
    .O(\Madd_datoB_next_addsub0000_cy[0] )
  );
  X_BUF   \datoB_next_addsub0000<0>/CYINIT  (
    .I(\datoB_next_addsub0000<0>/BXINV_1274 ),
    .O(\datoB_next_addsub0000<0>/CYINIT_1285 )
  );
  X_BUF   \datoB_next_addsub0000<0>/CY0F  (
    .I(datoB_next_mult0001[0]),
    .O(\datoB_next_addsub0000<0>/CY0F_1284 )
  );
  X_BUF   \datoB_next_addsub0000<0>/CYSELF  (
    .I(Madd_datoB_next_addsub0000_lut[0]),
    .O(\datoB_next_addsub0000<0>/CYSELF_1276 )
  );
  X_BUF   \datoB_next_addsub0000<0>/BXINV  (
    .I(1'b0),
    .O(\datoB_next_addsub0000<0>/BXINV_1274 )
  );
  X_BUF   \datoB_next_addsub0000<0>/YUSED  (
    .I(\datoB_next_addsub0000<0>/XORG_1272 ),
    .O(datoB_next_addsub0000[1])
  );
  X_XOR2   \datoB_next_addsub0000<0>/XORG  (
    .I0(\Madd_datoB_next_addsub0000_cy[0] ),
    .I1(Madd_datoB_next_addsub0000_lut[1]),
    .O(\datoB_next_addsub0000<0>/XORG_1272 )
  );
  X_BUF   \datoB_next_addsub0000<0>/COUTUSED  (
    .I(\datoB_next_addsub0000<0>/CYMUXG_1271 ),
    .O(\Madd_datoB_next_addsub0000_cy[1] )
  );
  X_MUX2   \datoB_next_addsub0000<0>/CYMUXG  (
    .IA(\datoB_next_addsub0000<0>/CY0G_1269 ),
    .IB(\Madd_datoB_next_addsub0000_cy[0] ),
    .SEL(\datoB_next_addsub0000<0>/CYSELG_1261 ),
    .O(\datoB_next_addsub0000<0>/CYMUXG_1271 )
  );
  X_BUF   \datoB_next_addsub0000<0>/CY0G  (
    .I(datoB_next_mult0001[1]),
    .O(\datoB_next_addsub0000<0>/CY0G_1269 )
  );
  X_BUF   \datoB_next_addsub0000<0>/CYSELG  (
    .I(Madd_datoB_next_addsub0000_lut[1]),
    .O(\datoB_next_addsub0000<0>/CYSELG_1261 )
  );
  X_BUF   \datoB_next_addsub0000<2>/XUSED  (
    .I(\datoB_next_addsub0000<2>/XORF_1325 ),
    .O(datoB_next_addsub0000[2])
  );
  X_XOR2   \datoB_next_addsub0000<2>/XORF  (
    .I0(\datoB_next_addsub0000<2>/CYINIT_1324 ),
    .I1(Madd_datoB_next_addsub0000_lut[2]),
    .O(\datoB_next_addsub0000<2>/XORF_1325 )
  );
  X_MUX2   \datoB_next_addsub0000<2>/CYMUXF  (
    .IA(\datoB_next_addsub0000<2>/CY0F_1323 ),
    .IB(\datoB_next_addsub0000<2>/CYINIT_1324 ),
    .SEL(\datoB_next_addsub0000<2>/CYSELF_1311 ),
    .O(\Madd_datoB_next_addsub0000_cy[2] )
  );
  X_MUX2   \datoB_next_addsub0000<2>/CYMUXF2  (
    .IA(\datoB_next_addsub0000<2>/CY0F_1323 ),
    .IB(\datoB_next_addsub0000<2>/CY0F_1323 ),
    .SEL(\datoB_next_addsub0000<2>/CYSELF_1311 ),
    .O(\datoB_next_addsub0000<2>/CYMUXF2_1306 )
  );
  X_BUF   \datoB_next_addsub0000<2>/CYINIT  (
    .I(\Madd_datoB_next_addsub0000_cy[1] ),
    .O(\datoB_next_addsub0000<2>/CYINIT_1324 )
  );
  X_BUF   \datoB_next_addsub0000<2>/CY0F  (
    .I(datoB_next_mult0001[2]),
    .O(\datoB_next_addsub0000<2>/CY0F_1323 )
  );
  X_BUF   \datoB_next_addsub0000<2>/CYSELF  (
    .I(Madd_datoB_next_addsub0000_lut[2]),
    .O(\datoB_next_addsub0000<2>/CYSELF_1311 )
  );
  X_BUF   \datoB_next_addsub0000<2>/YUSED  (
    .I(\datoB_next_addsub0000<2>/XORG_1313 ),
    .O(datoB_next_addsub0000[3])
  );
  X_XOR2   \datoB_next_addsub0000<2>/XORG  (
    .I0(\Madd_datoB_next_addsub0000_cy[2] ),
    .I1(Madd_datoB_next_addsub0000_lut[3]),
    .O(\datoB_next_addsub0000<2>/XORG_1313 )
  );
  X_BUF   \datoB_next_addsub0000<2>/COUTUSED  (
    .I(\datoB_next_addsub0000<2>/CYMUXFAST_1310 ),
    .O(\Madd_datoB_next_addsub0000_cy[3] )
  );
  X_BUF   \datoB_next_addsub0000<2>/FASTCARRY  (
    .I(\Madd_datoB_next_addsub0000_cy[1] ),
    .O(\datoB_next_addsub0000<2>/FASTCARRY_1308 )
  );
  X_AND2   \datoB_next_addsub0000<2>/CYAND  (
    .I0(\datoB_next_addsub0000<2>/CYSELG_1297 ),
    .I1(\datoB_next_addsub0000<2>/CYSELF_1311 ),
    .O(\datoB_next_addsub0000<2>/CYAND_1309 )
  );
  X_MUX2   \datoB_next_addsub0000<2>/CYMUXFAST  (
    .IA(\datoB_next_addsub0000<2>/CYMUXG2_1307 ),
    .IB(\datoB_next_addsub0000<2>/FASTCARRY_1308 ),
    .SEL(\datoB_next_addsub0000<2>/CYAND_1309 ),
    .O(\datoB_next_addsub0000<2>/CYMUXFAST_1310 )
  );
  X_MUX2   \datoB_next_addsub0000<2>/CYMUXG2  (
    .IA(\datoB_next_addsub0000<2>/CY0G_1305 ),
    .IB(\datoB_next_addsub0000<2>/CYMUXF2_1306 ),
    .SEL(\datoB_next_addsub0000<2>/CYSELG_1297 ),
    .O(\datoB_next_addsub0000<2>/CYMUXG2_1307 )
  );
  X_BUF   \datoB_next_addsub0000<2>/CY0G  (
    .I(datoB_next_mult0001[3]),
    .O(\datoB_next_addsub0000<2>/CY0G_1305 )
  );
  X_BUF   \datoB_next_addsub0000<2>/CYSELG  (
    .I(Madd_datoB_next_addsub0000_lut[3]),
    .O(\datoB_next_addsub0000<2>/CYSELG_1297 )
  );
  X_BUF   \datoB_next_addsub0000<4>/XUSED  (
    .I(\datoB_next_addsub0000<4>/XORF_1364 ),
    .O(datoB_next_addsub0000[4])
  );
  X_XOR2   \datoB_next_addsub0000<4>/XORF  (
    .I0(\datoB_next_addsub0000<4>/CYINIT_1363 ),
    .I1(Madd_datoB_next_addsub0000_lut[4]),
    .O(\datoB_next_addsub0000<4>/XORF_1364 )
  );
  X_MUX2   \datoB_next_addsub0000<4>/CYMUXF  (
    .IA(\datoB_next_addsub0000<4>/CY0F_1362 ),
    .IB(\datoB_next_addsub0000<4>/CYINIT_1363 ),
    .SEL(\datoB_next_addsub0000<4>/CYSELF_1350 ),
    .O(\Madd_datoB_next_addsub0000_cy[4] )
  );
  X_MUX2   \datoB_next_addsub0000<4>/CYMUXF2  (
    .IA(\datoB_next_addsub0000<4>/CY0F_1362 ),
    .IB(\datoB_next_addsub0000<4>/CY0F_1362 ),
    .SEL(\datoB_next_addsub0000<4>/CYSELF_1350 ),
    .O(\datoB_next_addsub0000<4>/CYMUXF2_1345 )
  );
  X_BUF   \datoB_next_addsub0000<4>/CYINIT  (
    .I(\Madd_datoB_next_addsub0000_cy[3] ),
    .O(\datoB_next_addsub0000<4>/CYINIT_1363 )
  );
  X_BUF   \datoB_next_addsub0000<4>/CY0F  (
    .I(datoB_next_mult0001[4]),
    .O(\datoB_next_addsub0000<4>/CY0F_1362 )
  );
  X_BUF   \datoB_next_addsub0000<4>/CYSELF  (
    .I(Madd_datoB_next_addsub0000_lut[4]),
    .O(\datoB_next_addsub0000<4>/CYSELF_1350 )
  );
  X_BUF   \datoB_next_addsub0000<4>/YUSED  (
    .I(\datoB_next_addsub0000<4>/XORG_1352 ),
    .O(datoB_next_addsub0000[5])
  );
  X_XOR2   \datoB_next_addsub0000<4>/XORG  (
    .I0(\Madd_datoB_next_addsub0000_cy[4] ),
    .I1(Madd_datoB_next_addsub0000_lut[5]),
    .O(\datoB_next_addsub0000<4>/XORG_1352 )
  );
  X_BUF   \datoB_next_addsub0000<4>/FASTCARRY  (
    .I(\Madd_datoB_next_addsub0000_cy[3] ),
    .O(\datoB_next_addsub0000<4>/FASTCARRY_1347 )
  );
  X_AND2   \datoB_next_addsub0000<4>/CYAND  (
    .I0(\datoB_next_addsub0000<4>/CYSELG_1337 ),
    .I1(\datoB_next_addsub0000<4>/CYSELF_1350 ),
    .O(\datoB_next_addsub0000<4>/CYAND_1348 )
  );
  X_MUX2   \datoB_next_addsub0000<4>/CYMUXFAST  (
    .IA(\datoB_next_addsub0000<4>/CYMUXG2_1346 ),
    .IB(\datoB_next_addsub0000<4>/FASTCARRY_1347 ),
    .SEL(\datoB_next_addsub0000<4>/CYAND_1348 ),
    .O(\datoB_next_addsub0000<4>/CYMUXFAST_1349 )
  );
  X_MUX2   \datoB_next_addsub0000<4>/CYMUXG2  (
    .IA(\datoB_next_addsub0000<4>/CY0G_1344 ),
    .IB(\datoB_next_addsub0000<4>/CYMUXF2_1345 ),
    .SEL(\datoB_next_addsub0000<4>/CYSELG_1337 ),
    .O(\datoB_next_addsub0000<4>/CYMUXG2_1346 )
  );
  X_BUF   \datoB_next_addsub0000<4>/CY0G  (
    .I(datoB_next_mult0001[5]),
    .O(\datoB_next_addsub0000<4>/CY0G_1344 )
  );
  X_BUF   \datoB_next_addsub0000<4>/CYSELG  (
    .I(Madd_datoB_next_addsub0000_lut[5]),
    .O(\datoB_next_addsub0000<4>/CYSELG_1337 )
  );
  X_BUF   \datoB_next_addsub0000<6>/XUSED  (
    .I(\datoB_next_addsub0000<6>/XORF_1395 ),
    .O(datoB_next_addsub0000[6])
  );
  X_XOR2   \datoB_next_addsub0000<6>/XORF  (
    .I0(\datoB_next_addsub0000<6>/CYINIT_1394 ),
    .I1(Madd_datoB_next_addsub0000_lut[6]),
    .O(\datoB_next_addsub0000<6>/XORF_1395 )
  );
  X_MUX2   \datoB_next_addsub0000<6>/CYMUXF  (
    .IA(\datoB_next_addsub0000<6>/CY0F_1393 ),
    .IB(\datoB_next_addsub0000<6>/CYINIT_1394 ),
    .SEL(\datoB_next_addsub0000<6>/CYSELF_1387 ),
    .O(\Madd_datoB_next_addsub0000_cy[6] )
  );
  X_BUF   \datoB_next_addsub0000<6>/CYINIT  (
    .I(\datoB_next_addsub0000<4>/CYMUXFAST_1349 ),
    .O(\datoB_next_addsub0000<6>/CYINIT_1394 )
  );
  X_BUF   \datoB_next_addsub0000<6>/CY0F  (
    .I(datoB_next_mult0001[6]),
    .O(\datoB_next_addsub0000<6>/CY0F_1393 )
  );
  X_BUF   \datoB_next_addsub0000<6>/CYSELF  (
    .I(Madd_datoB_next_addsub0000_lut[6]),
    .O(\datoB_next_addsub0000<6>/CYSELF_1387 )
  );
  X_BUF   \datoB_next_addsub0000<6>/YUSED  (
    .I(\datoB_next_addsub0000<6>/XORG_1384 ),
    .O(datoB_next_addsub0000[7])
  );
  X_XOR2   \datoB_next_addsub0000<6>/XORG  (
    .I0(\Madd_datoB_next_addsub0000_cy[6] ),
    .I1(Madd_datoB_next_addsub0000_lut[7]),
    .O(\datoB_next_addsub0000<6>/XORG_1384 )
  );
  X_BUF   \datoA_next_addsub0000<0>/XUSED  (
    .I(\datoA_next_addsub0000<0>/XORF_1431 ),
    .O(datoA_next_addsub0000[0])
  );
  X_XOR2   \datoA_next_addsub0000<0>/XORF  (
    .I0(\datoA_next_addsub0000<0>/CYINIT_1430 ),
    .I1(Madd_datoA_next_addsub0000_lut[0]),
    .O(\datoA_next_addsub0000<0>/XORF_1431 )
  );
  X_MUX2   \datoA_next_addsub0000<0>/CYMUXF  (
    .IA(\datoA_next_addsub0000<0>/CY0F_1429 ),
    .IB(\datoA_next_addsub0000<0>/CYINIT_1430 ),
    .SEL(\datoA_next_addsub0000<0>/CYSELF_1421 ),
    .O(\Madd_datoA_next_addsub0000_cy[0] )
  );
  X_BUF   \datoA_next_addsub0000<0>/CYINIT  (
    .I(\datoA_next_addsub0000<0>/BXINV_1419 ),
    .O(\datoA_next_addsub0000<0>/CYINIT_1430 )
  );
  X_BUF   \datoA_next_addsub0000<0>/CY0F  (
    .I(datoA_next_mult0001[0]),
    .O(\datoA_next_addsub0000<0>/CY0F_1429 )
  );
  X_BUF   \datoA_next_addsub0000<0>/CYSELF  (
    .I(Madd_datoA_next_addsub0000_lut[0]),
    .O(\datoA_next_addsub0000<0>/CYSELF_1421 )
  );
  X_BUF   \datoA_next_addsub0000<0>/BXINV  (
    .I(1'b0),
    .O(\datoA_next_addsub0000<0>/BXINV_1419 )
  );
  X_BUF   \datoA_next_addsub0000<0>/YUSED  (
    .I(\datoA_next_addsub0000<0>/XORG_1417 ),
    .O(datoA_next_addsub0000[1])
  );
  X_XOR2   \datoA_next_addsub0000<0>/XORG  (
    .I0(\Madd_datoA_next_addsub0000_cy[0] ),
    .I1(Madd_datoA_next_addsub0000_lut[1]),
    .O(\datoA_next_addsub0000<0>/XORG_1417 )
  );
  X_BUF   \datoA_next_addsub0000<0>/COUTUSED  (
    .I(\datoA_next_addsub0000<0>/CYMUXG_1416 ),
    .O(\Madd_datoA_next_addsub0000_cy[1] )
  );
  X_MUX2   \datoA_next_addsub0000<0>/CYMUXG  (
    .IA(\datoA_next_addsub0000<0>/CY0G_1414 ),
    .IB(\Madd_datoA_next_addsub0000_cy[0] ),
    .SEL(\datoA_next_addsub0000<0>/CYSELG_1406 ),
    .O(\datoA_next_addsub0000<0>/CYMUXG_1416 )
  );
  X_BUF   \datoA_next_addsub0000<0>/CY0G  (
    .I(datoA_next_mult0001[1]),
    .O(\datoA_next_addsub0000<0>/CY0G_1414 )
  );
  X_BUF   \datoA_next_addsub0000<0>/CYSELG  (
    .I(Madd_datoA_next_addsub0000_lut[1]),
    .O(\datoA_next_addsub0000<0>/CYSELG_1406 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoA_next_addsub0000_lut<0>  (
    .ADR0(datoA_next_mult0001[0]),
    .ADR1(data_in_0_IBUF_1083),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoA_next_addsub0000_lut<2>  (
    .ADR0(datoA_next_mult0001[2]),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[2])
  );
  X_BUF   \datoA_next_addsub0000<2>/XUSED  (
    .I(\datoA_next_addsub0000<2>/XORF_1470 ),
    .O(datoA_next_addsub0000[2])
  );
  X_XOR2   \datoA_next_addsub0000<2>/XORF  (
    .I0(\datoA_next_addsub0000<2>/CYINIT_1469 ),
    .I1(Madd_datoA_next_addsub0000_lut[2]),
    .O(\datoA_next_addsub0000<2>/XORF_1470 )
  );
  X_MUX2   \datoA_next_addsub0000<2>/CYMUXF  (
    .IA(\datoA_next_addsub0000<2>/CY0F_1468 ),
    .IB(\datoA_next_addsub0000<2>/CYINIT_1469 ),
    .SEL(\datoA_next_addsub0000<2>/CYSELF_1456 ),
    .O(\Madd_datoA_next_addsub0000_cy[2] )
  );
  X_MUX2   \datoA_next_addsub0000<2>/CYMUXF2  (
    .IA(\datoA_next_addsub0000<2>/CY0F_1468 ),
    .IB(\datoA_next_addsub0000<2>/CY0F_1468 ),
    .SEL(\datoA_next_addsub0000<2>/CYSELF_1456 ),
    .O(\datoA_next_addsub0000<2>/CYMUXF2_1451 )
  );
  X_BUF   \datoA_next_addsub0000<2>/CYINIT  (
    .I(\Madd_datoA_next_addsub0000_cy[1] ),
    .O(\datoA_next_addsub0000<2>/CYINIT_1469 )
  );
  X_BUF   \datoA_next_addsub0000<2>/CY0F  (
    .I(datoA_next_mult0001[2]),
    .O(\datoA_next_addsub0000<2>/CY0F_1468 )
  );
  X_BUF   \datoA_next_addsub0000<2>/CYSELF  (
    .I(Madd_datoA_next_addsub0000_lut[2]),
    .O(\datoA_next_addsub0000<2>/CYSELF_1456 )
  );
  X_BUF   \datoA_next_addsub0000<2>/YUSED  (
    .I(\datoA_next_addsub0000<2>/XORG_1458 ),
    .O(datoA_next_addsub0000[3])
  );
  X_XOR2   \datoA_next_addsub0000<2>/XORG  (
    .I0(\Madd_datoA_next_addsub0000_cy[2] ),
    .I1(Madd_datoA_next_addsub0000_lut[3]),
    .O(\datoA_next_addsub0000<2>/XORG_1458 )
  );
  X_BUF   \datoA_next_addsub0000<2>/COUTUSED  (
    .I(\datoA_next_addsub0000<2>/CYMUXFAST_1455 ),
    .O(\Madd_datoA_next_addsub0000_cy[3] )
  );
  X_BUF   \datoA_next_addsub0000<2>/FASTCARRY  (
    .I(\Madd_datoA_next_addsub0000_cy[1] ),
    .O(\datoA_next_addsub0000<2>/FASTCARRY_1453 )
  );
  X_AND2   \datoA_next_addsub0000<2>/CYAND  (
    .I0(\datoA_next_addsub0000<2>/CYSELG_1442 ),
    .I1(\datoA_next_addsub0000<2>/CYSELF_1456 ),
    .O(\datoA_next_addsub0000<2>/CYAND_1454 )
  );
  X_MUX2   \datoA_next_addsub0000<2>/CYMUXFAST  (
    .IA(\datoA_next_addsub0000<2>/CYMUXG2_1452 ),
    .IB(\datoA_next_addsub0000<2>/FASTCARRY_1453 ),
    .SEL(\datoA_next_addsub0000<2>/CYAND_1454 ),
    .O(\datoA_next_addsub0000<2>/CYMUXFAST_1455 )
  );
  X_MUX2   \datoA_next_addsub0000<2>/CYMUXG2  (
    .IA(\datoA_next_addsub0000<2>/CY0G_1450 ),
    .IB(\datoA_next_addsub0000<2>/CYMUXF2_1451 ),
    .SEL(\datoA_next_addsub0000<2>/CYSELG_1442 ),
    .O(\datoA_next_addsub0000<2>/CYMUXG2_1452 )
  );
  X_BUF   \datoA_next_addsub0000<2>/CY0G  (
    .I(datoA_next_mult0001[3]),
    .O(\datoA_next_addsub0000<2>/CY0G_1450 )
  );
  X_BUF   \datoA_next_addsub0000<2>/CYSELG  (
    .I(Madd_datoA_next_addsub0000_lut[3]),
    .O(\datoA_next_addsub0000<2>/CYSELG_1442 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoA_next_addsub0000_lut<3>  (
    .ADR0(datoA_next_mult0001[3]),
    .ADR1(data_in_3_IBUF_1092),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[3])
  );
  X_BUF   \datoA_next_addsub0000<4>/XUSED  (
    .I(\datoA_next_addsub0000<4>/XORF_1509 ),
    .O(datoA_next_addsub0000[4])
  );
  X_XOR2   \datoA_next_addsub0000<4>/XORF  (
    .I0(\datoA_next_addsub0000<4>/CYINIT_1508 ),
    .I1(Madd_datoA_next_addsub0000_lut[4]),
    .O(\datoA_next_addsub0000<4>/XORF_1509 )
  );
  X_MUX2   \datoA_next_addsub0000<4>/CYMUXF  (
    .IA(\datoA_next_addsub0000<4>/CY0F_1507 ),
    .IB(\datoA_next_addsub0000<4>/CYINIT_1508 ),
    .SEL(\datoA_next_addsub0000<4>/CYSELF_1495 ),
    .O(\Madd_datoA_next_addsub0000_cy[4] )
  );
  X_MUX2   \datoA_next_addsub0000<4>/CYMUXF2  (
    .IA(\datoA_next_addsub0000<4>/CY0F_1507 ),
    .IB(\datoA_next_addsub0000<4>/CY0F_1507 ),
    .SEL(\datoA_next_addsub0000<4>/CYSELF_1495 ),
    .O(\datoA_next_addsub0000<4>/CYMUXF2_1490 )
  );
  X_BUF   \datoA_next_addsub0000<4>/CYINIT  (
    .I(\Madd_datoA_next_addsub0000_cy[3] ),
    .O(\datoA_next_addsub0000<4>/CYINIT_1508 )
  );
  X_BUF   \datoA_next_addsub0000<4>/CY0F  (
    .I(datoA_next_mult0001[4]),
    .O(\datoA_next_addsub0000<4>/CY0F_1507 )
  );
  X_BUF   \datoA_next_addsub0000<4>/CYSELF  (
    .I(Madd_datoA_next_addsub0000_lut[4]),
    .O(\datoA_next_addsub0000<4>/CYSELF_1495 )
  );
  X_BUF   \datoA_next_addsub0000<4>/YUSED  (
    .I(\datoA_next_addsub0000<4>/XORG_1497 ),
    .O(datoA_next_addsub0000[5])
  );
  X_XOR2   \datoA_next_addsub0000<4>/XORG  (
    .I0(\Madd_datoA_next_addsub0000_cy[4] ),
    .I1(Madd_datoA_next_addsub0000_lut[5]),
    .O(\datoA_next_addsub0000<4>/XORG_1497 )
  );
  X_BUF   \datoA_next_addsub0000<4>/FASTCARRY  (
    .I(\Madd_datoA_next_addsub0000_cy[3] ),
    .O(\datoA_next_addsub0000<4>/FASTCARRY_1492 )
  );
  X_AND2   \datoA_next_addsub0000<4>/CYAND  (
    .I0(\datoA_next_addsub0000<4>/CYSELG_1482 ),
    .I1(\datoA_next_addsub0000<4>/CYSELF_1495 ),
    .O(\datoA_next_addsub0000<4>/CYAND_1493 )
  );
  X_MUX2   \datoA_next_addsub0000<4>/CYMUXFAST  (
    .IA(\datoA_next_addsub0000<4>/CYMUXG2_1491 ),
    .IB(\datoA_next_addsub0000<4>/FASTCARRY_1492 ),
    .SEL(\datoA_next_addsub0000<4>/CYAND_1493 ),
    .O(\datoA_next_addsub0000<4>/CYMUXFAST_1494 )
  );
  X_MUX2   \datoA_next_addsub0000<4>/CYMUXG2  (
    .IA(\datoA_next_addsub0000<4>/CY0G_1489 ),
    .IB(\datoA_next_addsub0000<4>/CYMUXF2_1490 ),
    .SEL(\datoA_next_addsub0000<4>/CYSELG_1482 ),
    .O(\datoA_next_addsub0000<4>/CYMUXG2_1491 )
  );
  X_BUF   \datoA_next_addsub0000<4>/CY0G  (
    .I(datoA_next_mult0001[5]),
    .O(\datoA_next_addsub0000<4>/CY0G_1489 )
  );
  X_BUF   \datoA_next_addsub0000<4>/CYSELG  (
    .I(Madd_datoA_next_addsub0000_lut[5]),
    .O(\datoA_next_addsub0000<4>/CYSELG_1482 )
  );
  X_BUF   \datoA_next_addsub0000<6>/XUSED  (
    .I(\datoA_next_addsub0000<6>/XORF_1540 ),
    .O(datoA_next_addsub0000[6])
  );
  X_XOR2   \datoA_next_addsub0000<6>/XORF  (
    .I0(\datoA_next_addsub0000<6>/CYINIT_1539 ),
    .I1(Madd_datoA_next_addsub0000_lut[6]),
    .O(\datoA_next_addsub0000<6>/XORF_1540 )
  );
  X_MUX2   \datoA_next_addsub0000<6>/CYMUXF  (
    .IA(\datoA_next_addsub0000<6>/CY0F_1538 ),
    .IB(\datoA_next_addsub0000<6>/CYINIT_1539 ),
    .SEL(\datoA_next_addsub0000<6>/CYSELF_1532 ),
    .O(\Madd_datoA_next_addsub0000_cy[6] )
  );
  X_BUF   \datoA_next_addsub0000<6>/CYINIT  (
    .I(\datoA_next_addsub0000<4>/CYMUXFAST_1494 ),
    .O(\datoA_next_addsub0000<6>/CYINIT_1539 )
  );
  X_BUF   \datoA_next_addsub0000<6>/CY0F  (
    .I(datoA_next_mult0001[6]),
    .O(\datoA_next_addsub0000<6>/CY0F_1538 )
  );
  X_BUF   \datoA_next_addsub0000<6>/CYSELF  (
    .I(Madd_datoA_next_addsub0000_lut[6]),
    .O(\datoA_next_addsub0000<6>/CYSELF_1532 )
  );
  X_BUF   \datoA_next_addsub0000<6>/YUSED  (
    .I(\datoA_next_addsub0000<6>/XORG_1529 ),
    .O(datoA_next_addsub0000[7])
  );
  X_XOR2   \datoA_next_addsub0000<6>/XORG  (
    .I0(\Madd_datoA_next_addsub0000_cy[6] ),
    .I1(Madd_datoA_next_addsub0000_lut[7]),
    .O(\datoA_next_addsub0000<6>/XORG_1529 )
  );
  X_OPAD   \RD_FIFO/PAD  (
    .PAD(RD_FIFO)
  );
  X_OBUF   RD_FIFO_OBUF (
    .I(\RD_FIFO/O ),
    .O(RD_FIFO)
  );
  X_OPAD   \SEL<0>/PAD  (
    .PAD(SEL[0])
  );
  X_OBUF   SEL_0_OBUF (
    .I(\SEL<0>/O ),
    .O(SEL[0])
  );
  X_OPAD   \SEL<1>/PAD  (
    .PAD(SEL[1])
  );
  X_OBUF   SEL_1_OBUF (
    .I(\SEL<1>/O ),
    .O(SEL[1])
  );
  X_OPAD   \SEL<2>/PAD  (
    .PAD(SEL[2])
  );
  X_OBUF   SEL_2_OBUF (
    .I(\SEL<2>/O ),
    .O(SEL[2])
  );
  X_OPAD   \CH<0>/PAD  (
    .PAD(CH[0])
  );
  X_OBUF   CH_0_OBUF (
    .I(\CH<0>/O ),
    .O(CH[0])
  );
  X_OPAD   \CH<1>/PAD  (
    .PAD(CH[1])
  );
  X_OBUF   CH_1_OBUF (
    .I(\CH<1>/O ),
    .O(CH[1])
  );
  X_OPAD   \CH<2>/PAD  (
    .PAD(CH[2])
  );
  X_OBUF   CH_2_OBUF (
    .I(\CH<2>/O ),
    .O(CH[2])
  );
  X_BUF   \CH<2>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[2]),
    .O(\CH<2>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \CH<2>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[2]),
    .O(\CH<2>/O )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_2 (
    .I(\CH<2>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[2])
  );
  X_BUF   \CH<2>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<2>/OUTPUT/OTCLK1INV_1616 )
  );
  X_IPAD   \FIFO_empty/PAD  (
    .PAD(FIFO_empty)
  );
  X_BUF   FIFO_empty_IBUF (
    .I(FIFO_empty),
    .O(\FIFO_empty/INBUF )
  );
  X_BUF   \FIFO_empty/IFF/IMUX  (
    .I(\FIFO_empty/INBUF ),
    .O(FIFO_empty_IBUF1)
  );
  X_OPAD   \CH<3>/PAD  (
    .PAD(CH[3])
  );
  X_OBUF   CH_3_OBUF (
    .I(\CH<3>/O ),
    .O(CH[3])
  );
  X_BUF   \CH<3>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[3]),
    .O(\CH<3>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \CH<3>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[3]),
    .O(\CH<3>/O )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_3 (
    .I(\CH<3>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[3])
  );
  X_BUF   \CH<3>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<3>/OUTPUT/OTCLK1INV_1639 )
  );
  X_OPAD   \CH<4>/PAD  (
    .PAD(CH[4])
  );
  X_OBUF   CH_4_OBUF (
    .I(\CH<4>/O ),
    .O(CH[4])
  );
  X_BUF   \CH<4>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[4]),
    .O(\CH<4>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \CH<4>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[4]),
    .O(\CH<4>/O )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_4 (
    .I(\CH<4>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[4])
  );
  X_BUF   \CH<4>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<4>/OUTPUT/OTCLK1INV_1656 )
  );
  X_OPAD   \CH<5>/PAD  (
    .PAD(CH[5])
  );
  X_OBUF   CH_5_OBUF (
    .I(\CH<5>/O ),
    .O(CH[5])
  );
  X_OPAD   \CH<6>/PAD  (
    .PAD(CH[6])
  );
  X_OBUF   CH_6_OBUF (
    .I(\CH<6>/O ),
    .O(CH[6])
  );
  X_OPAD   \CH<7>/PAD  (
    .PAD(CH[7])
  );
  X_OBUF   CH_7_OBUF (
    .I(\CH<7>/O ),
    .O(CH[7])
  );
  X_OPAD   \data_out<0>/PAD  (
    .PAD(data_out[0])
  );
  X_OBUF   data_out_0_OBUF (
    .I(\data_out<0>/O ),
    .O(data_out[0])
  );
  X_OPAD   \data_out<1>/PAD  (
    .PAD(data_out[1])
  );
  X_OBUF   data_out_1_OBUF (
    .I(\data_out<1>/O ),
    .O(data_out[1])
  );
  X_OPAD   \DATOA<0>/PAD  (
    .PAD(DATOA[0])
  );
  X_OBUF   DATOA_0_OBUF (
    .I(\DATOA<0>/O ),
    .O(DATOA[0])
  );
  X_OPAD   \data_out<2>/PAD  (
    .PAD(data_out[2])
  );
  X_OBUF   data_out_2_OBUF (
    .I(\data_out<2>/O ),
    .O(data_out[2])
  );
  X_OPAD   \DATOA<1>/PAD  (
    .PAD(DATOA[1])
  );
  X_OBUF   DATOA_1_OBUF (
    .I(\DATOA<1>/O ),
    .O(DATOA[1])
  );
  X_OPAD   \FIN/PAD  (
    .PAD(FIN)
  );
  X_OBUF   FIN_OBUF (
    .I(\FIN/O ),
    .O(FIN)
  );
  X_OPAD   \data_out<3>/PAD  (
    .PAD(data_out[3])
  );
  X_OBUF   data_out_3_OBUF (
    .I(\data_out<3>/O ),
    .O(data_out[3])
  );
  X_OPAD   \DATOA<2>/PAD  (
    .PAD(DATOA[2])
  );
  X_OBUF   DATOA_2_OBUF (
    .I(\DATOA<2>/O ),
    .O(DATOA[2])
  );
  X_OPAD   \data_out<4>/PAD  (
    .PAD(data_out[4])
  );
  X_OBUF   data_out_4_OBUF (
    .I(\data_out<4>/O ),
    .O(data_out[4])
  );
  X_OPAD   \DATOA<3>/PAD  (
    .PAD(DATOA[3])
  );
  X_OBUF   DATOA_3_OBUF (
    .I(\DATOA<3>/O ),
    .O(DATOA[3])
  );
  X_IPAD   \data_in<0>/PAD  (
    .PAD(data_in[0])
  );
  X_BUF   data_in_0_IBUF (
    .I(data_in[0]),
    .O(\data_in<0>/INBUF )
  );
  X_BUF   \data_in<0>/IFF/IMUX  (
    .I(\data_in<0>/INBUF ),
    .O(data_in_0_IBUF_1083)
  );
  X_OPAD   \data_out<5>/PAD  (
    .PAD(data_out[5])
  );
  X_OBUF   data_out_5_OBUF (
    .I(\data_out<5>/O ),
    .O(data_out[5])
  );
  X_OPAD   \DATOB<0>/PAD  (
    .PAD(DATOB[0])
  );
  X_OBUF   DATOB_0_OBUF (
    .I(\DATOB<0>/O ),
    .O(DATOB[0])
  );
  X_OPAD   \DATOA<4>/PAD  (
    .PAD(DATOA[4])
  );
  X_OBUF   DATOA_4_OBUF (
    .I(\DATOA<4>/O ),
    .O(DATOA[4])
  );
  X_IPAD   \data_in<1>/PAD  (
    .PAD(data_in[1])
  );
  X_BUF   data_in_1_IBUF (
    .I(data_in[1]),
    .O(\data_in<1>/INBUF )
  );
  X_BUF   \data_in<1>/IFF/IMUX  (
    .I(\data_in<1>/INBUF ),
    .O(data_in_1_IBUF_1085)
  );
  X_OPAD   \data_out<6>/PAD  (
    .PAD(data_out[6])
  );
  X_OBUF   data_out_6_OBUF (
    .I(\data_out<6>/O ),
    .O(data_out[6])
  );
  X_OPAD   \DATOB<1>/PAD  (
    .PAD(DATOB[1])
  );
  X_OBUF   DATOB_1_OBUF (
    .I(\DATOB<1>/O ),
    .O(DATOB[1])
  );
  X_OPAD   \DATOA<5>/PAD  (
    .PAD(DATOA[5])
  );
  X_OBUF   DATOA_5_OBUF (
    .I(\DATOA<5>/O ),
    .O(DATOA[5])
  );
  X_IPAD   \data_in<2>/PAD  (
    .PAD(data_in[2])
  );
  X_BUF   data_in_2_IBUF (
    .I(data_in[2]),
    .O(\data_in<2>/INBUF )
  );
  X_OPAD   \data_out<7>/PAD  (
    .PAD(data_out[7])
  );
  X_OBUF   data_out_7_OBUF (
    .I(\data_out<7>/O ),
    .O(data_out[7])
  );
  X_OPAD   \DATOB<2>/PAD  (
    .PAD(DATOB[2])
  );
  X_OBUF   DATOB_2_OBUF (
    .I(\DATOB<2>/O ),
    .O(DATOB[2])
  );
  X_OPAD   \DATOA<6>/PAD  (
    .PAD(DATOA[6])
  );
  X_OBUF   DATOA_6_OBUF (
    .I(\DATOA<6>/O ),
    .O(DATOA[6])
  );
  X_IPAD   \data_in<3>/PAD  (
    .PAD(data_in[3])
  );
  X_BUF   data_in_3_IBUF (
    .I(data_in[3]),
    .O(\data_in<3>/INBUF )
  );
  X_OPAD   \STATE<0>/PAD  (
    .PAD(STATE[0])
  );
  X_OBUF   STATE_0_OBUF (
    .I(\STATE<0>/O ),
    .O(STATE[0])
  );
  X_OPAD   \DATOB<3>/PAD  (
    .PAD(DATOB[3])
  );
  X_OBUF   DATOB_3_OBUF (
    .I(\DATOB<3>/O ),
    .O(DATOB[3])
  );
  X_OPAD   \DATOA<7>/PAD  (
    .PAD(DATOA[7])
  );
  X_OBUF   DATOA_7_OBUF (
    .I(\DATOA<7>/O ),
    .O(DATOA[7])
  );
  X_IPAD   \data_in<4>/PAD  (
    .PAD(data_in[4])
  );
  X_BUF   data_in_4_IBUF (
    .I(data_in[4]),
    .O(\data_in<4>/INBUF )
  );
  X_OPAD   \STATE<1>/PAD  (
    .PAD(STATE[1])
  );
  X_OBUF   STATE_1_OBUF (
    .I(\STATE<1>/O ),
    .O(STATE[1])
  );
  X_OPAD   \DATOB<4>/PAD  (
    .PAD(DATOB[4])
  );
  X_OBUF   DATOB_4_OBUF (
    .I(\DATOB<4>/O ),
    .O(DATOB[4])
  );
  X_IPAD   \data_in<5>/PAD  (
    .PAD(data_in[5])
  );
  X_BUF   data_in_5_IBUF (
    .I(data_in[5]),
    .O(\data_in<5>/INBUF )
  );
  X_BUF   \data_in<5>/IFF/IMUX  (
    .I(\data_in<5>/INBUF ),
    .O(Msub__old_ch_rnm0_1_lut[5])
  );
  X_OPAD   \STATE<2>/PAD  (
    .PAD(STATE[2])
  );
  X_OBUF   STATE_2_OBUF (
    .I(\STATE<2>/O ),
    .O(STATE[2])
  );
  X_OPAD   \DATOB<5>/PAD  (
    .PAD(DATOB[5])
  );
  X_OBUF   DATOB_5_OBUF (
    .I(\DATOB<5>/O ),
    .O(DATOB[5])
  );
  X_IPAD   \data_in<6>/PAD  (
    .PAD(data_in[6])
  );
  X_BUF   data_in_6_IBUF (
    .I(data_in[6]),
    .O(\data_in<6>/INBUF )
  );
  X_BUF   \data_in<6>/IFF/IMUX  (
    .I(\data_in<6>/INBUF ),
    .O(data_in_6_IBUF_1104)
  );
  X_OPAD   \DATOB<6>/PAD  (
    .PAD(DATOB[6])
  );
  X_OBUF   DATOB_6_OBUF (
    .I(\DATOB<6>/O ),
    .O(DATOB[6])
  );
  X_IPAD   \data_in<7>/PAD  (
    .PAD(data_in[7])
  );
  X_BUF   data_in_7_IBUF (
    .I(data_in[7]),
    .O(\data_in<7>/INBUF )
  );
  X_BUF   \data_in<7>/IFF/IMUX  (
    .I(\data_in<7>/INBUF ),
    .O(data_in_7_IBUF_1167)
  );
  X_OPAD   \OP<0>/PAD  (
    .PAD(OP[0])
  );
  X_OBUF   OP_0_OBUF (
    .I(\OP<0>/O ),
    .O(OP[0])
  );
  X_OPAD   \DATOB<7>/PAD  (
    .PAD(DATOB[7])
  );
  X_OBUF   DATOB_7_OBUF (
    .I(\DATOB<7>/O ),
    .O(DATOB[7])
  );
  X_OPAD   \OP<1>/PAD  (
    .PAD(OP[1])
  );
  X_OBUF   OP_1_OBUF (
    .I(\OP<1>/O ),
    .O(OP[1])
  );
  X_OPAD   \OP<2>/PAD  (
    .PAD(OP[2])
  );
  X_OBUF   OP_2_OBUF (
    .I(\OP<2>/O ),
    .O(OP[2])
  );
  X_OPAD   \OP<3>/PAD  (
    .PAD(OP[3])
  );
  X_OBUF   OP_3_OBUF (
    .I(\OP<3>/O ),
    .O(OP[3])
  );
  X_OPAD   \OP<4>/PAD  (
    .PAD(OP[4])
  );
  X_OBUF   OP_4_OBUF (
    .I(\OP<4>/O ),
    .O(OP[4])
  );
  X_OPAD   \OP<5>/PAD  (
    .PAD(OP[5])
  );
  X_OBUF   OP_5_OBUF (
    .I(\OP<5>/O ),
    .O(OP[5])
  );
  X_IPAD   \CLK/PAD  (
    .PAD(CLK)
  );
  X_BUF   \CLK_BUFGP/IBUFG  (
    .I(CLK),
    .O(\CLK/INBUF )
  );
  X_OPAD   \OP<6>/PAD  (
    .PAD(OP[6])
  );
  X_OBUF   OP_6_OBUF (
    .I(\OP<6>/O ),
    .O(OP[6])
  );
  X_OPAD   \OP<7>/PAD  (
    .PAD(OP[7])
  );
  X_OBUF   OP_7_OBUF (
    .I(\OP<7>/O ),
    .O(OP[7])
  );
  X_IPAD   \RESET/PAD  (
    .PAD(RESET)
  );
  X_BUF   RESET_IBUF (
    .I(RESET),
    .O(\RESET/INBUF )
  );
  X_BUFGMUX   FIFO_empty_IBUF_BUFG (
    .I0(FIFO_empty_IBUF1),
    .I1(GND),
    .S(\FIFO_empty_IBUF_BUFG/S_INVNOT ),
    .O(FIFO_empty_IBUF_1132)
  );
  X_INV   \FIFO_empty_IBUF_BUFG/SINV  (
    .I(1'b1),
    .O(\FIFO_empty_IBUF_BUFG/S_INVNOT )
  );
  X_BUFGMUX   \CLK_BUFGP/BUFG  (
    .I0(\CLK_BUFGP/IBUFG_1173 ),
    .I1(GND),
    .S(\CLK_BUFGP/BUFG/S_INVNOT ),
    .O(CLK_BUFGP)
  );
  X_INV   \CLK_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\CLK_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/RSTPINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/RSTP_INT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/RSTBINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/RSTB_INT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/RSTAINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/RSTA_INT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/CLKINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/CLK_INT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/CEPINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/CEP_INT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/CEBINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/CEB_INT )
  );
  X_BUF   \Mmult_datoA_next_mult0001/CEAINV  (
    .I(1'b0),
    .O(\Mmult_datoA_next_mult0001/CEA_INT )
  );
  X_MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 0 ),
    .B_INPUT ( "DIRECT" ))
  Mmult_datoA_next_mult0001 (
    .CEA(\Mmult_datoA_next_mult0001/CEA_INT ),
    .CEB(\Mmult_datoA_next_mult0001/CEB_INT ),
    .CEP(\Mmult_datoA_next_mult0001/CEP_INT ),
    .CLK(\Mmult_datoA_next_mult0001/CLK_INT ),
    .RSTA(\Mmult_datoA_next_mult0001/RSTA_INT ),
    .RSTB(\Mmult_datoA_next_mult0001/RSTB_INT ),
    .RSTP(\Mmult_datoA_next_mult0001/RSTP_INT ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, datoa_rnm0[7], datoa_rnm0[6], datoa_rnm0[5], datoa_rnm0[4], datoa_rnm0[3], datoa_rnm0[2], 
datoa_rnm0[1], datoa_rnm0[0]}),
    .B({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, VCC, GND}),
    .BCIN({\Mmult_datoA_next_mult0001/BCIN17 , \Mmult_datoA_next_mult0001/BCIN16 , \Mmult_datoA_next_mult0001/BCIN15 , 
\Mmult_datoA_next_mult0001/BCIN14 , \Mmult_datoA_next_mult0001/BCIN13 , \Mmult_datoA_next_mult0001/BCIN12 , \Mmult_datoA_next_mult0001/BCIN11 , 
\Mmult_datoA_next_mult0001/BCIN10 , \Mmult_datoA_next_mult0001/BCIN9 , \Mmult_datoA_next_mult0001/BCIN8 , \Mmult_datoA_next_mult0001/BCIN7 , 
\Mmult_datoA_next_mult0001/BCIN6 , \Mmult_datoA_next_mult0001/BCIN5 , \Mmult_datoA_next_mult0001/BCIN4 , \Mmult_datoA_next_mult0001/BCIN3 , 
\Mmult_datoA_next_mult0001/BCIN2 , \Mmult_datoA_next_mult0001/BCIN1 , \Mmult_datoA_next_mult0001/BCIN0 }),
    .P({\Mmult_datoA_next_mult0001/P35 , \Mmult_datoA_next_mult0001/P34 , \Mmult_datoA_next_mult0001/P33 , \Mmult_datoA_next_mult0001/P32 , 
\Mmult_datoA_next_mult0001/P31 , \Mmult_datoA_next_mult0001/P30 , \Mmult_datoA_next_mult0001/P29 , \Mmult_datoA_next_mult0001/P28 , 
\Mmult_datoA_next_mult0001/P27 , \Mmult_datoA_next_mult0001/P26 , \Mmult_datoA_next_mult0001/P25 , \Mmult_datoA_next_mult0001/P24 , 
\Mmult_datoA_next_mult0001/P23 , \Mmult_datoA_next_mult0001/P22 , \Mmult_datoA_next_mult0001/P21 , \Mmult_datoA_next_mult0001/P20 , 
\Mmult_datoA_next_mult0001/P19 , \Mmult_datoA_next_mult0001/P18 , \Mmult_datoA_next_mult0001/P17 , \Mmult_datoA_next_mult0001/P16 , 
\Mmult_datoA_next_mult0001/P15 , \Mmult_datoA_next_mult0001/P14 , \Mmult_datoA_next_mult0001/P13 , \Mmult_datoA_next_mult0001/P12 , 
\Mmult_datoA_next_mult0001/P11 , \Mmult_datoA_next_mult0001/P10 , \Mmult_datoA_next_mult0001/P9 , \Mmult_datoA_next_mult0001/P8 , 
datoA_next_mult0001[7], datoA_next_mult0001[6], datoA_next_mult0001[5], datoA_next_mult0001[4], datoA_next_mult0001[3], datoA_next_mult0001[2], 
datoA_next_mult0001[1], datoA_next_mult0001[0]}),
    .BCOUT({\Mmult_datoA_next_mult0001/BCOUT17 , \Mmult_datoA_next_mult0001/BCOUT16 , \Mmult_datoA_next_mult0001/BCOUT15 , 
\Mmult_datoA_next_mult0001/BCOUT14 , \Mmult_datoA_next_mult0001/BCOUT13 , \Mmult_datoA_next_mult0001/BCOUT12 , \Mmult_datoA_next_mult0001/BCOUT11 , 
\Mmult_datoA_next_mult0001/BCOUT10 , \Mmult_datoA_next_mult0001/BCOUT9 , \Mmult_datoA_next_mult0001/BCOUT8 , \Mmult_datoA_next_mult0001/BCOUT7 , 
\Mmult_datoA_next_mult0001/BCOUT6 , \Mmult_datoA_next_mult0001/BCOUT5 , \Mmult_datoA_next_mult0001/BCOUT4 , \Mmult_datoA_next_mult0001/BCOUT3 , 
\Mmult_datoA_next_mult0001/BCOUT2 , \Mmult_datoA_next_mult0001/BCOUT1 , \Mmult_datoA_next_mult0001/BCOUT0 })
  );
  X_BUF   \Mmult_datoB_next_mult0001/RSTPINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/RSTP_INT )
  );
  X_BUF   \Mmult_datoB_next_mult0001/RSTBINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/RSTB_INT )
  );
  X_BUF   \Mmult_datoB_next_mult0001/RSTAINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/RSTA_INT )
  );
  X_BUF   \Mmult_datoB_next_mult0001/CLKINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/CLK_INT )
  );
  X_BUF   \Mmult_datoB_next_mult0001/CEPINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/CEP_INT )
  );
  X_BUF   \Mmult_datoB_next_mult0001/CEBINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/CEB_INT )
  );
  X_BUF   \Mmult_datoB_next_mult0001/CEAINV  (
    .I(1'b0),
    .O(\Mmult_datoB_next_mult0001/CEA_INT )
  );
  X_MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 0 ),
    .B_INPUT ( "DIRECT" ))
  Mmult_datoB_next_mult0001 (
    .CEA(\Mmult_datoB_next_mult0001/CEA_INT ),
    .CEB(\Mmult_datoB_next_mult0001/CEB_INT ),
    .CEP(\Mmult_datoB_next_mult0001/CEP_INT ),
    .CLK(\Mmult_datoB_next_mult0001/CLK_INT ),
    .RSTA(\Mmult_datoB_next_mult0001/RSTA_INT ),
    .RSTB(\Mmult_datoB_next_mult0001/RSTB_INT ),
    .RSTP(\Mmult_datoB_next_mult0001/RSTP_INT ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, datob_rnm0[7], datob_rnm0[6], datob_rnm0[5], datob_rnm0[4], datob_rnm0[3], datob_rnm0[2], 
datob_rnm0[1], datob_rnm0[0]}),
    .B({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, VCC, GND}),
    .BCIN({\Mmult_datoB_next_mult0001/BCIN17 , \Mmult_datoB_next_mult0001/BCIN16 , \Mmult_datoB_next_mult0001/BCIN15 , 
\Mmult_datoB_next_mult0001/BCIN14 , \Mmult_datoB_next_mult0001/BCIN13 , \Mmult_datoB_next_mult0001/BCIN12 , \Mmult_datoB_next_mult0001/BCIN11 , 
\Mmult_datoB_next_mult0001/BCIN10 , \Mmult_datoB_next_mult0001/BCIN9 , \Mmult_datoB_next_mult0001/BCIN8 , \Mmult_datoB_next_mult0001/BCIN7 , 
\Mmult_datoB_next_mult0001/BCIN6 , \Mmult_datoB_next_mult0001/BCIN5 , \Mmult_datoB_next_mult0001/BCIN4 , \Mmult_datoB_next_mult0001/BCIN3 , 
\Mmult_datoB_next_mult0001/BCIN2 , \Mmult_datoB_next_mult0001/BCIN1 , \Mmult_datoB_next_mult0001/BCIN0 }),
    .P({\Mmult_datoB_next_mult0001/P35 , \Mmult_datoB_next_mult0001/P34 , \Mmult_datoB_next_mult0001/P33 , \Mmult_datoB_next_mult0001/P32 , 
\Mmult_datoB_next_mult0001/P31 , \Mmult_datoB_next_mult0001/P30 , \Mmult_datoB_next_mult0001/P29 , \Mmult_datoB_next_mult0001/P28 , 
\Mmult_datoB_next_mult0001/P27 , \Mmult_datoB_next_mult0001/P26 , \Mmult_datoB_next_mult0001/P25 , \Mmult_datoB_next_mult0001/P24 , 
\Mmult_datoB_next_mult0001/P23 , \Mmult_datoB_next_mult0001/P22 , \Mmult_datoB_next_mult0001/P21 , \Mmult_datoB_next_mult0001/P20 , 
\Mmult_datoB_next_mult0001/P19 , \Mmult_datoB_next_mult0001/P18 , \Mmult_datoB_next_mult0001/P17 , \Mmult_datoB_next_mult0001/P16 , 
\Mmult_datoB_next_mult0001/P15 , \Mmult_datoB_next_mult0001/P14 , \Mmult_datoB_next_mult0001/P13 , \Mmult_datoB_next_mult0001/P12 , 
\Mmult_datoB_next_mult0001/P11 , \Mmult_datoB_next_mult0001/P10 , \Mmult_datoB_next_mult0001/P9 , \Mmult_datoB_next_mult0001/P8 , 
datoB_next_mult0001[7], datoB_next_mult0001[6], datoB_next_mult0001[5], datoB_next_mult0001[4], datoB_next_mult0001[3], datoB_next_mult0001[2], 
datoB_next_mult0001[1], datoB_next_mult0001[0]}),
    .BCOUT({\Mmult_datoB_next_mult0001/BCOUT17 , \Mmult_datoB_next_mult0001/BCOUT16 , \Mmult_datoB_next_mult0001/BCOUT15 , 
\Mmult_datoB_next_mult0001/BCOUT14 , \Mmult_datoB_next_mult0001/BCOUT13 , \Mmult_datoB_next_mult0001/BCOUT12 , \Mmult_datoB_next_mult0001/BCOUT11 , 
\Mmult_datoB_next_mult0001/BCOUT10 , \Mmult_datoB_next_mult0001/BCOUT9 , \Mmult_datoB_next_mult0001/BCOUT8 , \Mmult_datoB_next_mult0001/BCOUT7 , 
\Mmult_datoB_next_mult0001/BCOUT6 , \Mmult_datoB_next_mult0001/BCOUT5 , \Mmult_datoB_next_mult0001/BCOUT4 , \Mmult_datoB_next_mult0001/BCOUT3 , 
\Mmult_datoB_next_mult0001/BCOUT2 , \Mmult_datoB_next_mult0001/BCOUT1 , \Mmult_datoB_next_mult0001/BCOUT0 })
  );
  X_BUF   \N11/XUSED  (
    .I(\N11/F5MUX_2341 ),
    .O(N11)
  );
  X_MUX2   \N11/F5MUX  (
    .IA(\datoA_next<0>111_2332 ),
    .IB(\datoA_next<0>11 ),
    .SEL(\N11/BXINV_2334 ),
    .O(\N11/F5MUX_2341 )
  );
  X_BUF   \N11/BXINV  (
    .I(state_rnm0_FSM_FFd2_1177),
    .O(\N11/BXINV_2334 )
  );
  X_BUF   \ch_rnm0_or0000/XUSED  (
    .I(\ch_rnm0_or0000/F5MUX_2366 ),
    .O(ch_rnm0_or0000)
  );
  X_MUX2   \ch_rnm0_or0000/F5MUX  (
    .IA(ch_rnm0_or00002_2357),
    .IB(ch_rnm0_or00001_2364),
    .SEL(\ch_rnm0_or0000/BXINV_2359 ),
    .O(\ch_rnm0_or0000/F5MUX_2366 )
  );
  X_BUF   \ch_rnm0_or0000/BXINV  (
    .I(data_in_6_IBUF_1104),
    .O(\ch_rnm0_or0000/BXINV_2359 )
  );
  X_BUF   \N23/XUSED  (
    .I(\N23/F5MUX_2391 ),
    .O(N23)
  );
  X_MUX2   \N23/F5MUX  (
    .IA(\N23/G ),
    .IB(\datoA_next<0>31 ),
    .SEL(\N23/BXINV_2384 ),
    .O(\N23/F5MUX_2391 )
  );
  X_BUF   \N23/BXINV  (
    .I(state_rnm0_FSM_FFd2_1177),
    .O(\N23/BXINV_2384 )
  );
  X_BUF   \N0/XUSED  (
    .I(\N0/F5MUX_2416 ),
    .O(N0)
  );
  X_MUX2   \N0/F5MUX  (
    .IA(N88),
    .IB(N89),
    .SEL(\N0/BXINV_2409 ),
    .O(\N0/F5MUX_2416 )
  );
  X_BUF   \N0/BXINV  (
    .I(state_rnm0_FSM_FFd1_1163),
    .O(\N0/BXINV_2409 )
  );
  X_BUF   \state_rnm0_FSM_FFd1/DXMUX  (
    .I(\state_rnm0_FSM_FFd1/F5MUX_2445 ),
    .O(\state_rnm0_FSM_FFd1/DXMUX_2447 )
  );
  X_MUX2   \state_rnm0_FSM_FFd1/F5MUX  (
    .IA(N92),
    .IB(N93),
    .SEL(\state_rnm0_FSM_FFd1/BXINV_2437 ),
    .O(\state_rnm0_FSM_FFd1/F5MUX_2445 )
  );
  X_BUF   \state_rnm0_FSM_FFd1/BXINV  (
    .I(state_rnm0_FSM_FFd2_1177),
    .O(\state_rnm0_FSM_FFd1/BXINV_2437 )
  );
  X_BUF   \state_rnm0_FSM_FFd1/CLKINV  (
    .I(CLK_BUFGP),
    .O(\state_rnm0_FSM_FFd1/CLKINV_2429 )
  );
  X_BUF   \N14/XUSED  (
    .I(\N14/F5MUX_2477 ),
    .O(N14)
  );
  X_MUX2   \N14/F5MUX  (
    .IA(\N14/G ),
    .IB(state_rnm0_cmp_eq00011),
    .SEL(\N14/BXINV_2470 ),
    .O(\N14/F5MUX_2477 )
  );
  X_BUF   \N14/BXINV  (
    .I(Msub__old_ch_rnm0_1_lut[5]),
    .O(\N14/BXINV_2470 )
  );
  X_BUF   \select<1>/DXMUX  (
    .I(\select<1>/F5MUX_2506 ),
    .O(\select<1>/DXMUX_2508 )
  );
  X_MUX2   \select<1>/F5MUX  (
    .IA(\select_next<1>331_2497 ),
    .IB(\select_next<1>33 ),
    .SEL(\select<1>/BXINV_2499 ),
    .O(\select<1>/F5MUX_2506 )
  );
  X_BUF   \select<1>/BXINV  (
    .I(state_rnm0_FSM_FFd1_1163),
    .O(\select<1>/BXINV_2499 )
  );
  X_BUF   \select<1>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\select<1>/CLKINV_2491 )
  );
  X_BUF   \select_next<2>31/XUSED  (
    .I(\select_next<2>31/F5MUX_2538 ),
    .O(\select_next<2>31 )
  );
  X_MUX2   \select_next<2>31/F5MUX  (
    .IA(N90),
    .IB(N91),
    .SEL(\select_next<2>31/BXINV_2531 ),
    .O(\select_next<2>31/F5MUX_2538 )
  );
  X_BUF   \select_next<2>31/BXINV  (
    .I(state_rnm0_FSM_FFd1_1163),
    .O(\select_next<2>31/BXINV_2531 )
  );
  X_BUF   \d_out<5>/DXMUX  (
    .I(d_out_next[5]),
    .O(\d_out<5>/DXMUX_2568 )
  );
  X_BUF   \d_out<5>/YUSED  (
    .I(\d_out_next<5>5/O_pack_2 ),
    .O(\d_out_next<5>5/O )
  );
  X_BUF   \d_out<5>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<5>/CLKINV_2550 )
  );
  X_BUF   \datob_rnm0<0>/DXMUX  (
    .I(datoB_next[0]),
    .O(\datob_rnm0<0>/DXMUX_2603 )
  );
  X_BUF   \datob_rnm0<0>/YUSED  (
    .I(\datoB_next<0>9/O_pack_2 ),
    .O(\datoB_next<0>9/O )
  );
  X_BUF   \datob_rnm0<0>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<0>/CLKINV_2586 )
  );
  X_BUF   \datoa_rnm0<0>/DXMUX  (
    .I(datoA_next[0]),
    .O(\datoa_rnm0<0>/DXMUX_2638 )
  );
  X_BUF   \datoa_rnm0<0>/YUSED  (
    .I(\datoA_next<0>_SW0/O_pack_2 ),
    .O(\datoA_next<0>_SW0/O )
  );
  X_BUF   \datoa_rnm0<0>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<0>/CLKINV_2621 )
  );
  X_BUF   \datoa_rnm0<1>/DXMUX  (
    .I(datoA_next[1]),
    .O(\datoa_rnm0<1>/DXMUX_2673 )
  );
  X_BUF   \datoa_rnm0<1>/YUSED  (
    .I(\datoA_next<1>_SW0/O_pack_2 ),
    .O(\datoA_next<1>_SW0/O )
  );
  X_BUF   \datoa_rnm0<1>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<1>/CLKINV_2656 )
  );
  X_BUF   \datoa_rnm0<2>/DXMUX  (
    .I(datoA_next[2]),
    .O(\datoa_rnm0<2>/DXMUX_2708 )
  );
  X_BUF   \datoa_rnm0<2>/YUSED  (
    .I(\datoA_next<2>_SW0/O_pack_2 ),
    .O(\datoA_next<2>_SW0/O )
  );
  X_BUF   \datoa_rnm0<2>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<2>/CLKINV_2691 )
  );
  X_BUF   \datob_rnm0<1>/DXMUX  (
    .I(datoB_next[1]),
    .O(\datob_rnm0<1>/DXMUX_2743 )
  );
  X_BUF   \datob_rnm0<1>/YUSED  (
    .I(\datoB_next<1>9/O_pack_2 ),
    .O(\datoB_next<1>9/O )
  );
  X_BUF   \datob_rnm0<1>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<1>/CLKINV_2726 )
  );
  X_BUF   \datoa_rnm0<3>/DXMUX  (
    .I(datoA_next[3]),
    .O(\datoa_rnm0<3>/DXMUX_2778 )
  );
  X_BUF   \datoa_rnm0<3>/YUSED  (
    .I(\datoA_next<3>_SW0/O_pack_2 ),
    .O(\datoA_next<3>_SW0/O )
  );
  X_BUF   \datoa_rnm0<3>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<3>/CLKINV_2761 )
  );
  X_BUF   \datoa_rnm0<4>/DXMUX  (
    .I(datoA_next[4]),
    .O(\datoa_rnm0<4>/DXMUX_2813 )
  );
  X_BUF   \datoa_rnm0<4>/YUSED  (
    .I(\datoA_next<4>_SW0/O_pack_2 ),
    .O(\datoA_next<4>_SW0/O )
  );
  X_BUF   \datoa_rnm0<4>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<4>/CLKINV_2796 )
  );
  X_BUF   \datoa_rnm0<5>/DXMUX  (
    .I(datoA_next[5]),
    .O(\datoa_rnm0<5>/DXMUX_2848 )
  );
  X_BUF   \datoa_rnm0<5>/YUSED  (
    .I(\datoA_next<5>_SW0/O_pack_2 ),
    .O(\datoA_next<5>_SW0/O )
  );
  X_BUF   \datoa_rnm0<5>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<5>/CLKINV_2831 )
  );
  X_BUF   \datoa_rnm0<6>/DXMUX  (
    .I(datoA_next[6]),
    .O(\datoa_rnm0<6>/DXMUX_2883 )
  );
  X_BUF   \datoa_rnm0<6>/YUSED  (
    .I(\datoA_next<6>_SW0/O_pack_2 ),
    .O(\datoA_next<6>_SW0/O )
  );
  X_BUF   \datoa_rnm0<6>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<6>/CLKINV_2866 )
  );
  X_BUF   \datob_rnm0<2>/DXMUX  (
    .I(datoB_next[2]),
    .O(\datob_rnm0<2>/DXMUX_2918 )
  );
  X_BUF   \datob_rnm0<2>/YUSED  (
    .I(\datoB_next<2>9/O_pack_2 ),
    .O(\datoB_next<2>9/O )
  );
  X_BUF   \datob_rnm0<2>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<2>/CLKINV_2901 )
  );
  X_BUF   \datoa_rnm0<7>/DXMUX  (
    .I(datoA_next[7]),
    .O(\datoa_rnm0<7>/DXMUX_2953 )
  );
  X_BUF   \datoa_rnm0<7>/YUSED  (
    .I(\datoA_next<7>_SW0/O_pack_2 ),
    .O(\datoA_next<7>_SW0/O )
  );
  X_BUF   \datoa_rnm0<7>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datoa_rnm0<7>/CLKINV_2936 )
  );
  X_BUF   \datob_rnm0<3>/DXMUX  (
    .I(datoB_next[3]),
    .O(\datob_rnm0<3>/DXMUX_2988 )
  );
  X_BUF   \datob_rnm0<3>/YUSED  (
    .I(\datoB_next<3>9/O_pack_2 ),
    .O(\datoB_next<3>9/O )
  );
  X_BUF   \datob_rnm0<3>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<3>/CLKINV_2971 )
  );
  X_BUF   \datob_rnm0<4>/DXMUX  (
    .I(datoB_next[4]),
    .O(\datob_rnm0<4>/DXMUX_3023 )
  );
  X_BUF   \datob_rnm0<4>/YUSED  (
    .I(\datoB_next<4>12/O_pack_2 ),
    .O(\datoB_next<4>12/O )
  );
  X_BUF   \datob_rnm0<4>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<4>/CLKINV_3006 )
  );
  X_BUF   \datob_rnm0<5>/DXMUX  (
    .I(datoB_next[5]),
    .O(\datob_rnm0<5>/DXMUX_3058 )
  );
  X_BUF   \datob_rnm0<5>/YUSED  (
    .I(\datoB_next<5>9/O_pack_2 ),
    .O(\datoB_next<5>9/O )
  );
  X_BUF   \datob_rnm0<5>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<5>/CLKINV_3041 )
  );
  X_BUF   \datob_rnm0<6>/DXMUX  (
    .I(datoB_next[6]),
    .O(\datob_rnm0<6>/DXMUX_3093 )
  );
  X_BUF   \datob_rnm0<6>/YUSED  (
    .I(\datoB_next<6>9/O_pack_2 ),
    .O(\datoB_next<6>9/O )
  );
  X_BUF   \datob_rnm0<6>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<6>/CLKINV_3076 )
  );
  X_BUF   \select<0>/DXMUX  (
    .I(\select_next[0] ),
    .O(\select<0>/DXMUX_3128 )
  );
  X_BUF   \select<0>/YUSED  (
    .I(N25_pack_3),
    .O(N25)
  );
  X_BUF   \select<0>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\select<0>/CLKINV_3112 )
  );
  X_BUF   \d_out<3>/DXMUX  (
    .I(d_out_next[3]),
    .O(\d_out<3>/DXMUX_3163 )
  );
  X_BUF   \d_out<3>/YUSED  (
    .I(\d_out_next<3>_SW0/O_pack_2 ),
    .O(\d_out_next<3>_SW0/O )
  );
  X_BUF   \d_out<3>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<3>/CLKINV_3146 )
  );
  X_BUF   \datob_rnm0<7>/DXMUX  (
    .I(datoB_next[7]),
    .O(\datob_rnm0<7>/DXMUX_3198 )
  );
  X_BUF   \datob_rnm0<7>/YUSED  (
    .I(\datoB_next<7>9/O_pack_2 ),
    .O(\datoB_next<7>9/O )
  );
  X_BUF   \datob_rnm0<7>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\datob_rnm0<7>/CLKINV_3181 )
  );
  X_BUF   \d_out<4>/DXMUX  (
    .I(d_out_next[4]),
    .O(\d_out<4>/DXMUX_3233 )
  );
  X_BUF   \d_out<4>/YUSED  (
    .I(\d_out_next<4>_SW0/O_pack_2 ),
    .O(\d_out_next<4>_SW0/O )
  );
  X_BUF   \d_out<4>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<4>/CLKINV_3216 )
  );
  X_BUF   \d_out<0>/DXMUX  (
    .I(d_out_next[0]),
    .O(\d_out<0>/DXMUX_3268 )
  );
  X_BUF   \d_out<0>/YUSED  (
    .I(\d_out_next<0>5/O_pack_2 ),
    .O(\d_out_next<0>5/O )
  );
  X_BUF   \d_out<0>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<0>/CLKINV_3250 )
  );
  X_BUF   \d_out<6>/DXMUX  (
    .I(d_out_next[6]),
    .O(\d_out<6>/DXMUX_3303 )
  );
  X_BUF   \d_out<6>/YUSED  (
    .I(\d_out_next<6>_SW0/O_pack_2 ),
    .O(\d_out_next<6>_SW0/O )
  );
  X_BUF   \d_out<6>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<6>/CLKINV_3286 )
  );
  X_BUF   \d_out<7>/DXMUX  (
    .I(d_out_next[7]),
    .O(\d_out<7>/DXMUX_3338 )
  );
  X_BUF   \d_out<7>/YUSED  (
    .I(\d_out_next<7>_SW0/O_pack_2 ),
    .O(\d_out_next<7>_SW0/O )
  );
  X_BUF   \d_out<7>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<7>/CLKINV_3321 )
  );
  X_BUF   \d_out<1>/DXMUX  (
    .I(d_out_next[1]),
    .O(\d_out<1>/DXMUX_3373 )
  );
  X_BUF   \d_out<1>/YUSED  (
    .I(\d_out_next<1>5/O_pack_2 ),
    .O(\d_out_next<1>5/O )
  );
  X_BUF   \d_out<1>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<1>/CLKINV_3355 )
  );
  X_BUF   \d_out<2>/DXMUX  (
    .I(d_out_next[2]),
    .O(\d_out<2>/DXMUX_3408 )
  );
  X_BUF   \d_out<2>/YUSED  (
    .I(\d_out_next<2>5/O_pack_2 ),
    .O(\d_out_next<2>5/O )
  );
  X_BUF   \d_out<2>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\d_out<2>/CLKINV_3390 )
  );
  X_BUF   \d_out_next<5>4/XUSED  (
    .I(\d_out_next<5>4_3436 ),
    .O(\d_out_next<5>4_0 )
  );
  X_BUF   \d_out_next<5>4/YUSED  (
    .I(N18_pack_1),
    .O(N18)
  );
  X_BUF   \FIN_OBUF/XUSED  (
    .I(FIN_OBUF_3460),
    .O(FIN_OBUF_0)
  );
  X_BUF   \FIN_OBUF/YUSED  (
    .I(\FIN_SW0/O_pack_1 ),
    .O(\FIN_SW0/O )
  );
  X_BUF   \select<2>/XUSED  (
    .I(\d_out_next<0>4_3495 ),
    .O(\d_out_next<0>4_0 )
  );
  X_BUF   \select<2>/DYMUX  (
    .I(\select_next[2] ),
    .O(\select<2>/DYMUX_3484 )
  );
  X_BUF   \select<2>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\select<2>/CLKINV_3474 )
  );
  X_BUF   \state_rnm0_FSM_FFd2/XUSED  (
    .I(\datoB_next<0>19_3530 ),
    .O(\datoB_next<0>19_0 )
  );
  X_BUF   \state_rnm0_FSM_FFd2/DYMUX  (
    .I(\state_rnm0_FSM_FFd2-In ),
    .O(\state_rnm0_FSM_FFd2/DYMUX_3519 )
  );
  X_BUF   \state_rnm0_FSM_FFd2/CLKINV  (
    .I(CLK_BUFGP),
    .O(\state_rnm0_FSM_FFd2/CLKINV_3510 )
  );
  X_BUF   \N161/XUSED  (
    .I(N161),
    .O(N161_0)
  );
  X_BUF   \N161/YUSED  (
    .I(N211_pack_1),
    .O(N211)
  );
  X_BUF   \N19/XUSED  (
    .I(N19),
    .O(N19_0)
  );
  X_BUF   \N19/YUSED  (
    .I(select_next_cmp_eq0000_3571),
    .O(select_next_cmp_eq0000_0)
  );
  X_BUF   \ch_rnm0_or00001220/XUSED  (
    .I(ch_rnm0_or00001220_3626),
    .O(ch_rnm0_or00001220_0)
  );
  X_BUF   \ch_rnm0_or00001220/YUSED  (
    .I(N82_pack_1),
    .O(N82)
  );
  X_BUF   \op_rnm0<5>/DXMUX  (
    .I(\op_next[5] ),
    .O(\op_rnm0<5>/DXMUX_3657 )
  );
  X_BUF   \op_rnm0<5>/YUSED  (
    .I(\op_next<5>0_pack_2 ),
    .O(\op_next<5>0_1236 )
  );
  X_BUF   \op_rnm0<5>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\op_rnm0<5>/CLKINV_3641 )
  );
  X_BUF   \select_next<1>2/XUSED  (
    .I(\select_next<1>2_3708 ),
    .O(\select_next<1>2_0 )
  );
  X_BUF   \datoB_next<0>3/XUSED  (
    .I(\datoB_next<0>3_3732 ),
    .O(\datoB_next<0>3_0 )
  );
  X_BUF   \datoB_next<0>3/YUSED  (
    .I(N43),
    .O(N43_0)
  );
  X_BUF   \ch_rnm0_mux0000<3>/YUSED  (
    .I(N3_pack_1),
    .O(N3)
  );
  X_BUF   \N78/XUSED  (
    .I(N78),
    .O(N78_0)
  );
  X_BUF   \N78/YUSED  (
    .I(ch_rnm0_or0000122_3773),
    .O(ch_rnm0_or0000122_0)
  );
  X_BUF   \N49/XUSED  (
    .I(N49),
    .O(N49_0)
  );
  X_BUF   \N49/YUSED  (
    .I(N201_pack_1),
    .O(N201)
  );
  X_BUF   \_old_ch_rnm0_1<5>/XUSED  (
    .I(_old_ch_rnm0_1[5]),
    .O(\_old_ch_rnm0_1<5>_0 )
  );
  X_BUF   \op_next<0>28/XUSED  (
    .I(\op_next<0>28_3852 ),
    .O(\op_next<0>28_0 )
  );
  X_BUF   \d_out_next<2>4/XUSED  (
    .I(\d_out_next<2>4_3876 ),
    .O(\d_out_next<2>4_0 )
  );
  X_BUF   \d_out_next<2>4/YUSED  (
    .I(\d_out_next<1>4_3869 ),
    .O(\d_out_next<1>4_0 )
  );
  X_BUF   \op_rnm0<2>/DXMUX  (
    .I(\op_next[2] ),
    .O(\op_rnm0<2>/DXMUX_3907 )
  );
  X_BUF   \op_rnm0<2>/YUSED  (
    .I(N30_pack_2),
    .O(N30)
  );
  X_BUF   \op_rnm0<2>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\op_rnm0<2>/CLKINV_3891 )
  );
  X_BUF   \state_rnm0_cmp_eq0008/XUSED  (
    .I(state_rnm0_cmp_eq0008_3935),
    .O(state_rnm0_cmp_eq0008_0)
  );
  X_BUF   \state_rnm0_cmp_eq0008/YUSED  (
    .I(N86_pack_1),
    .O(N86)
  );
  X_BUF   \op_rnm0<0>/DXMUX  (
    .I(\op_next[0] ),
    .O(\op_rnm0<0>/DXMUX_3966 )
  );
  X_BUF   \op_rnm0<0>/YUSED  (
    .I(\op_next<5>8_pack_2 ),
    .O(\op_next<5>8 )
  );
  X_BUF   \op_rnm0<0>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\op_rnm0<0>/CLKINV_3950 )
  );
  X_BUF   \op_next<0>277/XUSED  (
    .I(\op_next<0>277_3994 ),
    .O(\op_next<0>277_0 )
  );
  X_BUF   \op_next<0>277/YUSED  (
    .I(N76_pack_1),
    .O(N76)
  );
  X_BUF   \_old_ch_rnm0_1<7>/XUSED  (
    .I(_old_ch_rnm0_1[7]),
    .O(\_old_ch_rnm0_1<7>_0 )
  );
  X_BUF   \_old_ch_rnm0_1<7>/YUSED  (
    .I(\op_next<1>10_4011 ),
    .O(\op_next<1>10_0 )
  );
  X_BUF   \ch_rnm0_mux0000<6>/YUSED  (
    .I(\_old_ch_rnm0_1<6>_pack_2 ),
    .O(_old_ch_rnm0_1[6])
  );
  X_BUF   \op_next<0>2135/XUSED  (
    .I(\op_next<0>2135_4066 ),
    .O(\op_next<0>2135_0 )
  );
  X_BUF   \op_next<0>2135/YUSED  (
    .I(N84_pack_1),
    .O(N84)
  );
  X_BUF   \N80/XUSED  (
    .I(N80),
    .O(N80_0)
  );
  X_BUF   \N80/YUSED  (
    .I(\op_next<1>32_pack_1 ),
    .O(\op_next<1>32_1248 )
  );
  X_BUF   \op_rnm0<1>/DXMUX  (
    .I(\op_next[1] ),
    .O(\op_rnm0<1>/DXMUX_4121 )
  );
  X_BUF   \op_rnm0<1>/YUSED  (
    .I(\op_next<1>45_pack_2 ),
    .O(\op_next<1>45_1250 )
  );
  X_BUF   \op_rnm0<1>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\op_rnm0<1>/CLKINV_4105 )
  );
  X_BUF   \N7/XUSED  (
    .I(N7),
    .O(N7_0)
  );
  X_BUF   \N7/YUSED  (
    .I(N13_pack_1),
    .O(N13)
  );
  X_BUF   \state_rnm0_cmp_le0003/XUSED  (
    .I(state_rnm0_cmp_le0003),
    .O(state_rnm0_cmp_le0003_0)
  );
  X_BUF   \state_rnm0_cmp_le0003/YUSED  (
    .I(N41_pack_1),
    .O(N41)
  );
  X_BUF   \N10/XUSED  (
    .I(N10),
    .O(N10_0)
  );
  X_BUF   \N10/YUSED  (
    .I(\op_next<0>231_pack_1 ),
    .O(\op_next<0>231_1237 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoB_next_addsub0000_lut<1>  (
    .ADR0(datoB_next_mult0001[1]),
    .ADR1(data_in_1_IBUF_1085),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[1])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoB_next_addsub0000_lut<0>  (
    .ADR0(datoB_next_mult0001[0]),
    .ADR1(data_in_0_IBUF_1083),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoB_next_addsub0000_lut<3>  (
    .ADR0(datoB_next_mult0001[3]),
    .ADR1(data_in_3_IBUF_1092),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[3])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoB_next_addsub0000_lut<2>  (
    .ADR0(datoB_next_mult0001[2]),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[2])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ))
  \Madd_datoB_next_addsub0000_lut<5>  (
    .ADR0(datoB_next_mult0001[5]),
    .ADR1(Msub__old_ch_rnm0_1_lut[5]),
    .ADR2(Msub__old_ch_rnm0_1_cy[4]),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[5])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \Madd_datoB_next_addsub0000_lut<4>  (
    .ADR0(datoB_next_mult0001[4]),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[4])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoB_next_addsub0000_lut<7>  (
    .ADR0(\_old_ch_rnm0_1<7>_0 ),
    .ADR1(datoB_next_mult0001[7]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoB_next_addsub0000_lut[7])
  );
  X_LUT4 #(
    .INIT ( 16'h69A5 ))
  \Madd_datoB_next_addsub0000_lut<6>  (
    .ADR0(datoB_next_mult0001[6]),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(data_in_6_IBUF_1104),
    .ADR3(Msub__old_ch_rnm0_1_lut[5]),
    .O(Madd_datoB_next_addsub0000_lut[6])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoA_next_addsub0000_lut<1>  (
    .ADR0(datoA_next_mult0001[1]),
    .ADR1(data_in_1_IBUF_1085),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[1])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ))
  \Madd_datoA_next_addsub0000_lut<5>  (
    .ADR0(datoA_next_mult0001[5]),
    .ADR1(Msub__old_ch_rnm0_1_lut[5]),
    .ADR2(Msub__old_ch_rnm0_1_cy[4]),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[5])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \Madd_datoA_next_addsub0000_lut<4>  (
    .ADR0(datoA_next_mult0001[4]),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[4])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Madd_datoA_next_addsub0000_lut<7>  (
    .ADR0(\_old_ch_rnm0_1<7>_0 ),
    .ADR1(datoA_next_mult0001[7]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Madd_datoA_next_addsub0000_lut[7])
  );
  X_LUT4 #(
    .INIT ( 16'h69A5 ))
  \Madd_datoA_next_addsub0000_lut<6>  (
    .ADR0(datoA_next_mult0001[6]),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(data_in_6_IBUF_1104),
    .ADR3(Msub__old_ch_rnm0_1_lut[5]),
    .O(Madd_datoA_next_addsub0000_lut[6])
  );
  X_BUF   \CH<0>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<0>/OUTPUT/OTCLK1INV_1582 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_0 (
    .I(\CH<0>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[0])
  );
  X_BUF   \CH<0>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[0]),
    .O(\CH<0>/O )
  );
  X_BUF   \CH<0>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[0]),
    .O(\CH<0>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \CH<1>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<1>/OUTPUT/OTCLK1INV_1599 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_1 (
    .I(\CH<1>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[1])
  );
  X_BUF   \CH<1>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[1]),
    .O(\CH<1>/O )
  );
  X_BUF   \CH<1>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[1]),
    .O(\CH<1>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \CH<5>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<5>/OUTPUT/OTCLK1INV_1673 )
  );
  X_BUF   \CH<5>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[5]),
    .O(\CH<5>/O )
  );
  X_BUF   \CH<5>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[5]),
    .O(\CH<5>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_5 (
    .I(\CH<5>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[5])
  );
  X_BUF   \CH<6>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<6>/OUTPUT/OTCLK1INV_1690 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_6 (
    .I(\CH<6>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_6/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[6])
  );
  X_BUF   \CH<6>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[6]),
    .O(\CH<6>/O )
  );
  X_BUF   \CH<6>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[6]),
    .O(\CH<6>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \CH<7>/OUTPUT/OTCLK1INV  (
    .I(FIFO_empty_IBUF_1132),
    .O(\CH<7>/OUTPUT/OTCLK1INV_1707 )
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  ch_rnm0_7 (
    .I(\CH<7>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_ch_rnm0_7/CLK ),
    .SET(GND),
    .RST(GND),
    .O(ch_rnm0[7])
  );
  X_BUF   \CH<7>/OUTPUT/OFF/OMUX  (
    .I(ch_rnm0[7]),
    .O(\CH<7>/O )
  );
  X_BUF   \CH<7>/OUTPUT/OFF/O1_DDRMUX  (
    .I(ch_rnm0_mux0000[7]),
    .O(\CH<7>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF   \data_in<2>/IFF/IMUX  (
    .I(\data_in<2>/INBUF ),
    .O(data_in_2_IBUF_1090)
  );
  X_BUF   \data_in<3>/IFF/IMUX  (
    .I(\data_in<3>/INBUF ),
    .O(data_in_3_IBUF_1092)
  );
  X_BUF   \data_in<4>/IFF/IMUX  (
    .I(\data_in<4>/INBUF ),
    .O(Msub__old_ch_rnm0_1_cy[4])
  );
  X_BUF   \CLK/IFF/IMUX  (
    .I(\CLK/INBUF ),
    .O(\CLK_BUFGP/IBUFG_1173 )
  );
  X_BUF   \RESET/IFF/IMUX  (
    .I(\RESET/INBUF ),
    .O(RESET_IBUF_1174)
  );
  X_LUT4 #(
    .INIT ( 16'hFDFD ))
  \datoA_next<0>112  (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(state_rnm0_FSM_FFd1_1163),
    .ADR3(VCC),
    .O(\datoA_next<0>111_2332 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \datoA_next<0>111  (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(ch_rnm0_or0000),
    .ADR3(state_rnm0_FSM_FFd1_1163),
    .O(\datoA_next<0>11 )
  );
  X_LUT4 #(
    .INIT ( 16'h3222 ))
  ch_rnm0_or00002 (
    .ADR0(N201),
    .ADR1(data_in_7_IBUF_1167),
    .ADR2(N13),
    .ADR3(Msub__old_ch_rnm0_1_lut[5]),
    .O(ch_rnm0_or00002_2357)
  );
  X_LUT4 #(
    .INIT ( 16'h2232 ))
  ch_rnm0_or00001 (
    .ADR0(N201),
    .ADR1(data_in_7_IBUF_1167),
    .ADR2(N13),
    .ADR3(data_in_0_IBUF_1083),
    .O(ch_rnm0_or00001_2364)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \datoA_next<0>311  (
    .ADR0(ch_rnm0_or0000),
    .ADR1(state_rnm0_cmp_le0003_0),
    .ADR2(state_rnm0_FSM_FFd1_1163),
    .ADR3(FIFO_empty_IBUF1),
    .O(\datoA_next<0>31 )
  );
  X_LUT4 #(
    .INIT ( 16'hBFBF ))
  \d_out_next<0>1_F  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(select_next_cmp_eq0000_0),
    .ADR3(VCC),
    .O(N88)
  );
  X_LUT4 #(
    .INIT ( 16'hBBEF ))
  \d_out_next<0>1_G  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_cmp_le0003_0),
    .ADR2(state_rnm0_cmp_eq0008_0),
    .ADR3(state_rnm0_FSM_FFd2_1177),
    .O(N89)
  );
  X_LUT4 #(
    .INIT ( 16'hAA8A ))
  \state_rnm0_FSM_FFd1-In_F  (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(state_rnm0_cmp_le0003_0),
    .ADR2(state_rnm0_cmp_eq0008_0),
    .ADR3(FIFO_empty_IBUF1),
    .O(N92)
  );
  X_LUT4 #(
    .INIT ( 16'hAEAE ))
  \state_rnm0_FSM_FFd1-In_G  (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(ch_rnm0_or0000),
    .ADR2(FIFO_empty_IBUF1),
    .ADR3(VCC),
    .O(N93)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_rnm0_FSM_FFd1 (
    .I(\state_rnm0_FSM_FFd1/DXMUX_2447 ),
    .CE(VCC),
    .CLK(\state_rnm0_FSM_FFd1/CLKINV_2429 ),
    .SET(GND),
    .RST(\state_rnm0_FSM_FFd1/FFX/RSTAND_2452 ),
    .O(state_rnm0_FSM_FFd1_1163)
  );
  X_BUF   \state_rnm0_FSM_FFd1/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\state_rnm0_FSM_FFd1/FFX/RSTAND_2452 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ))
  state_rnm0_cmp_eq000111 (
    .ADR0(data_in_3_IBUF_1092),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(data_in_0_IBUF_1083),
    .ADR3(Msub__old_ch_rnm0_1_cy[4]),
    .O(state_rnm0_cmp_eq00011)
  );
  X_LUT4 #(
    .INIT ( 16'hFF8A ))
  \select_next<1>332  (
    .ADR0(select[1]),
    .ADR1(\select_next<1>2_0 ),
    .ADR2(N49_0),
    .ADR3(FIN_OBUF_0),
    .O(\select_next<1>331_2497 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF8A ))
  \select_next<1>331  (
    .ADR0(select[1]),
    .ADR1(\select_next<1>2_0 ),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(FIN_OBUF_0),
    .O(\select_next<1>33 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  select_1 (
    .I(\select<1>/DXMUX_2508 ),
    .CE(VCC),
    .CLK(\select<1>/CLKINV_2491 ),
    .SET(GND),
    .RST(\select<1>/FFX/RSTAND_2513 ),
    .O(select[1])
  );
  X_BUF   \select<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\select<1>/FFX/RSTAND_2513 )
  );
  X_LUT4 #(
    .INIT ( 16'hBFBF ))
  \select_next<2>31_F  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(N49_0),
    .ADR3(VCC),
    .O(N90)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \select_next<2>31_G  (
    .ADR0(state_rnm0_cmp_eq0008_0),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(FIFO_empty_IBUF1),
    .O(N91)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \d_out_next<5>5  (
    .ADR0(d_out[5]),
    .ADR1(N0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\d_out_next<5>5/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEA ))
  \d_out_next<5>14  (
    .ADR0(\d_out_next<5>4_0 ),
    .ADR1(datoa_rnm0[5]),
    .ADR2(N25),
    .ADR3(\d_out_next<5>5/O ),
    .O(d_out_next[5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_5 (
    .I(\d_out<5>/DXMUX_2568 ),
    .CE(VCC),
    .CLK(\d_out<5>/CLKINV_2550 ),
    .SET(GND),
    .RST(\d_out<5>/FFX/RSTAND_2573 ),
    .O(d_out[5])
  );
  X_BUF   \d_out<5>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<5>/FFX/RSTAND_2573 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<0>9  (
    .ADR0(data_in_0_IBUF_1083),
    .ADR1(N18),
    .ADR2(datob_rnm0[0]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<0>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<0>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<0>9/O ),
    .ADR2(datoB_next_addsub0000[0]),
    .ADR3(VCC),
    .O(datoB_next[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_0 (
    .I(\datob_rnm0<0>/DXMUX_2603 ),
    .CE(VCC),
    .CLK(\datob_rnm0<0>/CLKINV_2586 ),
    .SET(GND),
    .RST(\datob_rnm0<0>/FFX/RSTAND_2608 ),
    .O(datob_rnm0[0])
  );
  X_BUF   \datob_rnm0<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<0>/FFX/RSTAND_2608 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<0>_SW0  (
    .ADR0(N19_0),
    .ADR1(data_in_0_IBUF_1083),
    .ADR2(datoa_rnm0[0]),
    .ADR3(N11),
    .O(\datoA_next<0>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<0>  (
    .ADR0(N23),
    .ADR1(\datoA_next<0>_SW0/O ),
    .ADR2(datoA_next_addsub0000[0]),
    .ADR3(VCC),
    .O(datoA_next[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_0 (
    .I(\datoa_rnm0<0>/DXMUX_2638 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<0>/CLKINV_2621 ),
    .SET(GND),
    .RST(\datoa_rnm0<0>/FFX/RSTAND_2643 ),
    .O(datoa_rnm0[0])
  );
  X_BUF   \datoa_rnm0<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<0>/FFX/RSTAND_2643 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<1>_SW0  (
    .ADR0(N19_0),
    .ADR1(data_in_1_IBUF_1085),
    .ADR2(datoa_rnm0[1]),
    .ADR3(N11),
    .O(\datoA_next<1>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<1>  (
    .ADR0(N23),
    .ADR1(\datoA_next<1>_SW0/O ),
    .ADR2(datoA_next_addsub0000[1]),
    .ADR3(VCC),
    .O(datoA_next[1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_1 (
    .I(\datoa_rnm0<1>/DXMUX_2673 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<1>/CLKINV_2656 ),
    .SET(GND),
    .RST(\datoa_rnm0<1>/FFX/RSTAND_2678 ),
    .O(datoa_rnm0[1])
  );
  X_BUF   \datoa_rnm0<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<1>/FFX/RSTAND_2678 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<2>_SW0  (
    .ADR0(N19_0),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(datoa_rnm0[2]),
    .ADR3(N11),
    .O(\datoA_next<2>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<2>  (
    .ADR0(N23),
    .ADR1(\datoA_next<2>_SW0/O ),
    .ADR2(datoA_next_addsub0000[2]),
    .ADR3(VCC),
    .O(datoA_next[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_2 (
    .I(\datoa_rnm0<2>/DXMUX_2708 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<2>/CLKINV_2691 ),
    .SET(GND),
    .RST(\datoa_rnm0<2>/FFX/RSTAND_2713 ),
    .O(datoa_rnm0[2])
  );
  X_BUF   \datoa_rnm0<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<2>/FFX/RSTAND_2713 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<1>9  (
    .ADR0(data_in_1_IBUF_1085),
    .ADR1(N18),
    .ADR2(datob_rnm0[1]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<1>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<1>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<1>9/O ),
    .ADR2(datoB_next_addsub0000[1]),
    .ADR3(VCC),
    .O(datoB_next[1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_1 (
    .I(\datob_rnm0<1>/DXMUX_2743 ),
    .CE(VCC),
    .CLK(\datob_rnm0<1>/CLKINV_2726 ),
    .SET(GND),
    .RST(\datob_rnm0<1>/FFX/RSTAND_2748 ),
    .O(datob_rnm0[1])
  );
  X_BUF   \datob_rnm0<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<1>/FFX/RSTAND_2748 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<3>_SW0  (
    .ADR0(N19_0),
    .ADR1(data_in_3_IBUF_1092),
    .ADR2(datoa_rnm0[3]),
    .ADR3(N11),
    .O(\datoA_next<3>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<3>  (
    .ADR0(N23),
    .ADR1(\datoA_next<3>_SW0/O ),
    .ADR2(datoA_next_addsub0000[3]),
    .ADR3(VCC),
    .O(datoA_next[3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_3 (
    .I(\datoa_rnm0<3>/DXMUX_2778 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<3>/CLKINV_2761 ),
    .SET(GND),
    .RST(\datoa_rnm0<3>/FFX/RSTAND_2783 ),
    .O(datoa_rnm0[3])
  );
  X_BUF   \datoa_rnm0<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<3>/FFX/RSTAND_2783 )
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \datoA_next<4>_SW0  (
    .ADR0(N11),
    .ADR1(datoa_rnm0[4]),
    .ADR2(N19_0),
    .ADR3(Msub__old_ch_rnm0_1_cy[4]),
    .O(\datoA_next<4>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<4>  (
    .ADR0(N23),
    .ADR1(\datoA_next<4>_SW0/O ),
    .ADR2(datoA_next_addsub0000[4]),
    .ADR3(VCC),
    .O(datoA_next[4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_4 (
    .I(\datoa_rnm0<4>/DXMUX_2813 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<4>/CLKINV_2796 ),
    .SET(GND),
    .RST(\datoa_rnm0<4>/FFX/RSTAND_2818 ),
    .O(datoa_rnm0[4])
  );
  X_BUF   \datoa_rnm0<4>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<4>/FFX/RSTAND_2818 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<5>_SW0  (
    .ADR0(N19_0),
    .ADR1(\_old_ch_rnm0_1<5>_0 ),
    .ADR2(datoa_rnm0[5]),
    .ADR3(N11),
    .O(\datoA_next<5>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<5>  (
    .ADR0(N23),
    .ADR1(\datoA_next<5>_SW0/O ),
    .ADR2(datoA_next_addsub0000[5]),
    .ADR3(VCC),
    .O(datoA_next[5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_5 (
    .I(\datoa_rnm0<5>/DXMUX_2848 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<5>/CLKINV_2831 ),
    .SET(GND),
    .RST(\datoa_rnm0<5>/FFX/RSTAND_2853 ),
    .O(datoa_rnm0[5])
  );
  X_BUF   \datoa_rnm0<5>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<5>/FFX/RSTAND_2853 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<6>_SW0  (
    .ADR0(N19_0),
    .ADR1(_old_ch_rnm0_1[6]),
    .ADR2(datoa_rnm0[6]),
    .ADR3(N11),
    .O(\datoA_next<6>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<6>  (
    .ADR0(N23),
    .ADR1(\datoA_next<6>_SW0/O ),
    .ADR2(datoA_next_addsub0000[6]),
    .ADR3(VCC),
    .O(datoA_next[6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_6 (
    .I(\datoa_rnm0<6>/DXMUX_2883 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<6>/CLKINV_2866 ),
    .SET(GND),
    .RST(\datoa_rnm0<6>/FFX/RSTAND_2888 ),
    .O(datoa_rnm0[6])
  );
  X_BUF   \datoa_rnm0<6>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<6>/FFX/RSTAND_2888 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<2>9  (
    .ADR0(data_in_2_IBUF_1090),
    .ADR1(N18),
    .ADR2(datob_rnm0[2]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<2>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<2>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<2>9/O ),
    .ADR2(datoB_next_addsub0000[2]),
    .ADR3(VCC),
    .O(datoB_next[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_2 (
    .I(\datob_rnm0<2>/DXMUX_2918 ),
    .CE(VCC),
    .CLK(\datob_rnm0<2>/CLKINV_2901 ),
    .SET(GND),
    .RST(\datob_rnm0<2>/FFX/RSTAND_2923 ),
    .O(datob_rnm0[2])
  );
  X_BUF   \datob_rnm0<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<2>/FFX/RSTAND_2923 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoA_next<7>_SW0  (
    .ADR0(N19_0),
    .ADR1(\_old_ch_rnm0_1<7>_0 ),
    .ADR2(datoa_rnm0[7]),
    .ADR3(N11),
    .O(\datoA_next<7>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoA_next<7>  (
    .ADR0(N23),
    .ADR1(\datoA_next<7>_SW0/O ),
    .ADR2(datoA_next_addsub0000[7]),
    .ADR3(VCC),
    .O(datoA_next[7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datoa_rnm0_7 (
    .I(\datoa_rnm0<7>/DXMUX_2953 ),
    .CE(VCC),
    .CLK(\datoa_rnm0<7>/CLKINV_2936 ),
    .SET(GND),
    .RST(\datoa_rnm0<7>/FFX/RSTAND_2958 ),
    .O(datoa_rnm0[7])
  );
  X_BUF   \datoa_rnm0<7>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datoa_rnm0<7>/FFX/RSTAND_2958 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<3>9  (
    .ADR0(data_in_3_IBUF_1092),
    .ADR1(N18),
    .ADR2(datob_rnm0[3]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<3>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<3>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<3>9/O ),
    .ADR2(datoB_next_addsub0000[3]),
    .ADR3(VCC),
    .O(datoB_next[3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_3 (
    .I(\datob_rnm0<3>/DXMUX_2988 ),
    .CE(VCC),
    .CLK(\datob_rnm0<3>/CLKINV_2971 ),
    .SET(GND),
    .RST(\datob_rnm0<3>/FFX/RSTAND_2993 ),
    .O(datob_rnm0[3])
  );
  X_BUF   \datob_rnm0<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<3>/FFX/RSTAND_2993 )
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \datoB_next<4>12  (
    .ADR0(datob_rnm0[4]),
    .ADR1(\datoB_next<0>3_0 ),
    .ADR2(N18),
    .ADR3(Msub__old_ch_rnm0_1_cy[4]),
    .O(\datoB_next<4>12/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<4>29  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<4>12/O ),
    .ADR2(datoB_next_addsub0000[4]),
    .ADR3(VCC),
    .O(datoB_next[4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_4 (
    .I(\datob_rnm0<4>/DXMUX_3023 ),
    .CE(VCC),
    .CLK(\datob_rnm0<4>/CLKINV_3006 ),
    .SET(GND),
    .RST(\datob_rnm0<4>/FFX/RSTAND_3028 ),
    .O(datob_rnm0[4])
  );
  X_BUF   \datob_rnm0<4>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<4>/FFX/RSTAND_3028 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<5>9  (
    .ADR0(\_old_ch_rnm0_1<5>_0 ),
    .ADR1(N18),
    .ADR2(datob_rnm0[5]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<5>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<5>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<5>9/O ),
    .ADR2(datoB_next_addsub0000[5]),
    .ADR3(VCC),
    .O(datoB_next[5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_5 (
    .I(\datob_rnm0<5>/DXMUX_3058 ),
    .CE(VCC),
    .CLK(\datob_rnm0<5>/CLKINV_3041 ),
    .SET(GND),
    .RST(\datob_rnm0<5>/FFX/RSTAND_3063 ),
    .O(datob_rnm0[5])
  );
  X_BUF   \datob_rnm0<5>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<5>/FFX/RSTAND_3063 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<6>9  (
    .ADR0(_old_ch_rnm0_1[6]),
    .ADR1(N18),
    .ADR2(datob_rnm0[6]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<6>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<6>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<6>9/O ),
    .ADR2(datoB_next_addsub0000[6]),
    .ADR3(VCC),
    .O(datoB_next[6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_6 (
    .I(\datob_rnm0<6>/DXMUX_3093 ),
    .CE(VCC),
    .CLK(\datob_rnm0<6>/CLKINV_3076 ),
    .SET(GND),
    .RST(\datob_rnm0<6>/FFX/RSTAND_3098 ),
    .O(datob_rnm0[6])
  );
  X_BUF   \datob_rnm0<6>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<6>/FFX/RSTAND_3098 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ))
  \select_next<0>11  (
    .ADR0(state_rnm0_FSM_FFd2_1177),
    .ADR1(state_rnm0_FSM_FFd1_1163),
    .ADR2(N49_0),
    .ADR3(FIFO_empty_IBUF1),
    .O(N25_pack_3)
  );
  X_LUT4 #(
    .INIT ( 16'hFF8A ))
  \select_next<0>  (
    .ADR0(select[0]),
    .ADR1(N43_0),
    .ADR2(state_rnm0_FSM_FFd1_1163),
    .ADR3(N25),
    .O(\select_next[0] )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  select_0 (
    .I(\select<0>/DXMUX_3128 ),
    .CE(VCC),
    .CLK(\select<0>/CLKINV_3112 ),
    .SET(GND),
    .RST(\select<0>/FFX/RSTAND_3133 ),
    .O(select[0])
  );
  X_BUF   \select<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\select<0>/FFX/RSTAND_3133 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<3>_SW0  (
    .ADR0(FIN_OBUF_0),
    .ADR1(datob_rnm0[3]),
    .ADR2(datoa_rnm0[3]),
    .ADR3(N25),
    .O(\d_out_next<3>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ))
  \d_out_next<3>  (
    .ADR0(\d_out_next<3>_SW0/O ),
    .ADR1(N0),
    .ADR2(d_out[3]),
    .ADR3(VCC),
    .O(d_out_next[3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_3 (
    .I(\d_out<3>/DXMUX_3163 ),
    .CE(VCC),
    .CLK(\d_out<3>/CLKINV_3146 ),
    .SET(GND),
    .RST(\d_out<3>/FFX/RSTAND_3168 ),
    .O(d_out[3])
  );
  X_BUF   \d_out<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<3>/FFX/RSTAND_3168 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \datoB_next<7>9  (
    .ADR0(\_old_ch_rnm0_1<7>_0 ),
    .ADR1(N18),
    .ADR2(datob_rnm0[7]),
    .ADR3(\datoB_next<0>3_0 ),
    .O(\datoB_next<7>9/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ))
  \datoB_next<7>26  (
    .ADR0(\datoB_next<0>19_0 ),
    .ADR1(\datoB_next<7>9/O ),
    .ADR2(datoB_next_addsub0000[7]),
    .ADR3(VCC),
    .O(datoB_next[7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  datob_rnm0_7 (
    .I(\datob_rnm0<7>/DXMUX_3198 ),
    .CE(VCC),
    .CLK(\datob_rnm0<7>/CLKINV_3181 ),
    .SET(GND),
    .RST(\datob_rnm0<7>/FFX/RSTAND_3203 ),
    .O(datob_rnm0[7])
  );
  X_BUF   \datob_rnm0<7>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\datob_rnm0<7>/FFX/RSTAND_3203 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<4>_SW0  (
    .ADR0(FIN_OBUF_0),
    .ADR1(datob_rnm0[4]),
    .ADR2(datoa_rnm0[4]),
    .ADR3(N25),
    .O(\d_out_next<4>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ))
  \d_out_next<4>  (
    .ADR0(\d_out_next<4>_SW0/O ),
    .ADR1(N0),
    .ADR2(d_out[4]),
    .ADR3(VCC),
    .O(d_out_next[4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_4 (
    .I(\d_out<4>/DXMUX_3233 ),
    .CE(VCC),
    .CLK(\d_out<4>/CLKINV_3216 ),
    .SET(GND),
    .RST(\d_out<4>/FFX/RSTAND_3238 ),
    .O(d_out[4])
  );
  X_BUF   \d_out<4>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<4>/FFX/RSTAND_3238 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \d_out_next<0>5  (
    .ADR0(d_out[0]),
    .ADR1(N0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\d_out_next<0>5/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEA ))
  \d_out_next<0>14  (
    .ADR0(\d_out_next<0>4_0 ),
    .ADR1(datoa_rnm0[0]),
    .ADR2(N25),
    .ADR3(\d_out_next<0>5/O ),
    .O(d_out_next[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_0 (
    .I(\d_out<0>/DXMUX_3268 ),
    .CE(VCC),
    .CLK(\d_out<0>/CLKINV_3250 ),
    .SET(GND),
    .RST(\d_out<0>/FFX/RSTAND_3273 ),
    .O(d_out[0])
  );
  X_BUF   \d_out<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<0>/FFX/RSTAND_3273 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<6>_SW0  (
    .ADR0(FIN_OBUF_0),
    .ADR1(datob_rnm0[6]),
    .ADR2(datoa_rnm0[6]),
    .ADR3(N25),
    .O(\d_out_next<6>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ))
  \d_out_next<6>  (
    .ADR0(\d_out_next<6>_SW0/O ),
    .ADR1(N0),
    .ADR2(d_out[6]),
    .ADR3(VCC),
    .O(d_out_next[6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_6 (
    .I(\d_out<6>/DXMUX_3303 ),
    .CE(VCC),
    .CLK(\d_out<6>/CLKINV_3286 ),
    .SET(GND),
    .RST(\d_out<6>/FFX/RSTAND_3308 ),
    .O(d_out[6])
  );
  X_BUF   \d_out<6>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<6>/FFX/RSTAND_3308 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<7>_SW0  (
    .ADR0(FIN_OBUF_0),
    .ADR1(datob_rnm0[7]),
    .ADR2(datoa_rnm0[7]),
    .ADR3(N25),
    .O(\d_out_next<7>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ))
  \d_out_next<7>  (
    .ADR0(\d_out_next<7>_SW0/O ),
    .ADR1(N0),
    .ADR2(d_out[7]),
    .ADR3(VCC),
    .O(d_out_next[7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_7 (
    .I(\d_out<7>/DXMUX_3338 ),
    .CE(VCC),
    .CLK(\d_out<7>/CLKINV_3321 ),
    .SET(GND),
    .RST(\d_out<7>/FFX/RSTAND_3343 ),
    .O(d_out[7])
  );
  X_BUF   \d_out<7>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<7>/FFX/RSTAND_3343 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \d_out_next<1>5  (
    .ADR0(d_out[1]),
    .ADR1(N0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\d_out_next<1>5/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEA ))
  \d_out_next<1>14  (
    .ADR0(\d_out_next<1>4_0 ),
    .ADR1(datoa_rnm0[1]),
    .ADR2(N25),
    .ADR3(\d_out_next<1>5/O ),
    .O(d_out_next[1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_1 (
    .I(\d_out<1>/DXMUX_3373 ),
    .CE(VCC),
    .CLK(\d_out<1>/CLKINV_3355 ),
    .SET(GND),
    .RST(\d_out<1>/FFX/RSTAND_3378 ),
    .O(d_out[1])
  );
  X_BUF   \d_out<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<1>/FFX/RSTAND_3378 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \d_out_next<2>5  (
    .ADR0(d_out[2]),
    .ADR1(N0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\d_out_next<2>5/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEA ))
  \d_out_next<2>14  (
    .ADR0(\d_out_next<2>4_0 ),
    .ADR1(datoa_rnm0[2]),
    .ADR2(N25),
    .ADR3(\d_out_next<2>5/O ),
    .O(d_out_next[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  d_out_2 (
    .I(\d_out<2>/DXMUX_3408 ),
    .CE(VCC),
    .CLK(\d_out<2>/CLKINV_3390 ),
    .SET(GND),
    .RST(\d_out<2>/FFX/RSTAND_3413 ),
    .O(d_out[2])
  );
  X_BUF   \d_out<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\d_out<2>/FFX/RSTAND_3413 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  \d_out_next<0>31  (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(FIFO_empty_IBUF1),
    .O(N18_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<5>4  (
    .ADR0(N18),
    .ADR1(\op_rnm0[5] ),
    .ADR2(datob_rnm0[5]),
    .ADR3(FIN_OBUF_0),
    .O(\d_out_next<5>4_3436 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  FIN_SW0 (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FIN_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  FIN_1470 (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(state_rnm0_cmp_eq0008_0),
    .ADR2(state_rnm0_FSM_FFd2_1177),
    .ADR3(\FIN_SW0/O ),
    .O(FIN_OBUF_3460)
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ))
  \select_next<2>52  (
    .ADR0(N18),
    .ADR1(select[2]),
    .ADR2(\select_next<2>31 ),
    .ADR3(VCC),
    .O(\select_next[2] )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  select_2 (
    .I(\select<2>/DYMUX_3484 ),
    .CE(VCC),
    .CLK(\select<2>/CLKINV_3474 ),
    .SET(GND),
    .RST(\select<2>/FFY/RSTAND_3489 ),
    .O(select[2])
  );
  X_BUF   \select<2>/FFY/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\select<2>/FFY/RSTAND_3489 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<0>4  (
    .ADR0(N18),
    .ADR1(\op_rnm0[0] ),
    .ADR2(datob_rnm0[0]),
    .ADR3(FIN_OBUF_0),
    .O(\d_out_next<0>4_3495 )
  );
  X_LUT4 #(
    .INIT ( 16'h8CDC ))
  \state_rnm0_FSM_FFd2-In2  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(state_rnm0_FSM_FFd1_1163),
    .O(\state_rnm0_FSM_FFd2-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  state_rnm0_FSM_FFd2 (
    .I(\state_rnm0_FSM_FFd2/DYMUX_3519 ),
    .CE(VCC),
    .CLK(\state_rnm0_FSM_FFd2/CLKINV_3510 ),
    .SET(GND),
    .RST(\state_rnm0_FSM_FFd2/FFY/RSTAND_3524 ),
    .O(state_rnm0_FSM_FFd2_1177)
  );
  X_BUF   \state_rnm0_FSM_FFd2/FFY/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\state_rnm0_FSM_FFd2/FFY/RSTAND_3524 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ))
  \datoB_next<0>19  (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(FIFO_empty_IBUF1),
    .O(\datoB_next<0>19_3530 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  state_rnm0_cmp_eq000811 (
    .ADR0(data_in_3_IBUF_1092),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(Msub__old_ch_rnm0_1_lut[5]),
    .ADR3(data_in_1_IBUF_1085),
    .O(N211_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h3222 ))
  ch_rnm0_or00001240 (
    .ADR0(ch_rnm0_or00001220_0),
    .ADR1(data_in_0_IBUF_1083),
    .ADR2(ch_rnm0_or0000122_0),
    .ADR3(N211),
    .O(N161)
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  select_next_cmp_eq0000 (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(N49_0),
    .O(select_next_cmp_eq0000_3571)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \datoA_next<0>21  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_cmp_le0003_0),
    .ADR2(state_rnm0_FSM_FFd2_1177),
    .ADR3(state_rnm0_FSM_FFd1_1163),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'h1030 ))
  \ch_rnm0_mux0000<0>1  (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(data_in_0_IBUF_1083),
    .ADR3(N3),
    .O(ch_rnm0_mux0000[0])
  );
  X_LUT4 #(
    .INIT ( 16'h1014 ))
  \ch_rnm0_mux0000<4>1  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(N3),
    .ADR2(Msub__old_ch_rnm0_1_cy[4]),
    .ADR3(state_rnm0_cmp_le0003_0),
    .O(ch_rnm0_mux0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'hFDFD ))
  ch_rnm0_or00001220_SW0 (
    .ADR0(data_in_2_IBUF_1090),
    .ADR1(data_in_3_IBUF_1092),
    .ADR2(data_in_6_IBUF_1104),
    .ADR3(VCC),
    .O(N82_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ))
  ch_rnm0_or00001220 (
    .ADR0(Msub__old_ch_rnm0_1_lut[5]),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(data_in_1_IBUF_1085),
    .ADR3(N82),
    .O(ch_rnm0_or00001220_3626)
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \op_next<5>0  (
    .ADR0(\op_rnm0[5] ),
    .ADR1(\op_next<0>231_1237 ),
    .ADR2(\op_next<0>277_0 ),
    .ADR3(\op_next<0>2135_0 ),
    .O(\op_next<5>0_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \op_next<5>16  (
    .ADR0(N201),
    .ADR1(\op_next<5>8 ),
    .ADR2(N7_0),
    .ADR3(\op_next<5>0_1236 ),
    .O(\op_next[5] )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  op_rnm0_5 (
    .I(\op_rnm0<5>/DXMUX_3657 ),
    .CE(VCC),
    .CLK(\op_rnm0<5>/CLKINV_3641 ),
    .SET(\op_rnm0<5>/FFX/SET ),
    .RST(GND),
    .O(\op_rnm0[5] )
  );
  X_BUF   \op_rnm0<5>/FFX/SETOR  (
    .I(RESET_IBUF_1174),
    .O(\op_rnm0<5>/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h1030 ))
  \ch_rnm0_mux0000<1>1  (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(data_in_1_IBUF_1085),
    .ADR3(N3),
    .O(ch_rnm0_mux0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'h1030 ))
  \ch_rnm0_mux0000<2>1  (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(data_in_2_IBUF_1090),
    .ADR3(N3),
    .O(ch_rnm0_mux0000[2])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  state_rnm0_or00011 (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(STATE_0_OBUF_3699)
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  \select_next<1>2  (
    .ADR0(state_rnm0_FSM_FFd2_1177),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\select_next<1>2_3708 )
  );
  X_LUT4 #(
    .INIT ( 16'hBBEF ))
  \select_next<0>_SW0  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_cmp_le0003_0),
    .ADR2(state_rnm0_cmp_eq0008_0),
    .ADR3(state_rnm0_FSM_FFd2_1177),
    .O(N43)
  );
  X_LUT4 #(
    .INIT ( 16'hBFBF ))
  \datoB_next<0>3  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(state_rnm0_FSM_FFd1_1163),
    .ADR2(state_rnm0_cmp_le0003_0),
    .ADR3(VCC),
    .O(\datoB_next<0>3_3732 )
  );
  X_LUT4 #(
    .INIT ( 16'hBFBF ))
  \ch_rnm0_mux0000<4>11  (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(ch_rnm0_or0000),
    .ADR2(state_rnm0_FSM_FFd2_1177),
    .ADR3(VCC),
    .O(N3_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1030 ))
  \ch_rnm0_mux0000<3>1  (
    .ADR0(state_rnm0_cmp_le0003_0),
    .ADR1(FIFO_empty_IBUF1),
    .ADR2(data_in_3_IBUF_1092),
    .ADR3(N3),
    .O(ch_rnm0_mux0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  ch_rnm0_or0000122 (
    .ADR0(data_in_6_IBUF_1104),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(ch_rnm0_or0000122_3773)
  );
  X_LUT4 #(
    .INIT ( 16'hE444 ))
  \op_next<0>231_SW0  (
    .ADR0(data_in_3_IBUF_1092),
    .ADR1(data_in_0_IBUF_1083),
    .ADR2(data_in_1_IBUF_1085),
    .ADR3(data_in_2_IBUF_1090),
    .O(N78)
  );
  X_LUT4 #(
    .INIT ( 16'hFF28 ))
  ch_rnm0_or0000131 (
    .ADR0(N14),
    .ADR1(data_in_1_IBUF_1085),
    .ADR2(data_in_2_IBUF_1090),
    .ADR3(N161_0),
    .O(N201_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h3232 ))
  select_next_cmp_eq0000_SW0 (
    .ADR0(N7_0),
    .ADR1(data_in_7_IBUF_1167),
    .ADR2(N201),
    .ADR3(VCC),
    .O(N49)
  );
  X_LUT4 #(
    .INIT ( 16'h1444 ))
  \ch_rnm0_mux0000<5>1  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(Msub__old_ch_rnm0_1_lut[5]),
    .ADR2(N3),
    .ADR3(Msub__old_ch_rnm0_1_cy[4]),
    .O(ch_rnm0_mux0000[5])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Msub__old_ch_rnm0_1_xor<5>11  (
    .ADR0(Msub__old_ch_rnm0_1_lut[5]),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(_old_ch_rnm0_1[5])
  );
  X_LUT4 #(
    .INIT ( 16'h0808 ))
  \ch_rnm0_mux0000<7>1  (
    .ADR0(\_old_ch_rnm0_1<7>_0 ),
    .ADR1(N3),
    .ADR2(FIFO_empty_IBUF1),
    .ADR3(VCC),
    .O(ch_rnm0_mux0000[7])
  );
  X_LUT4 #(
    .INIT ( 16'hFFAB ))
  \op_next<0>28  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(Msub__old_ch_rnm0_1_lut[5]),
    .ADR3(data_in_7_IBUF_1167),
    .O(\op_next<0>28_3852 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<1>4  (
    .ADR0(N18),
    .ADR1(\op_rnm0[1] ),
    .ADR2(datob_rnm0[1]),
    .ADR3(FIN_OBUF_0),
    .O(\d_out_next<1>4_3869 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \d_out_next<2>4  (
    .ADR0(N18),
    .ADR1(\op_rnm0[2] ),
    .ADR2(datob_rnm0[2]),
    .ADR3(FIN_OBUF_0),
    .O(\d_out_next<2>4_3876 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  \op_next<2>_SW0  (
    .ADR0(N13),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(data_in_0_IBUF_1083),
    .ADR3(N161_0),
    .O(N30_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \op_next<2>  (
    .ADR0(N10_0),
    .ADR1(\op_rnm0[2] ),
    .ADR2(\op_next<5>8 ),
    .ADR3(N30),
    .O(\op_next[2] )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  op_rnm0_2 (
    .I(\op_rnm0<2>/DXMUX_3907 ),
    .CE(VCC),
    .CLK(\op_rnm0<2>/CLKINV_3891 ),
    .SET(GND),
    .RST(\op_rnm0<2>/FFX/RSTAND_3912 ),
    .O(\op_rnm0[2] )
  );
  X_BUF   \op_rnm0<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\op_rnm0<2>/FFX/RSTAND_3912 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF7F ))
  state_rnm0_cmp_eq0008_SW1 (
    .ADR0(N211),
    .ADR1(data_in_0_IBUF_1083),
    .ADR2(data_in_2_IBUF_1090),
    .ADR3(data_in_7_IBUF_1167),
    .O(N86_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1444 ))
  state_rnm0_cmp_eq0008 (
    .ADR0(N86),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(Msub__old_ch_rnm0_1_lut[5]),
    .ADR3(Msub__old_ch_rnm0_1_cy[4]),
    .O(state_rnm0_cmp_eq0008_3935)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \op_next<0>31  (
    .ADR0(state_rnm0_FSM_FFd1_1163),
    .ADR1(state_rnm0_FSM_FFd2_1177),
    .ADR2(data_in_7_IBUF_1167),
    .ADR3(FIFO_empty_IBUF1),
    .O(\op_next<5>8_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \op_next<0>3  (
    .ADR0(N10_0),
    .ADR1(\op_rnm0[0] ),
    .ADR2(N7_0),
    .ADR3(\op_next<5>8 ),
    .O(\op_next[0] )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  op_rnm0_0 (
    .I(\op_rnm0<0>/DXMUX_3966 ),
    .CE(VCC),
    .CLK(\op_rnm0<0>/CLKINV_3950 ),
    .SET(GND),
    .RST(\op_rnm0<0>/FFX/RSTAND_3971 ),
    .O(\op_rnm0[0] )
  );
  X_BUF   \op_rnm0<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\op_rnm0<0>/FFX/RSTAND_3971 )
  );
  X_LUT4 #(
    .INIT ( 16'hBA20 ))
  \op_next<0>277_SW0  (
    .ADR0(data_in_1_IBUF_1085),
    .ADR1(Msub__old_ch_rnm0_1_cy[4]),
    .ADR2(data_in_0_IBUF_1083),
    .ADR3(data_in_2_IBUF_1090),
    .O(N76_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1515 ))
  \op_next<0>277  (
    .ADR0(data_in_6_IBUF_1104),
    .ADR1(Msub__old_ch_rnm0_1_lut[5]),
    .ADR2(N76),
    .ADR3(VCC),
    .O(\op_next<0>277_3994 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  \op_next<1>10  (
    .ADR0(N13),
    .ADR1(Msub__old_ch_rnm0_1_lut[5]),
    .ADR2(data_in_0_IBUF_1083),
    .ADR3(data_in_6_IBUF_1104),
    .O(\op_next<1>10_4011 )
  );
  X_LUT4 #(
    .INIT ( 16'hC9C3 ))
  \Msub__old_ch_rnm0_1_xor<7>11  (
    .ADR0(Msub__old_ch_rnm0_1_cy[4]),
    .ADR1(data_in_7_IBUF_1167),
    .ADR2(data_in_6_IBUF_1104),
    .ADR3(Msub__old_ch_rnm0_1_lut[5]),
    .O(_old_ch_rnm0_1[7])
  );
  X_LUT4 #(
    .INIT ( 16'h9393 ))
  \Msub__old_ch_rnm0_1_xor<6>11  (
    .ADR0(Msub__old_ch_rnm0_1_cy[4]),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(Msub__old_ch_rnm0_1_lut[5]),
    .ADR3(VCC),
    .O(\_old_ch_rnm0_1<6>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h5410 ))
  \ch_rnm0_mux0000<6>1  (
    .ADR0(FIFO_empty_IBUF1),
    .ADR1(N3),
    .ADR2(data_in_6_IBUF_1104),
    .ADR3(_old_ch_rnm0_1[6]),
    .O(ch_rnm0_mux0000[6])
  );
  X_LUT4 #(
    .INIT ( 16'hFF7D ))
  \op_next<0>2135_SW0  (
    .ADR0(Msub__old_ch_rnm0_1_cy[4]),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(data_in_1_IBUF_1085),
    .ADR3(data_in_0_IBUF_1083),
    .O(N84_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFD5 ))
  \op_next<0>2135  (
    .ADR0(state_rnm0_FSM_FFd2_1177),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(N84),
    .ADR3(state_rnm0_FSM_FFd1_1163),
    .O(\op_next<0>2135_4066 )
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \op_next<1>32  (
    .ADR0(Msub__old_ch_rnm0_1_lut[5]),
    .ADR1(N13),
    .ADR2(N211),
    .ADR3(data_in_2_IBUF_1090),
    .O(\op_next<1>32_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  \op_next<1>45_SW0  (
    .ADR0(\op_next<1>32_1248 ),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(data_in_0_IBUF_1083),
    .ADR3(\op_next<1>10_0 ),
    .O(N80)
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  \op_next<1>45  (
    .ADR0(data_in_2_IBUF_1090),
    .ADR1(N14),
    .ADR2(data_in_1_IBUF_1085),
    .ADR3(N80_0),
    .O(\op_next<1>45_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \op_next<1>72  (
    .ADR0(N10_0),
    .ADR1(\op_rnm0[1] ),
    .ADR2(\op_next<5>8 ),
    .ADR3(\op_next<1>45_1250 ),
    .O(\op_next[1] )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  op_rnm0_1 (
    .I(\op_rnm0<1>/DXMUX_4121 ),
    .CE(VCC),
    .CLK(\op_rnm0<1>/CLKINV_4105 ),
    .SET(GND),
    .RST(\op_rnm0<1>/FFX/RSTAND_4126 ),
    .O(\op_rnm0[1] )
  );
  X_BUF   \op_rnm0<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1174),
    .O(\op_rnm0<1>/FFX/RSTAND_4126 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  state_rnm0_cmp_eq000311 (
    .ADR0(Msub__old_ch_rnm0_1_cy[4]),
    .ADR1(data_in_3_IBUF_1092),
    .ADR2(data_in_2_IBUF_1090),
    .ADR3(data_in_1_IBUF_1085),
    .O(N13_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h20A8 ))
  \op_next<0>11  (
    .ADR0(N13),
    .ADR1(data_in_6_IBUF_1104),
    .ADR2(Msub__old_ch_rnm0_1_lut[5]),
    .ADR3(data_in_0_IBUF_1083),
    .O(N7)
  );
  X_LUT4 #(
    .INIT ( 16'hEFFF ))
  state_rnm0_cmp_le00031_SW0 (
    .ADR0(data_in_6_IBUF_1104),
    .ADR1(data_in_7_IBUF_1167),
    .ADR2(Msub__old_ch_rnm0_1_cy[4]),
    .ADR3(Msub__old_ch_rnm0_1_lut[5]),
    .O(N41_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h010F ))
  state_rnm0_cmp_le00031 (
    .ADR0(data_in_1_IBUF_1085),
    .ADR1(data_in_2_IBUF_1090),
    .ADR2(N41),
    .ADR3(data_in_3_IBUF_1092),
    .O(state_rnm0_cmp_le0003)
  );
  X_LUT4 #(
    .INIT ( 16'hFF72 ))
  \op_next<0>231  (
    .ADR0(Msub__old_ch_rnm0_1_cy[4]),
    .ADR1(data_in_3_IBUF_1092),
    .ADR2(N78_0),
    .ADR3(\op_next<0>28_0 ),
    .O(\op_next<0>231_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \op_next<0>2145  (
    .ADR0(\op_next<0>231_1237 ),
    .ADR1(\op_next<0>277_0 ),
    .ADR2(\op_next<0>2135_0 ),
    .ADR3(VCC),
    .O(N10)
  );
  X_INV   \RD_FIFO/OUTPUT/OFF/OMUX  (
    .I(FIFO_empty_IBUF1),
    .O(\RD_FIFO/O )
  );
  X_BUF   \SEL<0>/OUTPUT/OFF/OMUX  (
    .I(select[0]),
    .O(\SEL<0>/O )
  );
  X_BUF   \SEL<1>/OUTPUT/OFF/OMUX  (
    .I(select[1]),
    .O(\SEL<1>/O )
  );
  X_BUF   \SEL<2>/OUTPUT/OFF/OMUX  (
    .I(select[2]),
    .O(\SEL<2>/O )
  );
  X_BUF   \data_out<0>/OUTPUT/OFF/OMUX  (
    .I(d_out[0]),
    .O(\data_out<0>/O )
  );
  X_BUF   \data_out<1>/OUTPUT/OFF/OMUX  (
    .I(d_out[1]),
    .O(\data_out<1>/O )
  );
  X_BUF   \DATOA<0>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[0]),
    .O(\DATOA<0>/O )
  );
  X_BUF   \data_out<2>/OUTPUT/OFF/OMUX  (
    .I(d_out[2]),
    .O(\data_out<2>/O )
  );
  X_BUF   \DATOA<1>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[1]),
    .O(\DATOA<1>/O )
  );
  X_BUF   \FIN/OUTPUT/OFF/OMUX  (
    .I(FIN_OBUF_0),
    .O(\FIN/O )
  );
  X_BUF   \data_out<3>/OUTPUT/OFF/OMUX  (
    .I(d_out[3]),
    .O(\data_out<3>/O )
  );
  X_BUF   \DATOA<2>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[2]),
    .O(\DATOA<2>/O )
  );
  X_BUF   \data_out<4>/OUTPUT/OFF/OMUX  (
    .I(d_out[4]),
    .O(\data_out<4>/O )
  );
  X_BUF   \DATOA<3>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[3]),
    .O(\DATOA<3>/O )
  );
  X_BUF   \data_out<5>/OUTPUT/OFF/OMUX  (
    .I(d_out[5]),
    .O(\data_out<5>/O )
  );
  X_BUF   \DATOB<0>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[0]),
    .O(\DATOB<0>/O )
  );
  X_BUF   \DATOA<4>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[4]),
    .O(\DATOA<4>/O )
  );
  X_BUF   \data_out<6>/OUTPUT/OFF/OMUX  (
    .I(d_out[6]),
    .O(\data_out<6>/O )
  );
  X_BUF   \DATOB<1>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[1]),
    .O(\DATOB<1>/O )
  );
  X_BUF   \DATOA<5>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[5]),
    .O(\DATOA<5>/O )
  );
  X_BUF   \data_out<7>/OUTPUT/OFF/OMUX  (
    .I(d_out[7]),
    .O(\data_out<7>/O )
  );
  X_BUF   \DATOB<2>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[2]),
    .O(\DATOB<2>/O )
  );
  X_BUF   \DATOA<6>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[6]),
    .O(\DATOA<6>/O )
  );
  X_BUF   \STATE<0>/OUTPUT/OFF/OMUX  (
    .I(STATE_0_OBUF_3699),
    .O(\STATE<0>/O )
  );
  X_BUF   \DATOB<3>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[3]),
    .O(\DATOB<3>/O )
  );
  X_BUF   \DATOA<7>/OUTPUT/OFF/OMUX  (
    .I(datoa_rnm0[7]),
    .O(\DATOA<7>/O )
  );
  X_BUF   \STATE<1>/OUTPUT/OFF/OMUX  (
    .I(state_rnm0_FSM_FFd1_1163),
    .O(\STATE<1>/O )
  );
  X_BUF   \DATOB<4>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[4]),
    .O(\DATOB<4>/O )
  );
  X_BUF   \STATE<2>/OUTPUT/OFF/OMUX  (
    .I(\STATE<2>/OUTPUT/OFF/O1INV_1951 ),
    .O(\STATE<2>/O )
  );
  X_BUF   \STATE<2>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\STATE<2>/OUTPUT/OFF/O1INV_1951 )
  );
  X_BUF   \DATOB<5>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[5]),
    .O(\DATOB<5>/O )
  );
  X_BUF   \DATOB<6>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[6]),
    .O(\DATOB<6>/O )
  );
  X_BUF   \OP<0>/OUTPUT/OFF/OMUX  (
    .I(\op_rnm0[0] ),
    .O(\OP<0>/O )
  );
  X_BUF   \DATOB<7>/OUTPUT/OFF/OMUX  (
    .I(datob_rnm0[7]),
    .O(\DATOB<7>/O )
  );
  X_BUF   \OP<1>/OUTPUT/OFF/OMUX  (
    .I(\op_rnm0[1] ),
    .O(\OP<1>/O )
  );
  X_BUF   \OP<2>/OUTPUT/OFF/OMUX  (
    .I(\op_rnm0[2] ),
    .O(\OP<2>/O )
  );
  X_BUF   \OP<3>/OUTPUT/OFF/OMUX  (
    .I(\OP<3>/OUTPUT/OFF/O1INV_2019 ),
    .O(\OP<3>/O )
  );
  X_BUF   \OP<3>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\OP<3>/OUTPUT/OFF/O1INV_2019 )
  );
  X_BUF   \OP<4>/OUTPUT/OFF/OMUX  (
    .I(\OP<4>/OUTPUT/OFF/O1INV_2027 ),
    .O(\OP<4>/O )
  );
  X_BUF   \OP<4>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\OP<4>/OUTPUT/OFF/O1INV_2027 )
  );
  X_BUF   \OP<5>/OUTPUT/OFF/OMUX  (
    .I(\op_rnm0[5] ),
    .O(\OP<5>/O )
  );
  X_BUF   \OP<6>/OUTPUT/OFF/OMUX  (
    .I(\OP<6>/OUTPUT/OFF/O1INV_2049 ),
    .O(\OP<6>/O )
  );
  X_BUF   \OP<6>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\OP<6>/OUTPUT/OFF/O1INV_2049 )
  );
  X_BUF   \OP<7>/OUTPUT/OFF/OMUX  (
    .I(\OP<7>/OUTPUT/OFF/O1INV_2057 ),
    .O(\OP<7>/O )
  );
  X_BUF   \OP<7>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\OP<7>/OUTPUT/OFF/O1INV_2057 )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ))
  \N23/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\N23/G )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ))
  \N14/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\N14/G )
  );
  X_ONE   NlwBlock_Int_Rx_VCC (
    .O(VCC)
  );
  X_INV   \NlwInverterBlock_ch_rnm0_2/CLK  (
    .I(\CH<2>/OUTPUT/OTCLK1INV_1616 ),
    .O(\NlwInverterSignal_ch_rnm0_2/CLK )
  );
  X_ZERO   NlwBlock_Int_Rx_GND (
    .O(GND)
  );
  X_INV   \NlwInverterBlock_ch_rnm0_3/CLK  (
    .I(\CH<3>/OUTPUT/OTCLK1INV_1639 ),
    .O(\NlwInverterSignal_ch_rnm0_3/CLK )
  );
  X_INV   \NlwInverterBlock_ch_rnm0_4/CLK  (
    .I(\CH<4>/OUTPUT/OTCLK1INV_1656 ),
    .O(\NlwInverterSignal_ch_rnm0_4/CLK )
  );
  X_INV   \NlwInverterBlock_ch_rnm0_0/CLK  (
    .I(\CH<0>/OUTPUT/OTCLK1INV_1582 ),
    .O(\NlwInverterSignal_ch_rnm0_0/CLK )
  );
  X_INV   \NlwInverterBlock_ch_rnm0_1/CLK  (
    .I(\CH<1>/OUTPUT/OTCLK1INV_1599 ),
    .O(\NlwInverterSignal_ch_rnm0_1/CLK )
  );
  X_INV   \NlwInverterBlock_ch_rnm0_5/CLK  (
    .I(\CH<5>/OUTPUT/OTCLK1INV_1673 ),
    .O(\NlwInverterSignal_ch_rnm0_5/CLK )
  );
  X_INV   \NlwInverterBlock_ch_rnm0_6/CLK  (
    .I(\CH<6>/OUTPUT/OTCLK1INV_1690 ),
    .O(\NlwInverterSignal_ch_rnm0_6/CLK )
  );
  X_INV   \NlwInverterBlock_ch_rnm0_7/CLK  (
    .I(\CH<7>/OUTPUT/OTCLK1INV_1707 ),
    .O(\NlwInverterSignal_ch_rnm0_7/CLK )
  );
endmodule


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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

