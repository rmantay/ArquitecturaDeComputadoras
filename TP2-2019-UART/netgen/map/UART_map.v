////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: UART_map.v
// /___/   /\     Timestamp: Thu Sep 26 15:28:12 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf UART.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim UART_map.ncd UART_map.v 
// Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: UART_map.ncd
// Output file	: \\vboxsrv\win7vm\workspace\ArquitecturaDeComputadoras\TP2-2019-UART\netgen\map\UART_map.v
// # of Modules	: 1
// Design Name	: UART
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

module UART (
  CLK, RESET, rd_uart, rx, tx, tx_full, wr_uart, rx_empty, r_data, w_data
);
  input CLK;
  input RESET;
  input rd_uart;
  input rx;
  output tx;
  output tx_full;
  input wr_uart;
  output rx_empty;
  output [7 : 0] r_data;
  input [7 : 0] w_data;
  wire CLK_IBUF_1299;
  wire RESET_IBUF_1300;
  wire \uart_rx/N11 ;
  wire rx_IBUF_1307;
  wire \uart_rx/state_rnm0_FSM_FFd1_1308 ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In43_0 ;
  wire \uart_tx/state_rnm0_FSM_FFd1_1311 ;
  wire N64_0;
  wire \uart_tx/N121 ;
  wire N5_0;
  wire \brg/contador_cmp_eq0000_0 ;
  wire wr_uart_IBUF_1333;
  wire \fifo_tx/full_reg_1334 ;
  wire tx_done;
  wire \fifo_tx/wr_en_0 ;
  wire \uart_rx/state_rnm0_FSM_FFd2_1338 ;
  wire \uart_rx/state_rnm0_cmp_eq0001 ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In17_0 ;
  wire \uart_rx/s_next<2>28_0 ;
  wire \fifo_rx/empty_reg_1342 ;
  wire N53_0;
  wire rx_done;
  wire rd_uart_IBUF_1346;
  wire N113_0;
  wire N49_0;
  wire \uart_tx/N11 ;
  wire N99_0;
  wire N98_0;
  wire N69_0;
  wire \uart_tx/state_rnm0_cmp_eq0000 ;
  wire \uart_tx/state_rnm0_FSM_FFd2_1360 ;
  wire \brg/ti_1361 ;
  wire \uart_tx/tx_reg_1363 ;
  wire \uart_rx/N17_0 ;
  wire N31_0;
  wire \uart_rx/n_next<2>20_0 ;
  wire N33_0;
  wire \fifo_tx/empty_reg_1372 ;
  wire N128_0;
  wire \uart_rx/s_next<3>36_0 ;
  wire N41_0;
  wire \uart_rx/s_next<2>21_0 ;
  wire N120_0;
  wire N74_0;
  wire N4_0;
  wire CLK_IBUF1;
  wire \fifo_rx/Mmux_full_next321_0 ;
  wire \fifo_rx/_old_r_ptr_succ_6<3>_0 ;
  wire \fifo_rx/Madd__old_r_ptr_succ_6_cy<1>_0 ;
  wire \fifo_rx/full_reg_1393 ;
  wire N37_0;
  wire N43_0;
  wire \uart_rx/s_next<1>45_0 ;
  wire N109_0;
  wire \uart_tx/N13_0 ;
  wire \tx_fifo_out<0>_0 ;
  wire \tx_fifo_out<1>_0 ;
  wire \tx_fifo_out<2>_0 ;
  wire N7_0;
  wire \uart_tx/N5 ;
  wire \tx_fifo_out<3>_0 ;
  wire N10_0;
  wire \tx_fifo_out<4>_0 ;
  wire \tx_fifo_out<5>_0 ;
  wire \tx_fifo_out<6>_0 ;
  wire \fifo_rx/wr_en_0 ;
  wire \tx_fifo_out<7>_0 ;
  wire \fifo_tx/Madd__old_w_ptr_succ_7_cy<1>_0 ;
  wire N103_0;
  wire \fifo_rx/_old_w_ptr_succ_7<1>_0 ;
  wire \uart_rx/s_next<1>4_0 ;
  wire \uart_tx/N6 ;
  wire \uart_tx/N01 ;
  wire \fifo_tx/_old_w_ptr_succ_7<3>_0 ;
  wire N62_0;
  wire \brg/Mcount_contador_cy[1] ;
  wire \brg/Mcount_contador_cy[3] ;
  wire \uart_rx/N01_0 ;
  wire \uart_tx/b_next<0>_SW0/O ;
  wire \uart_tx/s_next<3>41_SW1_SW0/O ;
  wire N118_0;
  wire \uart_tx/b_next<1>_SW0/O ;
  wire \uart_tx/b_next<2>_SW0/O ;
  wire \fifo_rx/Mmux_full_next35_0 ;
  wire \fifo_rx/Mmux_full_next3100/O ;
  wire \fifo_rx/Mmux_full_next334_0 ;
  wire \uart_tx/b_next<3>_SW0/O ;
  wire \uart_tx/b_next<4>_SW0/O ;
  wire N71_0;
  wire \uart_rx/b_next<0>11_SW0/O ;
  wire \uart_rx/n_next<1>33_0 ;
  wire \uart_tx/b_next<5>_SW0/O ;
  wire \uart_tx/s_next<1>_SW0_SW1/O ;
  wire \brg/contador_cmp_eq00008_1476 ;
  wire \brg/contador_cmp_eq000019_1477 ;
  wire \uart_tx/b_next<6>_SW0/O ;
  wire \uart_tx/s_next<2>_SW2/O ;
  wire \uart_rx/n_next<1>12/O ;
  wire \fifo_tx/Mmux_empty_next35_0 ;
  wire \fifo_tx/Mmux_empty_next323_0 ;
  wire \fifo_tx/Mmux_empty_next393/O ;
  wire \fifo_tx/Mmux_empty_next392_0 ;
  wire \uart_rx/n_next<2>11/O ;
  wire \uart_tx/s_next<3>41_SW0/O ;
  wire \fifo_tx/w_ptr_next<1>1_SW0/O ;
  wire \fifo_tx/w_ptr_next<2>1_SW0/O ;
  wire \fifo_tx/w_ptr_next<3>1_SW0_SW0/O ;
  wire \uart_tx/n_next<2>2/O ;
  wire \fifo_rx/Mmux_empty_next34_0 ;
  wire \fifo_rx/Mmux_empty_next324_0 ;
  wire \fifo_rx/Mmux_empty_next391/O ;
  wire \fifo_rx/Mmux_empty_next390_0 ;
  wire \uart_tx/n_next<1>_SW2/O ;
  wire N80;
  wire \fifo_rx/w_ptr_next<1>1_G/O ;
  wire \uart_rx/RX_DONE1_SW1/O ;
  wire \fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11/O ;
  wire \uart_rx/state_rnm0_FSM_FFd1-In_SW1/O ;
  wire \uart_rx/s_next<2>8_SW2/O ;
  wire \uart_rx/s_next<2>8_0 ;
  wire \uart_tx/TX_DONE1_SW0/O ;
  wire \fifo_tx/Mmux_full_next34_0 ;
  wire \uart_rx/s_next<0>211/O ;
  wire \uart_rx/s_next<1>44_0 ;
  wire \uart_rx/RX_DONE1_SW2/O ;
  wire \fifo_tx/Mmux_empty_next392_SW0/O ;
  wire \uart_rx/s_next<1>211/O ;
  wire \fifo_tx/Mmux_full_next3110_0 ;
  wire \uart_rx/s_next<2>34/O ;
  wire \uart_rx/s_next<3>32/O ;
  wire \fifo_rx/Mmux_empty_next390_SW0/O ;
  wire \uart_rx/n_next<0>11_SW1/O ;
  wire \fifo_tx/Mmux_full_next338/O ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In12/O ;
  wire \uart_rx/b<3>/DXMUX_1553 ;
  wire \uart_rx/b<3>/DYMUX_1538 ;
  wire \uart_rx/b<3>/SRINV_1529 ;
  wire \uart_rx/b<3>/CLKINV_1528 ;
  wire \uart_rx/b<5>/DXMUX_1595 ;
  wire \uart_rx/b<5>/DYMUX_1580 ;
  wire \uart_rx/b<5>/SRINV_1571 ;
  wire \uart_rx/b<5>/CLKINV_1570 ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In43_1634 ;
  wire \uart_rx/b<7>/DYMUX_1621 ;
  wire \uart_rx/b<7>/CLKINV_1611 ;
  wire N5;
  wire \uart_tx/n<2>/DYMUX_1658 ;
  wire \uart_tx/n<2>/CLKINV_1649 ;
  wire \brg/contador<1>/DYMUX_1688 ;
  wire \brg/Mcount_contador_eqn_1 ;
  wire \brg/contador<1>/CLKINV_1677 ;
  wire \brg/contador<3>/DXMUX_1730 ;
  wire \brg/Mcount_contador_eqn_3 ;
  wire \brg/contador<3>/DYMUX_1714 ;
  wire \brg/Mcount_contador_eqn_2 ;
  wire \brg/contador<3>/SRINV_1704 ;
  wire \brg/contador<3>/CLKINV_1703 ;
  wire \brg/contador<5>/DXMUX_1772 ;
  wire \brg/Mcount_contador_eqn_5 ;
  wire \brg/contador<5>/DYMUX_1756 ;
  wire \brg/Mcount_contador_eqn_4 ;
  wire \brg/contador<5>/SRINV_1746 ;
  wire \brg/contador<5>/CLKINV_1745 ;
  wire \brg/contador<7>/DXMUX_1814 ;
  wire \brg/Mcount_contador_eqn_7 ;
  wire \brg/contador<7>/DYMUX_1798 ;
  wire \brg/Mcount_contador_eqn_6 ;
  wire \brg/contador<7>/SRINV_1788 ;
  wire \brg/contador<7>/CLKINV_1787 ;
  wire \fifo_tx/wr_en ;
  wire \fifo_tx/w_ptr_reg<0>/DYMUX_1840 ;
  wire \fifo_tx/w_ptr_reg<0>/CLKINV_1831 ;
  wire \uart_rx/s_next<2>28_1888 ;
  wire \uart_rx/state_rnm0_FSM_FFd2/DYMUX_1875 ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In ;
  wire \uart_rx/state_rnm0_FSM_FFd2/CLKINV_1866 ;
  wire \fifo_rx/r_ptr_reg<1>/DXMUX_1926 ;
  wire \fifo_rx/r_ptr_reg<1>/DYMUX_1912 ;
  wire \fifo_rx/r_ptr_reg<1>/SRINV_1904 ;
  wire \fifo_rx/r_ptr_reg<1>/CLKINV_1903 ;
  wire \fifo_rx/r_ptr_reg<3>/DXMUX_1968 ;
  wire \fifo_rx/r_ptr_reg<3>/DYMUX_1954 ;
  wire \fifo_rx/r_ptr_reg<3>/SRINV_1946 ;
  wire \fifo_rx/r_ptr_reg<3>/CLKINV_1945 ;
  wire N69;
  wire \uart_tx/s<0>/DYMUX_1996 ;
  wire \uart_tx/s<0>/CLKINV_1987 ;
  wire \uart_tx/state_rnm0_FSM_FFd1/DXMUX_2044 ;
  wire \uart_tx/state_rnm0_FSM_FFd1-In ;
  wire \uart_tx/state_rnm0_FSM_FFd1/DYMUX_2031 ;
  wire \uart_tx/tx_next ;
  wire \uart_tx/state_rnm0_FSM_FFd1/SRINV_2022 ;
  wire \uart_tx/state_rnm0_FSM_FFd1/CLKINV_2021 ;
  wire \uart_rx/n_next<2>20_2083 ;
  wire \uart_rx/n<0>/DYMUX_2070 ;
  wire \uart_rx/n<0>/CLKINV_2061 ;
  wire \fifo_tx/r_ptr_reg<1>/DXMUX_2121 ;
  wire \fifo_tx/r_ptr_reg<1>/DYMUX_2107 ;
  wire \fifo_tx/r_ptr_reg<1>/SRINV_2099 ;
  wire \fifo_tx/r_ptr_reg<1>/CLKINV_2098 ;
  wire \fifo_tx/r_ptr_reg<3>/DYMUX_2144 ;
  wire \fifo_tx/r_ptr_reg<3>/CLKINV_2135 ;
  wire N128;
  wire \uart_rx/s_next<3>36_2165 ;
  wire N49;
  wire N113;
  wire N41;
  wire N33;
  wire \uart_rx/s_next<2>21_2244 ;
  wire N120;
  wire N74;
  wire N31;
  wire N99;
  wire N4;
  wire \brg/ti_and0000 ;
  wire N53;
  wire \fifo_rx/Mmux_full_next321_2320 ;
  wire N37;
  wire N43;
  wire \uart_rx/s_next<1>45_2400 ;
  wire N109;
  wire \uart_tx/N13 ;
  wire \uart_tx/state_rnm0_cmp_eq0000_pack_1 ;
  wire \tx_fifo_out<0>/G/RAMOUT ;
  wire \tx_fifo_out<0>/DIF_MUX_2460 ;
  wire \tx_fifo_out<0>/DIG_MUX_2447 ;
  wire \tx_fifo_out<0>/CLKINV_2445 ;
  wire \tx_fifo_out<0>/SRINV_2439 ;
  wire \tx_fifo_out<1>/DIF_MUX_2508 ;
  wire \tx_fifo_out<1>/DIG_MUX_2495 ;
  wire \tx_fifo_out<1>/CLKINV_2493 ;
  wire \tx_fifo_out<1>/SRINV_2487 ;
  wire \tx_fifo_out<2>/DIF_MUX_2556 ;
  wire \tx_fifo_out<2>/DIG_MUX_2543 ;
  wire \tx_fifo_out<2>/CLKINV_2541 ;
  wire \tx_fifo_out<2>/SRINV_2535 ;
  wire \uart_tx/n<0>/DXMUX_2599 ;
  wire \uart_tx/N121_pack_2 ;
  wire \uart_tx/n<0>/CLKINV_2583 ;
  wire \tx_fifo_out<3>/DIF_MUX_2639 ;
  wire \tx_fifo_out<3>/DIG_MUX_2626 ;
  wire \tx_fifo_out<3>/CLKINV_2624 ;
  wire \tx_fifo_out<3>/SRINV_2618 ;
  wire N7;
  wire N10;
  wire \tx_fifo_out<4>/DIF_MUX_2711 ;
  wire \tx_fifo_out<4>/DIG_MUX_2698 ;
  wire \tx_fifo_out<4>/CLKINV_2696 ;
  wire \tx_fifo_out<4>/SRINV_2690 ;
  wire \tx_fifo_out<5>/DIF_MUX_2759 ;
  wire \tx_fifo_out<5>/DIG_MUX_2746 ;
  wire \tx_fifo_out<5>/CLKINV_2744 ;
  wire \tx_fifo_out<5>/SRINV_2738 ;
  wire \tx_fifo_out<6>/DIF_MUX_2807 ;
  wire \tx_fifo_out<6>/DIG_MUX_2794 ;
  wire \tx_fifo_out<6>/CLKINV_2792 ;
  wire \tx_fifo_out<6>/SRINV_2786 ;
  wire \fifo_rx/w_ptr_reg<0>/DXMUX_2850 ;
  wire \fifo_rx/wr_en ;
  wire \fifo_rx/w_ptr_reg<0>/CLKINV_2832 ;
  wire \tx_fifo_out<7>/DIF_MUX_2890 ;
  wire \tx_fifo_out<7>/DIG_MUX_2877 ;
  wire \tx_fifo_out<7>/CLKINV_2875 ;
  wire \tx_fifo_out<7>/SRINV_2869 ;
  wire N103;
  wire r_data_0_OBUF_2974;
  wire \r_data_0_OBUF/DIF_MUX_2962 ;
  wire \r_data_0_OBUF/DIG_MUX_2949 ;
  wire \r_data_0_OBUF/CLKINV_2947 ;
  wire \r_data_0_OBUF/SRINV_2941 ;
  wire r_data_1_OBUF_3034;
  wire \r_data_1_OBUF/DIF_MUX_3022 ;
  wire \r_data_1_OBUF/DIG_MUX_3009 ;
  wire \r_data_1_OBUF/CLKINV_3007 ;
  wire \r_data_1_OBUF/SRINV_3001 ;
  wire r_data_2_OBUF_3082;
  wire \r_data_2_OBUF/DIF_MUX_3070 ;
  wire \r_data_2_OBUF/DIG_MUX_3057 ;
  wire \r_data_2_OBUF/CLKINV_3055 ;
  wire \r_data_2_OBUF/SRINV_3049 ;
  wire \uart_rx/s_next<1>4_3106 ;
  wire N98;
  wire r_data_3_OBUF_3154;
  wire \r_data_3_OBUF/DIF_MUX_3142 ;
  wire \r_data_3_OBUF/DIG_MUX_3129 ;
  wire \r_data_3_OBUF/CLKINV_3127 ;
  wire \r_data_3_OBUF/SRINV_3121 ;
  wire r_data_4_OBUF_3202;
  wire \r_data_4_OBUF/DIF_MUX_3190 ;
  wire \r_data_4_OBUF/DIG_MUX_3177 ;
  wire \r_data_4_OBUF/CLKINV_3175 ;
  wire \r_data_4_OBUF/SRINV_3169 ;
  wire r_data_5_OBUF_3250;
  wire \r_data_5_OBUF/DIF_MUX_3238 ;
  wire \r_data_5_OBUF/DIG_MUX_3225 ;
  wire \r_data_5_OBUF/CLKINV_3223 ;
  wire \r_data_5_OBUF/SRINV_3217 ;
  wire r_data_6_OBUF_3298;
  wire \r_data_6_OBUF/DIF_MUX_3286 ;
  wire \r_data_6_OBUF/DIG_MUX_3273 ;
  wire \r_data_6_OBUF/CLKINV_3271 ;
  wire \r_data_6_OBUF/SRINV_3265 ;
  wire \uart_tx/b<7>/DXMUX_3329 ;
  wire \uart_tx/N6_pack_2 ;
  wire \uart_tx/b<7>/CLKINV_3312 ;
  wire r_data_7_OBUF_3381;
  wire \r_data_7_OBUF/DIF_MUX_3369 ;
  wire \r_data_7_OBUF/DIG_MUX_3356 ;
  wire \r_data_7_OBUF/CLKINV_3354 ;
  wire \r_data_7_OBUF/SRINV_3348 ;
  wire N62;
  wire \Result<0>/XORF_3442 ;
  wire \Result<0>/LOGIC_ONE_3441 ;
  wire \Result<0>/CYINIT_3440 ;
  wire \Result<0>/CYSELF_3431 ;
  wire \Result<0>/BXINV_3429 ;
  wire \Result<0>/XORG_3427 ;
  wire \Result<0>/CYMUXG_3426 ;
  wire \brg/Mcount_contador_cy[0] ;
  wire \Result<0>/LOGIC_ZERO_3424 ;
  wire \Result<0>/CYSELG_3415 ;
  wire \Result<0>/G ;
  wire \Result<2>/XORF_3480 ;
  wire \Result<2>/CYINIT_3479 ;
  wire \Result<2>/F ;
  wire \Result<2>/XORG_3468 ;
  wire \brg/Mcount_contador_cy[2] ;
  wire \Result<2>/CYSELF_3466 ;
  wire \Result<2>/CYMUXFAST_3465 ;
  wire \Result<2>/CYAND_3464 ;
  wire \Result<2>/FASTCARRY_3463 ;
  wire \Result<2>/CYMUXG2_3462 ;
  wire \Result<2>/CYMUXF2_3461 ;
  wire \Result<2>/LOGIC_ZERO_3460 ;
  wire \Result<2>/CYSELG_3451 ;
  wire \Result<2>/G ;
  wire \Result<4>/XORF_3518 ;
  wire \Result<4>/CYINIT_3517 ;
  wire \Result<4>/F ;
  wire \Result<4>/XORG_3506 ;
  wire \brg/Mcount_contador_cy[4] ;
  wire \Result<4>/CYSELF_3504 ;
  wire \Result<4>/CYMUXFAST_3503 ;
  wire \Result<4>/CYAND_3502 ;
  wire \Result<4>/FASTCARRY_3501 ;
  wire \Result<4>/CYMUXG2_3500 ;
  wire \Result<4>/CYMUXF2_3499 ;
  wire \Result<4>/LOGIC_ZERO_3498 ;
  wire \Result<4>/CYSELG_3489 ;
  wire \Result<4>/G ;
  wire \Result<6>/XORF_3549 ;
  wire \Result<6>/LOGIC_ZERO_3548 ;
  wire \Result<6>/CYINIT_3547 ;
  wire \Result<6>/CYSELF_3538 ;
  wire \Result<6>/F ;
  wire \Result<6>/XORG_3535 ;
  wire \brg/Mcount_contador_cy[6] ;
  wire \brg/contador<7>_rt_3532 ;
  wire \wr_uart/INBUF ;
  wire \w_data<0>/INBUF ;
  wire \w_data<1>/INBUF ;
  wire \w_data<2>/INBUF ;
  wire \w_data<3>/INBUF ;
  wire \rx_empty/O ;
  wire \w_data<4>/INBUF ;
  wire \w_data<5>/INBUF ;
  wire \w_data<6>/INBUF ;
  wire \w_data<7>/INBUF ;
  wire \rx/INBUF ;
  wire \r_data<0>/O ;
  wire \r_data<1>/O ;
  wire \tx/O ;
  wire \rd_uart/INBUF ;
  wire \r_data<2>/O ;
  wire \tx_full/O ;
  wire \r_data<3>/O ;
  wire \r_data<4>/O ;
  wire \r_data<5>/O ;
  wire \r_data<6>/O ;
  wire \r_data<7>/O ;
  wire \CLK/INBUF ;
  wire \RESET/INBUF ;
  wire \CLK_IBUF_BUFG/S_INVNOT ;
  wire \uart_rx/s<3>/DXMUX_3751 ;
  wire \uart_rx/s<3>/F5MUX_3749 ;
  wire N125;
  wire \uart_rx/s<3>/BXINV_3742 ;
  wire N124;
  wire \uart_rx/s<3>/CLKINV_3734 ;
  wire \uart_tx/N01/F5MUX_3781 ;
  wire N133;
  wire \uart_tx/N01/BXINV_3774 ;
  wire N132;
  wire \uart_rx/s<0>/DXMUX_3812 ;
  wire \uart_rx/s<0>/F5MUX_3810 ;
  wire \uart_rx/s_next<0>20 ;
  wire \uart_rx/s<0>/BXINV_3803 ;
  wire \uart_rx/s_next<0>201_3801 ;
  wire \uart_rx/s<0>/CLKINV_3795 ;
  wire \uart_tx/b<0>/DXMUX_3847 ;
  wire \uart_tx/b_next<0>_SW0/O_pack_2 ;
  wire \uart_tx/b<0>/CLKINV_3830 ;
  wire N118;
  wire \uart_tx/s_next<3>41_SW1_SW0/O_pack_1 ;
  wire \uart_tx/b<1>/DXMUX_3906 ;
  wire \uart_tx/b_next<1>_SW0/O_pack_2 ;
  wire \uart_tx/b<1>/CLKINV_3889 ;
  wire \uart_tx/b<2>/DXMUX_3941 ;
  wire \uart_tx/b_next<2>_SW0/O_pack_2 ;
  wire \uart_tx/b<2>/CLKINV_3924 ;
  wire \fifo_rx/full_reg/DXMUX_3976 ;
  wire \fifo_rx/full_next ;
  wire \fifo_rx/Mmux_full_next3100/O_pack_2 ;
  wire \fifo_rx/full_reg/CLKINV_3960 ;
  wire \uart_tx/b<3>/DXMUX_4011 ;
  wire \uart_tx/b_next<3>_SW0/O_pack_2 ;
  wire \uart_tx/b<3>/CLKINV_3994 ;
  wire \uart_tx/b<4>/DXMUX_4046 ;
  wire \uart_tx/b_next<4>_SW0/O_pack_2 ;
  wire \uart_tx/b<4>/CLKINV_4029 ;
  wire N71;
  wire \uart_tx/N11_pack_1 ;
  wire \uart_rx/n_next<1>33_4098 ;
  wire \uart_rx/b_next<0>11_SW0/O_pack_1 ;
  wire \uart_tx/b<5>/DXMUX_4129 ;
  wire \uart_tx/b_next<5>_SW0/O_pack_2 ;
  wire \uart_tx/b<5>/CLKINV_4112 ;
  wire \uart_tx/s<1>/DXMUX_4164 ;
  wire \uart_tx/s_next<1>_SW0_SW1/O_pack_2 ;
  wire \uart_tx/s<1>/CLKINV_4147 ;
  wire \brg/contador<0>/DXMUX_4199 ;
  wire \brg/Mcount_contador_eqn_0 ;
  wire \brg/contador_cmp_eq000019_pack_1 ;
  wire \brg/contador<0>/CLKINV_4182 ;
  wire \uart_tx/b<6>/DXMUX_4234 ;
  wire \uart_tx/b_next<6>_SW0/O_pack_2 ;
  wire \uart_tx/b<6>/CLKINV_4217 ;
  wire \uart_tx/s<2>/DXMUX_4269 ;
  wire \uart_tx/s_next<2>_SW2/O_pack_2 ;
  wire \uart_tx/s<2>/CLKINV_4251 ;
  wire \uart_rx/n<1>/DXMUX_4304 ;
  wire \uart_rx/n_next<1>12/O_pack_2 ;
  wire \uart_rx/n<1>/CLKINV_4288 ;
  wire \fifo_rx/Mmux_full_next334_4332 ;
  wire rx_done_pack_1;
  wire \fifo_tx/empty_reg/DXMUX_4363 ;
  wire \fifo_tx/empty_next ;
  wire \fifo_tx/Mmux_empty_next393/O_pack_2 ;
  wire \fifo_tx/empty_reg/CLKINV_4347 ;
  wire \uart_rx/n<2>/DXMUX_4397 ;
  wire \uart_rx/n_next<2>11/O_pack_2 ;
  wire \uart_rx/n<2>/CLKINV_4381 ;
  wire \uart_tx/s<3>/DXMUX_4432 ;
  wire \uart_tx/s_next<3>41_SW0/O_pack_2 ;
  wire \uart_tx/s<3>/CLKINV_4414 ;
  wire \fifo_tx/w_ptr_reg<1>/DXMUX_4467 ;
  wire \fifo_tx/w_ptr_next<1>1_SW0/O_pack_3 ;
  wire \fifo_tx/w_ptr_reg<1>/CLKINV_4450 ;
  wire \fifo_tx/w_ptr_reg<2>/DXMUX_4502 ;
  wire \fifo_tx/w_ptr_next<2>1_SW0/O_pack_2 ;
  wire \fifo_tx/w_ptr_reg<2>/CLKINV_4485 ;
  wire \fifo_tx/w_ptr_reg<3>/DXMUX_4537 ;
  wire \fifo_tx/w_ptr_next<3>1_SW0_SW0/O_pack_2 ;
  wire \fifo_tx/w_ptr_reg<3>/CLKINV_4521 ;
  wire N64;
  wire \uart_tx/n_next<2>2/O_pack_1 ;
  wire \fifo_rx/empty_reg/DXMUX_4596 ;
  wire \fifo_rx/empty_next ;
  wire \fifo_rx/Mmux_empty_next391/O_pack_2 ;
  wire \fifo_rx/empty_reg/CLKINV_4580 ;
  wire \uart_tx/n<1>/DXMUX_4630 ;
  wire \uart_tx/n_next<1>_SW2/O_pack_2 ;
  wire \uart_tx/n<1>/CLKINV_4613 ;
  wire \fifo_tx/Mmux_empty_next35_4658 ;
  wire N80_pack_1;
  wire \fifo_rx/w_ptr_reg<1>/DXMUX_4689 ;
  wire \fifo_rx/w_ptr_next<1>1_G/O_pack_3 ;
  wire \fifo_rx/w_ptr_reg<1>/CLKINV_4672 ;
  wire \fifo_rx/Mmux_empty_next34_4717 ;
  wire \uart_rx/RX_DONE1_SW1/O_pack_1 ;
  wire \fifo_rx/w_ptr_reg<2>/DXMUX_4748 ;
  wire \fifo_rx/Madd__old_w_ptr_succ_7_cy<1>_pack_2 ;
  wire \fifo_rx/w_ptr_reg<2>/CLKINV_4730 ;
  wire \fifo_rx/w_ptr_reg<3>/DXMUX_4783 ;
  wire \fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11/O_pack_3 ;
  wire \fifo_rx/w_ptr_reg<3>/CLKINV_4767 ;
  wire \uart_rx/state_rnm0_FSM_FFd1/DXMUX_4818 ;
  wire \uart_rx/state_rnm0_FSM_FFd1-In_4815 ;
  wire \uart_rx/state_rnm0_FSM_FFd1-In_SW1/O_pack_2 ;
  wire \uart_rx/state_rnm0_FSM_FFd1/CLKINV_4802 ;
  wire \uart_rx/b<6>/DXMUX_4853 ;
  wire \uart_rx/N11_pack_2 ;
  wire \uart_rx/b<6>/CLKINV_4836 ;
  wire \fifo_tx/Mmux_empty_next323_4881 ;
  wire \fifo_tx/_old_r_ptr_succ_6<3>_pack_1 ;
  wire \uart_rx/s_next<2>8_4905 ;
  wire \uart_rx/s_next<2>8_SW2/O_pack_1 ;
  wire \fifo_tx/r_ptr_reg<2>/DXMUX_4936 ;
  wire \fifo_tx/Madd__old_r_ptr_succ_6_cy<1>_pack_2 ;
  wire \fifo_tx/r_ptr_reg<2>/CLKINV_4918 ;
  wire \uart_tx/state_rnm0_FSM_FFd2/DXMUX_4971 ;
  wire \uart_tx/state_rnm0_FSM_FFd2-In_4968 ;
  wire \uart_tx/N5_pack_2 ;
  wire \uart_tx/state_rnm0_FSM_FFd2/CLKINV_4953 ;
  wire \fifo_tx/Mmux_full_next34_4999 ;
  wire \uart_tx/TX_DONE1_SW0/O_pack_1 ;
  wire \uart_rx/s_next<1>44_5023 ;
  wire \uart_rx/s_next<0>211/O_pack_3 ;
  wire \fifo_rx/Mmux_empty_next324_5047 ;
  wire \uart_rx/RX_DONE1_SW2/O_pack_1 ;
  wire \fifo_tx/Mmux_empty_next392_5071 ;
  wire \fifo_tx/Mmux_empty_next392_SW0/O_pack_1 ;
  wire \fifo_rx/Mmux_full_next35_5095 ;
  wire \uart_rx/state_rnm0_cmp_eq0001_pack_1 ;
  wire \uart_rx/s<1>/DXMUX_5126 ;
  wire \uart_rx/s_next<1>211/O_pack_2 ;
  wire \uart_rx/s<1>/CLKINV_5110 ;
  wire \fifo_tx/Mmux_full_next3110_5154 ;
  wire tx_done_pack_1;
  wire \uart_rx/s<2>/DXMUX_5185 ;
  wire \uart_rx/s_next<2>34/O_pack_2 ;
  wire \uart_rx/s<2>/CLKINV_5169 ;
  wire \uart_rx/N01 ;
  wire \uart_rx/s_next<3>32/O_pack_1 ;
  wire \fifo_rx/Mmux_empty_next390_5237 ;
  wire \fifo_rx/Mmux_empty_next390_SW0/O_pack_1 ;
  wire \uart_rx/N17 ;
  wire \uart_rx/n_next<0>11_SW1/O_pack_1 ;
  wire \fifo_tx/full_reg/DXMUX_5292 ;
  wire \fifo_tx/full_next ;
  wire \fifo_tx/Mmux_full_next338/O_pack_2 ;
  wire \fifo_tx/full_reg/CLKINV_5276 ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In17_5320 ;
  wire \uart_rx/state_rnm0_FSM_FFd2-In12/O_pack_1 ;
  wire \brg/ti/DXMUX_5352 ;
  wire \brg/ti/FXMUX_5351 ;
  wire \brg/contador_cmp_eq0000 ;
  wire \brg/contador_cmp_eq00008_pack_1 ;
  wire \brg/ti/CLKINV_5335 ;
  wire \brg/ti/CEINV_5334 ;
  wire \uart_rx/b<1>/DXMUX_5392 ;
  wire \uart_rx/b<1>/DYMUX_5377 ;
  wire \uart_rx/b<1>/SRINV_5368 ;
  wire \uart_rx/b<1>/CLKINV_5367 ;
  wire \uart_rx/b<7>/FFY/RSTAND_1626 ;
  wire \uart_tx/n<2>/FFY/RSTAND_1663 ;
  wire \brg/contador<1>/FFY/RSTAND_1693 ;
  wire \fifo_tx/w_ptr_reg<0>/FFY/RSTAND_1845 ;
  wire \uart_rx/state_rnm0_FSM_FFd2/FFY/RSTAND_1880 ;
  wire \uart_tx/s<0>/FFY/RSTAND_2001 ;
  wire \uart_rx/n<0>/FFY/RSTAND_2075 ;
  wire \fifo_tx/r_ptr_reg<3>/FFY/RSTAND_2149 ;
  wire \tx_fifo_out<1>/G/RAMOUT ;
  wire \tx_fifo_out<2>/G/RAMOUT ;
  wire \uart_tx/n<0>/FFX/RSTAND_2604 ;
  wire \tx_fifo_out<3>/G/RAMOUT ;
  wire \tx_fifo_out<4>/G/RAMOUT ;
  wire \tx_fifo_out<5>/G/RAMOUT ;
  wire \tx_fifo_out<6>/G/RAMOUT ;
  wire \fifo_rx/w_ptr_reg<0>/FFX/RSTAND_2855 ;
  wire \tx_fifo_out<7>/G/RAMOUT ;
  wire \r_data_0_OBUF/G/RAMOUT ;
  wire \r_data_1_OBUF/G/RAMOUT ;
  wire \r_data_2_OBUF/G/RAMOUT ;
  wire \r_data_3_OBUF/G/RAMOUT ;
  wire \r_data_4_OBUF/G/RAMOUT ;
  wire \r_data_5_OBUF/G/RAMOUT ;
  wire \r_data_6_OBUF/G/RAMOUT ;
  wire \uart_tx/b<7>/FFX/RSTAND_3334 ;
  wire \r_data_7_OBUF/G/RAMOUT ;
  wire \uart_rx/s<3>/FFX/RSTAND_3756 ;
  wire \uart_rx/s<0>/FFX/RSTAND_3817 ;
  wire \uart_tx/b<0>/FFX/RSTAND_3852 ;
  wire \uart_tx/b<1>/FFX/RSTAND_3911 ;
  wire \uart_tx/b<2>/FFX/RSTAND_3946 ;
  wire \fifo_rx/full_reg/FFX/RSTAND_3981 ;
  wire \uart_tx/b<3>/FFX/RSTAND_4016 ;
  wire \uart_tx/b<4>/FFX/RSTAND_4051 ;
  wire \uart_tx/b<5>/FFX/RSTAND_4134 ;
  wire \uart_tx/s<1>/FFX/RSTAND_4169 ;
  wire \brg/contador<0>/FFX/RSTAND_4204 ;
  wire \uart_tx/b<6>/FFX/RSTAND_4239 ;
  wire \uart_tx/s<2>/FFX/RSTAND_4274 ;
  wire \uart_rx/n<1>/FFX/RSTAND_4309 ;
  wire \fifo_tx/empty_reg/FFX/SET ;
  wire \uart_rx/n<2>/FFX/RSTAND_4402 ;
  wire \uart_tx/s<3>/FFX/RSTAND_4437 ;
  wire \fifo_tx/w_ptr_reg<1>/FFX/RSTAND_4472 ;
  wire \fifo_tx/w_ptr_reg<2>/FFX/RSTAND_4507 ;
  wire \fifo_tx/w_ptr_reg<3>/FFX/RSTAND_4542 ;
  wire \fifo_rx/empty_reg/FFX/SET ;
  wire \uart_tx/n<1>/FFX/RSTAND_4635 ;
  wire \fifo_rx/w_ptr_reg<1>/FFX/RSTAND_4694 ;
  wire \fifo_rx/w_ptr_reg<2>/FFX/RSTAND_4753 ;
  wire \fifo_rx/w_ptr_reg<3>/FFX/RSTAND_4788 ;
  wire \uart_rx/state_rnm0_FSM_FFd1/FFX/RSTAND_4823 ;
  wire \uart_rx/b<6>/FFX/RSTAND_4858 ;
  wire \fifo_tx/r_ptr_reg<2>/FFX/RSTAND_4941 ;
  wire \uart_tx/state_rnm0_FSM_FFd2/FFX/RSTAND_4976 ;
  wire \uart_rx/s<1>/FFX/RSTAND_5131 ;
  wire \uart_rx/s<2>/FFX/RSTAND_5190 ;
  wire \fifo_tx/full_reg/FFX/RSTAND_5297 ;
  wire VCC;
  wire GND;
  wire [7 : 0] \uart_rx/b ;
  wire [2 : 0] \uart_tx/n ;
  wire [7 : 0] Result;
  wire [7 : 0] \brg/contador ;
  wire [3 : 0] \fifo_tx/w_ptr_reg ;
  wire [3 : 0] \fifo_rx/r_ptr_reg ;
  wire [3 : 0] \uart_tx/s ;
  wire [7 : 0] \uart_tx/b ;
  wire [2 : 0] \uart_rx/n ;
  wire [3 : 0] \fifo_tx/r_ptr_reg ;
  wire [3 : 3] \fifo_tx/_old_r_ptr_succ_6 ;
  wire [3 : 0] \uart_rx/s ;
  wire [3 : 0] \fifo_rx/w_ptr_reg ;
  wire [1 : 1] \fifo_rx/Madd__old_w_ptr_succ_7_cy ;
  wire [1 : 1] \fifo_tx/Madd__old_r_ptr_succ_6_cy ;
  wire [7 : 0] \uart_rx/b_next ;
  wire [2 : 0] \uart_tx/n_next ;
  wire [3 : 0] \fifo_tx/w_ptr_next ;
  wire [3 : 0] \fifo_rx/r_ptr_next ;
  wire [3 : 0] \uart_tx/s_next ;
  wire [2 : 0] \uart_rx/n_next ;
  wire [3 : 0] \fifo_tx/r_ptr_next ;
  wire [3 : 3] \fifo_rx/_old_r_ptr_succ_6 ;
  wire [1 : 1] \fifo_rx/Madd__old_r_ptr_succ_6_cy ;
  wire [7 : 0] tx_fifo_out;
  wire [3 : 0] \fifo_rx/w_ptr_next ;
  wire [1 : 1] \fifo_tx/Madd__old_w_ptr_succ_7_cy ;
  wire [1 : 1] \fifo_rx/_old_w_ptr_succ_7 ;
  wire [7 : 0] \uart_tx/b_next ;
  wire [3 : 3] \fifo_tx/_old_w_ptr_succ_7 ;
  wire [0 : 0] \brg/Mcount_contador_lut ;
  wire [2 : 1] \uart_rx/s_next ;
  initial $sdf_annotate("netgen/map/uart_map.sdf");
  X_BUF   \uart_rx/b<3>/DXMUX  (
    .I(\uart_rx/b_next [3]),
    .O(\uart_rx/b<3>/DXMUX_1553 )
  );
  X_BUF   \uart_rx/b<3>/DYMUX  (
    .I(\uart_rx/b_next [2]),
    .O(\uart_rx/b<3>/DYMUX_1538 )
  );
  X_BUF   \uart_rx/b<3>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/b<3>/SRINV_1529 )
  );
  X_BUF   \uart_rx/b<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/b<3>/CLKINV_1528 )
  );
  X_BUF   \uart_rx/b<5>/DXMUX  (
    .I(\uart_rx/b_next [5]),
    .O(\uart_rx/b<5>/DXMUX_1595 )
  );
  X_BUF   \uart_rx/b<5>/DYMUX  (
    .I(\uart_rx/b_next [4]),
    .O(\uart_rx/b<5>/DYMUX_1580 )
  );
  X_BUF   \uart_rx/b<5>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/b<5>/SRINV_1571 )
  );
  X_BUF   \uart_rx/b<5>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/b<5>/CLKINV_1570 )
  );
  X_BUF   \uart_rx/b<7>/XUSED  (
    .I(\uart_rx/state_rnm0_FSM_FFd2-In43_1634 ),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In43_0 )
  );
  X_BUF   \uart_rx/b<7>/DYMUX  (
    .I(\uart_rx/b_next [7]),
    .O(\uart_rx/b<7>/DYMUX_1621 )
  );
  X_BUF   \uart_rx/b<7>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/b<7>/CLKINV_1611 )
  );
  X_BUF   \uart_tx/n<2>/XUSED  (
    .I(N5),
    .O(N5_0)
  );
  X_BUF   \uart_tx/n<2>/DYMUX  (
    .I(\uart_tx/n_next [2]),
    .O(\uart_tx/n<2>/DYMUX_1658 )
  );
  X_BUF   \uart_tx/n<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/n<2>/CLKINV_1649 )
  );
  X_BUF   \brg/contador<1>/DYMUX  (
    .I(\brg/Mcount_contador_eqn_1 ),
    .O(\brg/contador<1>/DYMUX_1688 )
  );
  X_BUF   \brg/contador<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\brg/contador<1>/CLKINV_1677 )
  );
  X_BUF   \brg/contador<3>/DXMUX  (
    .I(\brg/Mcount_contador_eqn_3 ),
    .O(\brg/contador<3>/DXMUX_1730 )
  );
  X_BUF   \brg/contador<3>/DYMUX  (
    .I(\brg/Mcount_contador_eqn_2 ),
    .O(\brg/contador<3>/DYMUX_1714 )
  );
  X_BUF   \brg/contador<3>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\brg/contador<3>/SRINV_1704 )
  );
  X_BUF   \brg/contador<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\brg/contador<3>/CLKINV_1703 )
  );
  X_BUF   \brg/contador<5>/DXMUX  (
    .I(\brg/Mcount_contador_eqn_5 ),
    .O(\brg/contador<5>/DXMUX_1772 )
  );
  X_BUF   \brg/contador<5>/DYMUX  (
    .I(\brg/Mcount_contador_eqn_4 ),
    .O(\brg/contador<5>/DYMUX_1756 )
  );
  X_BUF   \brg/contador<5>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\brg/contador<5>/SRINV_1746 )
  );
  X_BUF   \brg/contador<5>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\brg/contador<5>/CLKINV_1745 )
  );
  X_BUF   \brg/contador<7>/DXMUX  (
    .I(\brg/Mcount_contador_eqn_7 ),
    .O(\brg/contador<7>/DXMUX_1814 )
  );
  X_BUF   \brg/contador<7>/DYMUX  (
    .I(\brg/Mcount_contador_eqn_6 ),
    .O(\brg/contador<7>/DYMUX_1798 )
  );
  X_BUF   \brg/contador<7>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\brg/contador<7>/SRINV_1788 )
  );
  X_BUF   \brg/contador<7>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\brg/contador<7>/CLKINV_1787 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<0>/XUSED  (
    .I(\fifo_tx/wr_en ),
    .O(\fifo_tx/wr_en_0 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<0>/DYMUX  (
    .I(\fifo_tx/w_ptr_next [0]),
    .O(\fifo_tx/w_ptr_reg<0>/DYMUX_1840 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/w_ptr_reg<0>/CLKINV_1831 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd2/XUSED  (
    .I(\uart_rx/s_next<2>28_1888 ),
    .O(\uart_rx/s_next<2>28_0 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd2/DYMUX  (
    .I(\uart_rx/state_rnm0_FSM_FFd2-In ),
    .O(\uart_rx/state_rnm0_FSM_FFd2/DYMUX_1875 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd2/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/state_rnm0_FSM_FFd2/CLKINV_1866 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<1>/DXMUX  (
    .I(\fifo_rx/r_ptr_next [1]),
    .O(\fifo_rx/r_ptr_reg<1>/DXMUX_1926 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<1>/DYMUX  (
    .I(\fifo_rx/r_ptr_next [0]),
    .O(\fifo_rx/r_ptr_reg<1>/DYMUX_1912 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<1>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/r_ptr_reg<1>/SRINV_1904 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/r_ptr_reg<1>/CLKINV_1903 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<3>/DXMUX  (
    .I(\fifo_rx/r_ptr_next [3]),
    .O(\fifo_rx/r_ptr_reg<3>/DXMUX_1968 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<3>/DYMUX  (
    .I(\fifo_rx/r_ptr_next [2]),
    .O(\fifo_rx/r_ptr_reg<3>/DYMUX_1954 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<3>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/r_ptr_reg<3>/SRINV_1946 )
  );
  X_BUF   \fifo_rx/r_ptr_reg<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/r_ptr_reg<3>/CLKINV_1945 )
  );
  X_BUF   \uart_tx/s<0>/XUSED  (
    .I(N69),
    .O(N69_0)
  );
  X_BUF   \uart_tx/s<0>/DYMUX  (
    .I(\uart_tx/s_next [0]),
    .O(\uart_tx/s<0>/DYMUX_1996 )
  );
  X_BUF   \uart_tx/s<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/s<0>/CLKINV_1987 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd1/DXMUX  (
    .I(\uart_tx/state_rnm0_FSM_FFd1-In ),
    .O(\uart_tx/state_rnm0_FSM_FFd1/DXMUX_2044 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd1/DYMUX  (
    .I(\uart_tx/tx_next ),
    .O(\uart_tx/state_rnm0_FSM_FFd1/DYMUX_2031 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd1/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/state_rnm0_FSM_FFd1/SRINV_2022 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd1/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/state_rnm0_FSM_FFd1/CLKINV_2021 )
  );
  X_BUF   \uart_rx/n<0>/XUSED  (
    .I(\uart_rx/n_next<2>20_2083 ),
    .O(\uart_rx/n_next<2>20_0 )
  );
  X_BUF   \uart_rx/n<0>/DYMUX  (
    .I(\uart_rx/n_next [0]),
    .O(\uart_rx/n<0>/DYMUX_2070 )
  );
  X_BUF   \uart_rx/n<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/n<0>/CLKINV_2061 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<1>/DXMUX  (
    .I(\fifo_tx/r_ptr_next [1]),
    .O(\fifo_tx/r_ptr_reg<1>/DXMUX_2121 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<1>/DYMUX  (
    .I(\fifo_tx/r_ptr_next [0]),
    .O(\fifo_tx/r_ptr_reg<1>/DYMUX_2107 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<1>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/r_ptr_reg<1>/SRINV_2099 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/r_ptr_reg<1>/CLKINV_2098 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<3>/DYMUX  (
    .I(\fifo_tx/r_ptr_next [3]),
    .O(\fifo_tx/r_ptr_reg<3>/DYMUX_2144 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/r_ptr_reg<3>/CLKINV_2135 )
  );
  X_BUF   \N128/XUSED  (
    .I(N128),
    .O(N128_0)
  );
  X_BUF   \N128/YUSED  (
    .I(\uart_rx/s_next<3>36_2165 ),
    .O(\uart_rx/s_next<3>36_0 )
  );
  X_BUF   \N49/XUSED  (
    .I(N49),
    .O(N49_0)
  );
  X_BUF   \N49/YUSED  (
    .I(N113),
    .O(N113_0)
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \fifo_tx/r_ptr_next<2>1_SW0  (
    .ADR0(\fifo_tx/empty_reg_1372 ),
    .ADR1(wr_uart_IBUF_1333),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N41)
  );
  X_BUF   \N41/XUSED  (
    .I(N41),
    .O(N41_0)
  );
  X_BUF   \N41/YUSED  (
    .I(N33),
    .O(N33_0)
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  \fifo_tx/r_ptr_next<3>1_SW0  (
    .ADR0(\fifo_tx/empty_reg_1372 ),
    .ADR1(wr_uart_IBUF_1333),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'h0808 ))
  \uart_rx/s_next<2>21  (
    .ADR0(\uart_rx/s [0]),
    .ADR1(\uart_rx/s [1]),
    .ADR2(\uart_rx/s [2]),
    .ADR3(VCC),
    .O(\uart_rx/s_next<2>21_2244 )
  );
  X_BUF   \uart_rx/s_next<2>21/XUSED  (
    .I(\uart_rx/s_next<2>21_2244 ),
    .O(\uart_rx/s_next<2>21_0 )
  );
  X_BUF   \uart_rx/s_next<2>21/YUSED  (
    .I(N120),
    .O(N120_0)
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \uart_rx/s_next<0>20_SW0_SW0  (
    .ADR0(\uart_rx/s [3]),
    .ADR1(\uart_rx/s [2]),
    .ADR2(\uart_rx/s [1]),
    .ADR3(VCC),
    .O(N120)
  );
  X_LUT4 #(
    .INIT ( 16'hF7F7 ))
  \uart_rx/RX_DONE1_SW0  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\brg/ti_1361 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR3(VCC),
    .O(N74)
  );
  X_BUF   \N74/XUSED  (
    .I(N74),
    .O(N74_0)
  );
  X_BUF   \N74/YUSED  (
    .I(N31),
    .O(N31_0)
  );
  X_LUT4 #(
    .INIT ( 16'hA222 ))
  \uart_rx/n_next<0>_SW0  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\uart_rx/state_rnm0_cmp_eq0001 ),
    .ADR2(\uart_rx/n [2]),
    .ADR3(\uart_rx/n [1]),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hF7FF ))
  \uart_tx/s_next<0>43_SW1  (
    .ADR0(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR3(\brg/ti_1361 ),
    .O(N99)
  );
  X_BUF   \N99/XUSED  (
    .I(N99),
    .O(N99_0)
  );
  X_BUF   \N99/YUSED  (
    .I(N4),
    .O(N4_0)
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \uart_tx/state_rnm0_FSM_FFd2-In_SW0  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR1(\fifo_tx/empty_reg_1372 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/ti_and00001  (
    .ADR0(CLK_IBUF1),
    .ADR1(RESET_IBUF_1300),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/ti_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ))
  \fifo_rx/r_ptr_next<1>1_SW0  (
    .ADR0(\fifo_rx/r_ptr_reg [1]),
    .ADR1(rd_uart_IBUF_1346),
    .ADR2(\fifo_rx/r_ptr_reg [0]),
    .ADR3(VCC),
    .O(N53)
  );
  X_BUF   \N53/XUSED  (
    .I(N53),
    .O(N53_0)
  );
  X_BUF   \N53/YUSED  (
    .I(\fifo_rx/Mmux_full_next321_2320 ),
    .O(\fifo_rx/Mmux_full_next321_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h0606 ))
  \fifo_rx/Mmux_full_next321  (
    .ADR0(\fifo_rx/r_ptr_reg [0]),
    .ADR1(\fifo_rx/w_ptr_reg [0]),
    .ADR2(rd_uart_IBUF_1346),
    .ADR3(VCC),
    .O(\fifo_rx/Mmux_full_next321_2320 )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \fifo_rx/Madd__old_r_ptr_succ_6_xor<3>11  (
    .ADR0(\fifo_rx/r_ptr_reg [3]),
    .ADR1(\fifo_rx/r_ptr_reg [2]),
    .ADR2(\fifo_rx/r_ptr_reg [1]),
    .ADR3(\fifo_rx/r_ptr_reg [0]),
    .O(\fifo_rx/_old_r_ptr_succ_6 [3])
  );
  X_BUF   \fifo_rx/_old_r_ptr_succ_6<3>/XUSED  (
    .I(\fifo_rx/_old_r_ptr_succ_6 [3]),
    .O(\fifo_rx/_old_r_ptr_succ_6<3>_0 )
  );
  X_BUF   \fifo_rx/_old_r_ptr_succ_6<3>/YUSED  (
    .I(\fifo_rx/Madd__old_r_ptr_succ_6_cy [1]),
    .O(\fifo_rx/Madd__old_r_ptr_succ_6_cy<1>_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \fifo_rx/Madd__old_r_ptr_succ_6_cy<1>11  (
    .ADR0(\fifo_rx/r_ptr_reg [1]),
    .ADR1(\fifo_rx/r_ptr_reg [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_rx/Madd__old_r_ptr_succ_6_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  \fifo_rx/w_ptr_next<3>1_SW0  (
    .ADR0(\fifo_rx/full_reg_1393 ),
    .ADR1(rd_uart_IBUF_1346),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N37)
  );
  X_BUF   \N37/XUSED  (
    .I(N37),
    .O(N37_0)
  );
  X_BUF   \N37/YUSED  (
    .I(N43),
    .O(N43_0)
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \fifo_rx/w_ptr_next<2>1_SW0  (
    .ADR0(\fifo_rx/full_reg_1393 ),
    .ADR1(rd_uart_IBUF_1346),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N43)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_rx/s_next<1>45  (
    .ADR0(\brg/ti_1361 ),
    .ADR1(\uart_rx/s [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/s_next<1>45_2400 )
  );
  X_BUF   \uart_rx/s_next<1>45/XUSED  (
    .I(\uart_rx/s_next<1>45_2400 ),
    .O(\uart_rx/s_next<1>45_0 )
  );
  X_BUF   \uart_rx/s_next<1>45/YUSED  (
    .I(N109),
    .O(N109_0)
  );
  X_LUT4 #(
    .INIT ( 16'hF7FF ))
  \uart_rx/n_next<2>11_SW0  (
    .ADR0(\uart_rx/s [0]),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR3(\brg/ti_1361 ),
    .O(N109)
  );
  X_LUT4 #(
    .INIT ( 16'h2A08 ))
  \uart_tx/s_next<1>41  (
    .ADR0(\brg/ti_1361 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR2(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR3(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .O(\uart_tx/N13 )
  );
  X_BUF   \uart_tx/N13/XUSED  (
    .I(\uart_tx/N13 ),
    .O(\uart_tx/N13_0 )
  );
  X_BUF   \uart_tx/N13/YUSED  (
    .I(\uart_tx/state_rnm0_cmp_eq0000_pack_1 ),
    .O(\uart_tx/state_rnm0_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_tx/state_rnm0_cmp_eq00001  (
    .ADR0(\uart_tx/s [3]),
    .ADR1(\uart_tx/s [2]),
    .ADR2(\uart_tx/s [1]),
    .ADR3(\uart_tx/s [0]),
    .O(\uart_tx/state_rnm0_cmp_eq0000_pack_1 )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular1.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<0>/DIG_MUX_2447 ),
    .CLK(\tx_fifo_out<0>/CLKINV_2445 ),
    .WE(\tx_fifo_out<0>/SRINV_2439 ),
    .O(\tx_fifo_out<0>/G/RAMOUT )
  );
  X_BUF   \tx_fifo_out<0>/XUSED  (
    .I(tx_fifo_out[0]),
    .O(\tx_fifo_out<0>_0 )
  );
  X_BUF   \tx_fifo_out<0>/DIF_MUX  (
    .I(\tx_fifo_out<0>/DIG_MUX_2447 ),
    .O(\tx_fifo_out<0>/DIF_MUX_2460 )
  );
  X_BUF   \tx_fifo_out<0>/DIG_MUX  (
    .I(\w_data<0>/INBUF ),
    .O(\tx_fifo_out<0>/DIG_MUX_2447 )
  );
  X_BUF   \tx_fifo_out<0>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<0>/SRINV_2439 )
  );
  X_BUF   \tx_fifo_out<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<0>/CLKINV_2445 )
  );
  X_BUF   \tx_fifo_out<1>/XUSED  (
    .I(tx_fifo_out[1]),
    .O(\tx_fifo_out<1>_0 )
  );
  X_BUF   \tx_fifo_out<1>/DIF_MUX  (
    .I(\tx_fifo_out<1>/DIG_MUX_2495 ),
    .O(\tx_fifo_out<1>/DIF_MUX_2508 )
  );
  X_BUF   \tx_fifo_out<1>/DIG_MUX  (
    .I(\w_data<1>/INBUF ),
    .O(\tx_fifo_out<1>/DIG_MUX_2495 )
  );
  X_BUF   \tx_fifo_out<1>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<1>/SRINV_2487 )
  );
  X_BUF   \tx_fifo_out<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<1>/CLKINV_2493 )
  );
  X_BUF   \tx_fifo_out<2>/XUSED  (
    .I(tx_fifo_out[2]),
    .O(\tx_fifo_out<2>_0 )
  );
  X_BUF   \tx_fifo_out<2>/DIF_MUX  (
    .I(\tx_fifo_out<2>/DIG_MUX_2543 ),
    .O(\tx_fifo_out<2>/DIF_MUX_2556 )
  );
  X_BUF   \tx_fifo_out<2>/DIG_MUX  (
    .I(\w_data<2>/INBUF ),
    .O(\tx_fifo_out<2>/DIG_MUX_2543 )
  );
  X_BUF   \tx_fifo_out<2>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<2>/SRINV_2535 )
  );
  X_BUF   \tx_fifo_out<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<2>/CLKINV_2541 )
  );
  X_BUF   \uart_tx/n<0>/DXMUX  (
    .I(\uart_tx/n_next [0]),
    .O(\uart_tx/n<0>/DXMUX_2599 )
  );
  X_BUF   \uart_tx/n<0>/YUSED  (
    .I(\uart_tx/N121_pack_2 ),
    .O(\uart_tx/N121 )
  );
  X_BUF   \uart_tx/n<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/n<0>/CLKINV_2583 )
  );
  X_BUF   \tx_fifo_out<3>/XUSED  (
    .I(tx_fifo_out[3]),
    .O(\tx_fifo_out<3>_0 )
  );
  X_BUF   \tx_fifo_out<3>/DIF_MUX  (
    .I(\tx_fifo_out<3>/DIG_MUX_2626 ),
    .O(\tx_fifo_out<3>/DIF_MUX_2639 )
  );
  X_BUF   \tx_fifo_out<3>/DIG_MUX  (
    .I(\w_data<3>/INBUF ),
    .O(\tx_fifo_out<3>/DIG_MUX_2626 )
  );
  X_BUF   \tx_fifo_out<3>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<3>/SRINV_2618 )
  );
  X_BUF   \tx_fifo_out<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<3>/CLKINV_2624 )
  );
  X_BUF   \N7/XUSED  (
    .I(N7),
    .O(N7_0)
  );
  X_BUF   \N7/YUSED  (
    .I(N10),
    .O(N10_0)
  );
  X_BUF   \tx_fifo_out<4>/XUSED  (
    .I(tx_fifo_out[4]),
    .O(\tx_fifo_out<4>_0 )
  );
  X_BUF   \tx_fifo_out<4>/DIF_MUX  (
    .I(\tx_fifo_out<4>/DIG_MUX_2698 ),
    .O(\tx_fifo_out<4>/DIF_MUX_2711 )
  );
  X_BUF   \tx_fifo_out<4>/DIG_MUX  (
    .I(\w_data<4>/INBUF ),
    .O(\tx_fifo_out<4>/DIG_MUX_2698 )
  );
  X_BUF   \tx_fifo_out<4>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<4>/SRINV_2690 )
  );
  X_BUF   \tx_fifo_out<4>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<4>/CLKINV_2696 )
  );
  X_BUF   \tx_fifo_out<5>/XUSED  (
    .I(tx_fifo_out[5]),
    .O(\tx_fifo_out<5>_0 )
  );
  X_BUF   \tx_fifo_out<5>/DIF_MUX  (
    .I(\tx_fifo_out<5>/DIG_MUX_2746 ),
    .O(\tx_fifo_out<5>/DIF_MUX_2759 )
  );
  X_BUF   \tx_fifo_out<5>/DIG_MUX  (
    .I(\w_data<5>/INBUF ),
    .O(\tx_fifo_out<5>/DIG_MUX_2746 )
  );
  X_BUF   \tx_fifo_out<5>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<5>/SRINV_2738 )
  );
  X_BUF   \tx_fifo_out<5>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<5>/CLKINV_2744 )
  );
  X_BUF   \tx_fifo_out<6>/XUSED  (
    .I(tx_fifo_out[6]),
    .O(\tx_fifo_out<6>_0 )
  );
  X_BUF   \tx_fifo_out<6>/DIF_MUX  (
    .I(\tx_fifo_out<6>/DIG_MUX_2794 ),
    .O(\tx_fifo_out<6>/DIF_MUX_2807 )
  );
  X_BUF   \tx_fifo_out<6>/DIG_MUX  (
    .I(\w_data<6>/INBUF ),
    .O(\tx_fifo_out<6>/DIG_MUX_2794 )
  );
  X_BUF   \tx_fifo_out<6>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<6>/SRINV_2786 )
  );
  X_BUF   \tx_fifo_out<6>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<6>/CLKINV_2792 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<0>/DXMUX  (
    .I(\fifo_rx/w_ptr_next [0]),
    .O(\fifo_rx/w_ptr_reg<0>/DXMUX_2850 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<0>/YUSED  (
    .I(\fifo_rx/wr_en ),
    .O(\fifo_rx/wr_en_0 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/w_ptr_reg<0>/CLKINV_2832 )
  );
  X_BUF   \tx_fifo_out<7>/XUSED  (
    .I(tx_fifo_out[7]),
    .O(\tx_fifo_out<7>_0 )
  );
  X_BUF   \tx_fifo_out<7>/DIF_MUX  (
    .I(\tx_fifo_out<7>/DIG_MUX_2877 ),
    .O(\tx_fifo_out<7>/DIF_MUX_2890 )
  );
  X_BUF   \tx_fifo_out<7>/DIG_MUX  (
    .I(\w_data<7>/INBUF ),
    .O(\tx_fifo_out<7>/DIG_MUX_2877 )
  );
  X_BUF   \tx_fifo_out<7>/SRINV  (
    .I(\fifo_tx/wr_en_0 ),
    .O(\tx_fifo_out<7>/SRINV_2869 )
  );
  X_BUF   \tx_fifo_out<7>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\tx_fifo_out<7>/CLKINV_2875 )
  );
  X_BUF   \fifo_tx/Madd__old_w_ptr_succ_7_cy<1>/XUSED  (
    .I(\fifo_tx/Madd__old_w_ptr_succ_7_cy [1]),
    .O(\fifo_tx/Madd__old_w_ptr_succ_7_cy<1>_0 )
  );
  X_BUF   \fifo_tx/Madd__old_w_ptr_succ_7_cy<1>/YUSED  (
    .I(N103),
    .O(N103_0)
  );
  X_BUF   \r_data_0_OBUF/DIF_MUX  (
    .I(\r_data_0_OBUF/DIG_MUX_2949 ),
    .O(\r_data_0_OBUF/DIF_MUX_2962 )
  );
  X_BUF   \r_data_0_OBUF/DIG_MUX  (
    .I(\uart_rx/b [0]),
    .O(\r_data_0_OBUF/DIG_MUX_2949 )
  );
  X_BUF   \r_data_0_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_0_OBUF/SRINV_2941 )
  );
  X_BUF   \r_data_0_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_0_OBUF/CLKINV_2947 )
  );
  X_BUF   \fifo_rx/_old_w_ptr_succ_7<1>/XUSED  (
    .I(\fifo_rx/_old_w_ptr_succ_7 [1]),
    .O(\fifo_rx/_old_w_ptr_succ_7<1>_0 )
  );
  X_BUF   \r_data_1_OBUF/DIF_MUX  (
    .I(\r_data_1_OBUF/DIG_MUX_3009 ),
    .O(\r_data_1_OBUF/DIF_MUX_3022 )
  );
  X_BUF   \r_data_1_OBUF/DIG_MUX  (
    .I(\uart_rx/b [1]),
    .O(\r_data_1_OBUF/DIG_MUX_3009 )
  );
  X_BUF   \r_data_1_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_1_OBUF/SRINV_3001 )
  );
  X_BUF   \r_data_1_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_1_OBUF/CLKINV_3007 )
  );
  X_BUF   \r_data_2_OBUF/DIF_MUX  (
    .I(\r_data_2_OBUF/DIG_MUX_3057 ),
    .O(\r_data_2_OBUF/DIF_MUX_3070 )
  );
  X_BUF   \r_data_2_OBUF/DIG_MUX  (
    .I(\uart_rx/b [2]),
    .O(\r_data_2_OBUF/DIG_MUX_3057 )
  );
  X_BUF   \r_data_2_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_2_OBUF/SRINV_3049 )
  );
  X_BUF   \r_data_2_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_2_OBUF/CLKINV_3055 )
  );
  X_BUF   \uart_rx/s_next<1>4/XUSED  (
    .I(\uart_rx/s_next<1>4_3106 ),
    .O(\uart_rx/s_next<1>4_0 )
  );
  X_BUF   \uart_rx/s_next<1>4/YUSED  (
    .I(N98),
    .O(N98_0)
  );
  X_BUF   \r_data_3_OBUF/DIF_MUX  (
    .I(\r_data_3_OBUF/DIG_MUX_3129 ),
    .O(\r_data_3_OBUF/DIF_MUX_3142 )
  );
  X_BUF   \r_data_3_OBUF/DIG_MUX  (
    .I(\uart_rx/b [3]),
    .O(\r_data_3_OBUF/DIG_MUX_3129 )
  );
  X_BUF   \r_data_3_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_3_OBUF/SRINV_3121 )
  );
  X_BUF   \r_data_3_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_3_OBUF/CLKINV_3127 )
  );
  X_BUF   \r_data_4_OBUF/DIF_MUX  (
    .I(\r_data_4_OBUF/DIG_MUX_3177 ),
    .O(\r_data_4_OBUF/DIF_MUX_3190 )
  );
  X_BUF   \r_data_4_OBUF/DIG_MUX  (
    .I(\uart_rx/b [4]),
    .O(\r_data_4_OBUF/DIG_MUX_3177 )
  );
  X_BUF   \r_data_4_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_4_OBUF/SRINV_3169 )
  );
  X_BUF   \r_data_4_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_4_OBUF/CLKINV_3175 )
  );
  X_BUF   \r_data_5_OBUF/DIF_MUX  (
    .I(\r_data_5_OBUF/DIG_MUX_3225 ),
    .O(\r_data_5_OBUF/DIF_MUX_3238 )
  );
  X_BUF   \r_data_5_OBUF/DIG_MUX  (
    .I(\uart_rx/b [5]),
    .O(\r_data_5_OBUF/DIG_MUX_3225 )
  );
  X_BUF   \r_data_5_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_5_OBUF/SRINV_3217 )
  );
  X_BUF   \r_data_5_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_5_OBUF/CLKINV_3223 )
  );
  X_BUF   \r_data_6_OBUF/DIF_MUX  (
    .I(\r_data_6_OBUF/DIG_MUX_3273 ),
    .O(\r_data_6_OBUF/DIF_MUX_3286 )
  );
  X_BUF   \r_data_6_OBUF/DIG_MUX  (
    .I(\uart_rx/b [6]),
    .O(\r_data_6_OBUF/DIG_MUX_3273 )
  );
  X_BUF   \r_data_6_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_6_OBUF/SRINV_3265 )
  );
  X_BUF   \r_data_6_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_6_OBUF/CLKINV_3271 )
  );
  X_BUF   \uart_tx/b<7>/DXMUX  (
    .I(\uart_tx/b_next [7]),
    .O(\uart_tx/b<7>/DXMUX_3329 )
  );
  X_BUF   \uart_tx/b<7>/YUSED  (
    .I(\uart_tx/N6_pack_2 ),
    .O(\uart_tx/N6 )
  );
  X_BUF   \uart_tx/b<7>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<7>/CLKINV_3312 )
  );
  X_BUF   \r_data_7_OBUF/DIF_MUX  (
    .I(\r_data_7_OBUF/DIG_MUX_3356 ),
    .O(\r_data_7_OBUF/DIF_MUX_3369 )
  );
  X_BUF   \r_data_7_OBUF/DIG_MUX  (
    .I(\uart_rx/b [7]),
    .O(\r_data_7_OBUF/DIG_MUX_3356 )
  );
  X_BUF   \r_data_7_OBUF/SRINV  (
    .I(\fifo_rx/wr_en_0 ),
    .O(\r_data_7_OBUF/SRINV_3348 )
  );
  X_BUF   \r_data_7_OBUF/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\r_data_7_OBUF/CLKINV_3354 )
  );
  X_BUF   \fifo_tx/_old_w_ptr_succ_7<3>/XUSED  (
    .I(\fifo_tx/_old_w_ptr_succ_7 [3]),
    .O(\fifo_tx/_old_w_ptr_succ_7<3>_0 )
  );
  X_BUF   \N62/XUSED  (
    .I(N62),
    .O(N62_0)
  );
  X_ZERO   \Result<0>/LOGIC_ZERO  (
    .O(\Result<0>/LOGIC_ZERO_3424 )
  );
  X_ONE   \Result<0>/LOGIC_ONE  (
    .O(\Result<0>/LOGIC_ONE_3441 )
  );
  X_BUF   \Result<0>/XUSED  (
    .I(\Result<0>/XORF_3442 ),
    .O(Result[0])
  );
  X_XOR2   \Result<0>/XORF  (
    .I0(\Result<0>/CYINIT_3440 ),
    .I1(\brg/Mcount_contador_lut [0]),
    .O(\Result<0>/XORF_3442 )
  );
  X_MUX2   \Result<0>/CYMUXF  (
    .IA(\Result<0>/LOGIC_ONE_3441 ),
    .IB(\Result<0>/CYINIT_3440 ),
    .SEL(\Result<0>/CYSELF_3431 ),
    .O(\brg/Mcount_contador_cy[0] )
  );
  X_BUF   \Result<0>/CYINIT  (
    .I(\Result<0>/BXINV_3429 ),
    .O(\Result<0>/CYINIT_3440 )
  );
  X_BUF   \Result<0>/CYSELF  (
    .I(\brg/Mcount_contador_lut [0]),
    .O(\Result<0>/CYSELF_3431 )
  );
  X_BUF   \Result<0>/BXINV  (
    .I(1'b0),
    .O(\Result<0>/BXINV_3429 )
  );
  X_BUF   \Result<0>/YUSED  (
    .I(\Result<0>/XORG_3427 ),
    .O(Result[1])
  );
  X_XOR2   \Result<0>/XORG  (
    .I0(\brg/Mcount_contador_cy[0] ),
    .I1(\Result<0>/G ),
    .O(\Result<0>/XORG_3427 )
  );
  X_BUF   \Result<0>/COUTUSED  (
    .I(\Result<0>/CYMUXG_3426 ),
    .O(\brg/Mcount_contador_cy[1] )
  );
  X_MUX2   \Result<0>/CYMUXG  (
    .IA(\Result<0>/LOGIC_ZERO_3424 ),
    .IB(\brg/Mcount_contador_cy[0] ),
    .SEL(\Result<0>/CYSELG_3415 ),
    .O(\Result<0>/CYMUXG_3426 )
  );
  X_BUF   \Result<0>/CYSELG  (
    .I(\Result<0>/G ),
    .O(\Result<0>/CYSELG_3415 )
  );
  X_ZERO   \Result<2>/LOGIC_ZERO  (
    .O(\Result<2>/LOGIC_ZERO_3460 )
  );
  X_BUF   \Result<2>/XUSED  (
    .I(\Result<2>/XORF_3480 ),
    .O(Result[2])
  );
  X_XOR2   \Result<2>/XORF  (
    .I0(\Result<2>/CYINIT_3479 ),
    .I1(\Result<2>/F ),
    .O(\Result<2>/XORF_3480 )
  );
  X_MUX2   \Result<2>/CYMUXF  (
    .IA(\Result<2>/LOGIC_ZERO_3460 ),
    .IB(\Result<2>/CYINIT_3479 ),
    .SEL(\Result<2>/CYSELF_3466 ),
    .O(\brg/Mcount_contador_cy[2] )
  );
  X_MUX2   \Result<2>/CYMUXF2  (
    .IA(\Result<2>/LOGIC_ZERO_3460 ),
    .IB(\Result<2>/LOGIC_ZERO_3460 ),
    .SEL(\Result<2>/CYSELF_3466 ),
    .O(\Result<2>/CYMUXF2_3461 )
  );
  X_BUF   \Result<2>/CYINIT  (
    .I(\brg/Mcount_contador_cy[1] ),
    .O(\Result<2>/CYINIT_3479 )
  );
  X_BUF   \Result<2>/CYSELF  (
    .I(\Result<2>/F ),
    .O(\Result<2>/CYSELF_3466 )
  );
  X_BUF   \Result<2>/YUSED  (
    .I(\Result<2>/XORG_3468 ),
    .O(Result[3])
  );
  X_XOR2   \Result<2>/XORG  (
    .I0(\brg/Mcount_contador_cy[2] ),
    .I1(\Result<2>/G ),
    .O(\Result<2>/XORG_3468 )
  );
  X_BUF   \Result<2>/COUTUSED  (
    .I(\Result<2>/CYMUXFAST_3465 ),
    .O(\brg/Mcount_contador_cy[3] )
  );
  X_BUF   \Result<2>/FASTCARRY  (
    .I(\brg/Mcount_contador_cy[1] ),
    .O(\Result<2>/FASTCARRY_3463 )
  );
  X_AND2   \Result<2>/CYAND  (
    .I0(\Result<2>/CYSELG_3451 ),
    .I1(\Result<2>/CYSELF_3466 ),
    .O(\Result<2>/CYAND_3464 )
  );
  X_MUX2   \Result<2>/CYMUXFAST  (
    .IA(\Result<2>/CYMUXG2_3462 ),
    .IB(\Result<2>/FASTCARRY_3463 ),
    .SEL(\Result<2>/CYAND_3464 ),
    .O(\Result<2>/CYMUXFAST_3465 )
  );
  X_MUX2   \Result<2>/CYMUXG2  (
    .IA(\Result<2>/LOGIC_ZERO_3460 ),
    .IB(\Result<2>/CYMUXF2_3461 ),
    .SEL(\Result<2>/CYSELG_3451 ),
    .O(\Result<2>/CYMUXG2_3462 )
  );
  X_BUF   \Result<2>/CYSELG  (
    .I(\Result<2>/G ),
    .O(\Result<2>/CYSELG_3451 )
  );
  X_ZERO   \Result<4>/LOGIC_ZERO  (
    .O(\Result<4>/LOGIC_ZERO_3498 )
  );
  X_BUF   \Result<4>/XUSED  (
    .I(\Result<4>/XORF_3518 ),
    .O(Result[4])
  );
  X_XOR2   \Result<4>/XORF  (
    .I0(\Result<4>/CYINIT_3517 ),
    .I1(\Result<4>/F ),
    .O(\Result<4>/XORF_3518 )
  );
  X_MUX2   \Result<4>/CYMUXF  (
    .IA(\Result<4>/LOGIC_ZERO_3498 ),
    .IB(\Result<4>/CYINIT_3517 ),
    .SEL(\Result<4>/CYSELF_3504 ),
    .O(\brg/Mcount_contador_cy[4] )
  );
  X_MUX2   \Result<4>/CYMUXF2  (
    .IA(\Result<4>/LOGIC_ZERO_3498 ),
    .IB(\Result<4>/LOGIC_ZERO_3498 ),
    .SEL(\Result<4>/CYSELF_3504 ),
    .O(\Result<4>/CYMUXF2_3499 )
  );
  X_BUF   \Result<4>/CYINIT  (
    .I(\brg/Mcount_contador_cy[3] ),
    .O(\Result<4>/CYINIT_3517 )
  );
  X_BUF   \Result<4>/CYSELF  (
    .I(\Result<4>/F ),
    .O(\Result<4>/CYSELF_3504 )
  );
  X_BUF   \Result<4>/YUSED  (
    .I(\Result<4>/XORG_3506 ),
    .O(Result[5])
  );
  X_XOR2   \Result<4>/XORG  (
    .I0(\brg/Mcount_contador_cy[4] ),
    .I1(\Result<4>/G ),
    .O(\Result<4>/XORG_3506 )
  );
  X_BUF   \Result<4>/FASTCARRY  (
    .I(\brg/Mcount_contador_cy[3] ),
    .O(\Result<4>/FASTCARRY_3501 )
  );
  X_AND2   \Result<4>/CYAND  (
    .I0(\Result<4>/CYSELG_3489 ),
    .I1(\Result<4>/CYSELF_3504 ),
    .O(\Result<4>/CYAND_3502 )
  );
  X_MUX2   \Result<4>/CYMUXFAST  (
    .IA(\Result<4>/CYMUXG2_3500 ),
    .IB(\Result<4>/FASTCARRY_3501 ),
    .SEL(\Result<4>/CYAND_3502 ),
    .O(\Result<4>/CYMUXFAST_3503 )
  );
  X_MUX2   \Result<4>/CYMUXG2  (
    .IA(\Result<4>/LOGIC_ZERO_3498 ),
    .IB(\Result<4>/CYMUXF2_3499 ),
    .SEL(\Result<4>/CYSELG_3489 ),
    .O(\Result<4>/CYMUXG2_3500 )
  );
  X_BUF   \Result<4>/CYSELG  (
    .I(\Result<4>/G ),
    .O(\Result<4>/CYSELG_3489 )
  );
  X_ZERO   \Result<6>/LOGIC_ZERO  (
    .O(\Result<6>/LOGIC_ZERO_3548 )
  );
  X_BUF   \Result<6>/XUSED  (
    .I(\Result<6>/XORF_3549 ),
    .O(Result[6])
  );
  X_XOR2   \Result<6>/XORF  (
    .I0(\Result<6>/CYINIT_3547 ),
    .I1(\Result<6>/F ),
    .O(\Result<6>/XORF_3549 )
  );
  X_MUX2   \Result<6>/CYMUXF  (
    .IA(\Result<6>/LOGIC_ZERO_3548 ),
    .IB(\Result<6>/CYINIT_3547 ),
    .SEL(\Result<6>/CYSELF_3538 ),
    .O(\brg/Mcount_contador_cy[6] )
  );
  X_BUF   \Result<6>/CYINIT  (
    .I(\Result<4>/CYMUXFAST_3503 ),
    .O(\Result<6>/CYINIT_3547 )
  );
  X_BUF   \Result<6>/CYSELF  (
    .I(\Result<6>/F ),
    .O(\Result<6>/CYSELF_3538 )
  );
  X_BUF   \Result<6>/YUSED  (
    .I(\Result<6>/XORG_3535 ),
    .O(Result[7])
  );
  X_XOR2   \Result<6>/XORG  (
    .I0(\brg/Mcount_contador_cy[6] ),
    .I1(\brg/contador<7>_rt_3532 ),
    .O(\Result<6>/XORG_3535 )
  );
  X_IPAD   \wr_uart/PAD  (
    .PAD(wr_uart)
  );
  X_BUF   wr_uart_IBUF (
    .I(wr_uart),
    .O(\wr_uart/INBUF )
  );
  X_IPAD   \w_data<0>/PAD  (
    .PAD(w_data[0])
  );
  X_BUF   w_data_0_IBUF (
    .I(w_data[0]),
    .O(\w_data<0>/INBUF )
  );
  X_IPAD   \w_data<1>/PAD  (
    .PAD(w_data[1])
  );
  X_BUF   w_data_1_IBUF (
    .I(w_data[1]),
    .O(\w_data<1>/INBUF )
  );
  X_IPAD   \w_data<2>/PAD  (
    .PAD(w_data[2])
  );
  X_BUF   w_data_2_IBUF (
    .I(w_data[2]),
    .O(\w_data<2>/INBUF )
  );
  X_IPAD   \w_data<3>/PAD  (
    .PAD(w_data[3])
  );
  X_BUF   w_data_3_IBUF (
    .I(w_data[3]),
    .O(\w_data<3>/INBUF )
  );
  X_OPAD   \rx_empty/PAD  (
    .PAD(rx_empty)
  );
  X_OBUF   rx_empty_OBUF (
    .I(\rx_empty/O ),
    .O(rx_empty)
  );
  X_IPAD   \w_data<4>/PAD  (
    .PAD(w_data[4])
  );
  X_BUF   w_data_4_IBUF (
    .I(w_data[4]),
    .O(\w_data<4>/INBUF )
  );
  X_IPAD   \w_data<5>/PAD  (
    .PAD(w_data[5])
  );
  X_BUF   w_data_5_IBUF (
    .I(w_data[5]),
    .O(\w_data<5>/INBUF )
  );
  X_IPAD   \w_data<6>/PAD  (
    .PAD(w_data[6])
  );
  X_BUF   w_data_6_IBUF (
    .I(w_data[6]),
    .O(\w_data<6>/INBUF )
  );
  X_IPAD   \w_data<7>/PAD  (
    .PAD(w_data[7])
  );
  X_BUF   w_data_7_IBUF (
    .I(w_data[7]),
    .O(\w_data<7>/INBUF )
  );
  X_IPAD   \rx/PAD  (
    .PAD(rx)
  );
  X_BUF   rx_IBUF (
    .I(rx),
    .O(\rx/INBUF )
  );
  X_OPAD   \r_data<0>/PAD  (
    .PAD(r_data[0])
  );
  X_OBUF   r_data_0_OBUF (
    .I(\r_data<0>/O ),
    .O(r_data[0])
  );
  X_OPAD   \r_data<1>/PAD  (
    .PAD(r_data[1])
  );
  X_OBUF   r_data_1_OBUF (
    .I(\r_data<1>/O ),
    .O(r_data[1])
  );
  X_OPAD   \tx/PAD  (
    .PAD(tx)
  );
  X_OBUF   tx_OBUF (
    .I(\tx/O ),
    .O(tx)
  );
  X_IPAD   \rd_uart/PAD  (
    .PAD(rd_uart)
  );
  X_BUF   rd_uart_IBUF (
    .I(rd_uart),
    .O(\rd_uart/INBUF )
  );
  X_OPAD   \r_data<2>/PAD  (
    .PAD(r_data[2])
  );
  X_OBUF   r_data_2_OBUF (
    .I(\r_data<2>/O ),
    .O(r_data[2])
  );
  X_OPAD   \tx_full/PAD  (
    .PAD(tx_full)
  );
  X_OBUF   tx_full_OBUF (
    .I(\tx_full/O ),
    .O(tx_full)
  );
  X_OPAD   \r_data<3>/PAD  (
    .PAD(r_data[3])
  );
  X_OBUF   r_data_3_OBUF (
    .I(\r_data<3>/O ),
    .O(r_data[3])
  );
  X_OPAD   \r_data<4>/PAD  (
    .PAD(r_data[4])
  );
  X_OBUF   r_data_4_OBUF (
    .I(\r_data<4>/O ),
    .O(r_data[4])
  );
  X_OPAD   \r_data<5>/PAD  (
    .PAD(r_data[5])
  );
  X_OBUF   r_data_5_OBUF (
    .I(\r_data<5>/O ),
    .O(r_data[5])
  );
  X_OPAD   \r_data<6>/PAD  (
    .PAD(r_data[6])
  );
  X_OBUF   r_data_6_OBUF (
    .I(\r_data<6>/O ),
    .O(r_data[6])
  );
  X_OPAD   \r_data<7>/PAD  (
    .PAD(r_data[7])
  );
  X_OBUF   r_data_7_OBUF (
    .I(\r_data<7>/O ),
    .O(r_data[7])
  );
  X_IPAD   \CLK/PAD  (
    .PAD(CLK)
  );
  X_BUF   CLK_IBUF (
    .I(CLK),
    .O(\CLK/INBUF )
  );
  X_IPAD   \RESET/PAD  (
    .PAD(RESET)
  );
  X_BUF   RESET_IBUF (
    .I(RESET),
    .O(\RESET/INBUF )
  );
  X_BUFGMUX   CLK_IBUF_BUFG (
    .I0(CLK_IBUF1),
    .I1(GND),
    .S(\CLK_IBUF_BUFG/S_INVNOT ),
    .O(CLK_IBUF_1299)
  );
  X_INV   \CLK_IBUF_BUFG/SINV  (
    .I(1'b1),
    .O(\CLK_IBUF_BUFG/S_INVNOT )
  );
  X_BUF   \uart_rx/s<3>/DXMUX  (
    .I(\uart_rx/s<3>/F5MUX_3749 ),
    .O(\uart_rx/s<3>/DXMUX_3751 )
  );
  X_MUX2   \uart_rx/s<3>/F5MUX  (
    .IA(N124),
    .IB(N125),
    .SEL(\uart_rx/s<3>/BXINV_3742 ),
    .O(\uart_rx/s<3>/F5MUX_3749 )
  );
  X_BUF   \uart_rx/s<3>/BXINV  (
    .I(\uart_rx/s [3]),
    .O(\uart_rx/s<3>/BXINV_3742 )
  );
  X_BUF   \uart_rx/s<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/s<3>/CLKINV_3734 )
  );
  X_BUF   \uart_tx/N01/XUSED  (
    .I(\uart_tx/N01/F5MUX_3781 ),
    .O(\uart_tx/N01 )
  );
  X_MUX2   \uart_tx/N01/F5MUX  (
    .IA(N132),
    .IB(N133),
    .SEL(\uart_tx/N01/BXINV_3774 ),
    .O(\uart_tx/N01/F5MUX_3781 )
  );
  X_BUF   \uart_tx/N01/BXINV  (
    .I(\uart_tx/state_rnm0_cmp_eq0000 ),
    .O(\uart_tx/N01/BXINV_3774 )
  );
  X_BUF   \uart_rx/s<0>/DXMUX  (
    .I(\uart_rx/s<0>/F5MUX_3810 ),
    .O(\uart_rx/s<0>/DXMUX_3812 )
  );
  X_MUX2   \uart_rx/s<0>/F5MUX  (
    .IA(\uart_rx/s_next<0>201_3801 ),
    .IB(\uart_rx/s_next<0>20 ),
    .SEL(\uart_rx/s<0>/BXINV_3803 ),
    .O(\uart_rx/s<0>/F5MUX_3810 )
  );
  X_BUF   \uart_rx/s<0>/BXINV  (
    .I(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .O(\uart_rx/s<0>/BXINV_3803 )
  );
  X_BUF   \uart_rx/s<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/s<0>/CLKINV_3795 )
  );
  X_BUF   \uart_tx/b<0>/DXMUX  (
    .I(\uart_tx/b_next [0]),
    .O(\uart_tx/b<0>/DXMUX_3847 )
  );
  X_BUF   \uart_tx/b<0>/YUSED  (
    .I(\uart_tx/b_next<0>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<0>_SW0/O )
  );
  X_BUF   \uart_tx/b<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<0>/CLKINV_3830 )
  );
  X_BUF   \N118/XUSED  (
    .I(N118),
    .O(N118_0)
  );
  X_BUF   \N118/YUSED  (
    .I(\uart_tx/s_next<3>41_SW1_SW0/O_pack_1 ),
    .O(\uart_tx/s_next<3>41_SW1_SW0/O )
  );
  X_BUF   \uart_tx/b<1>/DXMUX  (
    .I(\uart_tx/b_next [1]),
    .O(\uart_tx/b<1>/DXMUX_3906 )
  );
  X_BUF   \uart_tx/b<1>/YUSED  (
    .I(\uart_tx/b_next<1>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<1>_SW0/O )
  );
  X_BUF   \uart_tx/b<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<1>/CLKINV_3889 )
  );
  X_BUF   \uart_tx/b<2>/DXMUX  (
    .I(\uart_tx/b_next [2]),
    .O(\uart_tx/b<2>/DXMUX_3941 )
  );
  X_BUF   \uart_tx/b<2>/YUSED  (
    .I(\uart_tx/b_next<2>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<2>_SW0/O )
  );
  X_BUF   \uart_tx/b<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<2>/CLKINV_3924 )
  );
  X_BUF   \fifo_rx/full_reg/DXMUX  (
    .I(\fifo_rx/full_next ),
    .O(\fifo_rx/full_reg/DXMUX_3976 )
  );
  X_BUF   \fifo_rx/full_reg/YUSED  (
    .I(\fifo_rx/Mmux_full_next3100/O_pack_2 ),
    .O(\fifo_rx/Mmux_full_next3100/O )
  );
  X_BUF   \fifo_rx/full_reg/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/full_reg/CLKINV_3960 )
  );
  X_BUF   \uart_tx/b<3>/DXMUX  (
    .I(\uart_tx/b_next [3]),
    .O(\uart_tx/b<3>/DXMUX_4011 )
  );
  X_BUF   \uart_tx/b<3>/YUSED  (
    .I(\uart_tx/b_next<3>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<3>_SW0/O )
  );
  X_BUF   \uart_tx/b<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<3>/CLKINV_3994 )
  );
  X_BUF   \uart_tx/b<4>/DXMUX  (
    .I(\uart_tx/b_next [4]),
    .O(\uart_tx/b<4>/DXMUX_4046 )
  );
  X_BUF   \uart_tx/b<4>/YUSED  (
    .I(\uart_tx/b_next<4>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<4>_SW0/O )
  );
  X_BUF   \uart_tx/b<4>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<4>/CLKINV_4029 )
  );
  X_BUF   \N71/XUSED  (
    .I(N71),
    .O(N71_0)
  );
  X_BUF   \N71/YUSED  (
    .I(\uart_tx/N11_pack_1 ),
    .O(\uart_tx/N11 )
  );
  X_BUF   \uart_rx/n_next<1>33/XUSED  (
    .I(\uart_rx/n_next<1>33_4098 ),
    .O(\uart_rx/n_next<1>33_0 )
  );
  X_BUF   \uart_rx/n_next<1>33/YUSED  (
    .I(\uart_rx/b_next<0>11_SW0/O_pack_1 ),
    .O(\uart_rx/b_next<0>11_SW0/O )
  );
  X_BUF   \uart_tx/b<5>/DXMUX  (
    .I(\uart_tx/b_next [5]),
    .O(\uart_tx/b<5>/DXMUX_4129 )
  );
  X_BUF   \uart_tx/b<5>/YUSED  (
    .I(\uart_tx/b_next<5>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<5>_SW0/O )
  );
  X_BUF   \uart_tx/b<5>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<5>/CLKINV_4112 )
  );
  X_BUF   \uart_tx/s<1>/DXMUX  (
    .I(\uart_tx/s_next [1]),
    .O(\uart_tx/s<1>/DXMUX_4164 )
  );
  X_BUF   \uart_tx/s<1>/YUSED  (
    .I(\uart_tx/s_next<1>_SW0_SW1/O_pack_2 ),
    .O(\uart_tx/s_next<1>_SW0_SW1/O )
  );
  X_BUF   \uart_tx/s<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/s<1>/CLKINV_4147 )
  );
  X_BUF   \brg/contador<0>/DXMUX  (
    .I(\brg/Mcount_contador_eqn_0 ),
    .O(\brg/contador<0>/DXMUX_4199 )
  );
  X_BUF   \brg/contador<0>/YUSED  (
    .I(\brg/contador_cmp_eq000019_pack_1 ),
    .O(\brg/contador_cmp_eq000019_1477 )
  );
  X_BUF   \brg/contador<0>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\brg/contador<0>/CLKINV_4182 )
  );
  X_BUF   \uart_tx/b<6>/DXMUX  (
    .I(\uart_tx/b_next [6]),
    .O(\uart_tx/b<6>/DXMUX_4234 )
  );
  X_BUF   \uart_tx/b<6>/YUSED  (
    .I(\uart_tx/b_next<6>_SW0/O_pack_2 ),
    .O(\uart_tx/b_next<6>_SW0/O )
  );
  X_BUF   \uart_tx/b<6>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/b<6>/CLKINV_4217 )
  );
  X_BUF   \uart_tx/s<2>/DXMUX  (
    .I(\uart_tx/s_next [2]),
    .O(\uart_tx/s<2>/DXMUX_4269 )
  );
  X_BUF   \uart_tx/s<2>/YUSED  (
    .I(\uart_tx/s_next<2>_SW2/O_pack_2 ),
    .O(\uart_tx/s_next<2>_SW2/O )
  );
  X_BUF   \uart_tx/s<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/s<2>/CLKINV_4251 )
  );
  X_BUF   \uart_rx/n<1>/DXMUX  (
    .I(\uart_rx/n_next [1]),
    .O(\uart_rx/n<1>/DXMUX_4304 )
  );
  X_BUF   \uart_rx/n<1>/YUSED  (
    .I(\uart_rx/n_next<1>12/O_pack_2 ),
    .O(\uart_rx/n_next<1>12/O )
  );
  X_BUF   \uart_rx/n<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/n<1>/CLKINV_4288 )
  );
  X_BUF   \fifo_rx/Mmux_full_next334/XUSED  (
    .I(\fifo_rx/Mmux_full_next334_4332 ),
    .O(\fifo_rx/Mmux_full_next334_0 )
  );
  X_BUF   \fifo_rx/Mmux_full_next334/YUSED  (
    .I(rx_done_pack_1),
    .O(rx_done)
  );
  X_BUF   \fifo_tx/empty_reg/DXMUX  (
    .I(\fifo_tx/empty_next ),
    .O(\fifo_tx/empty_reg/DXMUX_4363 )
  );
  X_BUF   \fifo_tx/empty_reg/YUSED  (
    .I(\fifo_tx/Mmux_empty_next393/O_pack_2 ),
    .O(\fifo_tx/Mmux_empty_next393/O )
  );
  X_BUF   \fifo_tx/empty_reg/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/empty_reg/CLKINV_4347 )
  );
  X_BUF   \uart_rx/n<2>/DXMUX  (
    .I(\uart_rx/n_next [2]),
    .O(\uart_rx/n<2>/DXMUX_4397 )
  );
  X_BUF   \uart_rx/n<2>/YUSED  (
    .I(\uart_rx/n_next<2>11/O_pack_2 ),
    .O(\uart_rx/n_next<2>11/O )
  );
  X_BUF   \uart_rx/n<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/n<2>/CLKINV_4381 )
  );
  X_BUF   \uart_tx/s<3>/DXMUX  (
    .I(\uart_tx/s_next [3]),
    .O(\uart_tx/s<3>/DXMUX_4432 )
  );
  X_BUF   \uart_tx/s<3>/YUSED  (
    .I(\uart_tx/s_next<3>41_SW0/O_pack_2 ),
    .O(\uart_tx/s_next<3>41_SW0/O )
  );
  X_BUF   \uart_tx/s<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/s<3>/CLKINV_4414 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<1>/DXMUX  (
    .I(\fifo_tx/w_ptr_next [1]),
    .O(\fifo_tx/w_ptr_reg<1>/DXMUX_4467 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<1>/YUSED  (
    .I(\fifo_tx/w_ptr_next<1>1_SW0/O_pack_3 ),
    .O(\fifo_tx/w_ptr_next<1>1_SW0/O )
  );
  X_BUF   \fifo_tx/w_ptr_reg<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/w_ptr_reg<1>/CLKINV_4450 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<2>/DXMUX  (
    .I(\fifo_tx/w_ptr_next [2]),
    .O(\fifo_tx/w_ptr_reg<2>/DXMUX_4502 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<2>/YUSED  (
    .I(\fifo_tx/w_ptr_next<2>1_SW0/O_pack_2 ),
    .O(\fifo_tx/w_ptr_next<2>1_SW0/O )
  );
  X_BUF   \fifo_tx/w_ptr_reg<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/w_ptr_reg<2>/CLKINV_4485 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<3>/DXMUX  (
    .I(\fifo_tx/w_ptr_next [3]),
    .O(\fifo_tx/w_ptr_reg<3>/DXMUX_4537 )
  );
  X_BUF   \fifo_tx/w_ptr_reg<3>/YUSED  (
    .I(\fifo_tx/w_ptr_next<3>1_SW0_SW0/O_pack_2 ),
    .O(\fifo_tx/w_ptr_next<3>1_SW0_SW0/O )
  );
  X_BUF   \fifo_tx/w_ptr_reg<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/w_ptr_reg<3>/CLKINV_4521 )
  );
  X_BUF   \N64/XUSED  (
    .I(N64),
    .O(N64_0)
  );
  X_BUF   \N64/YUSED  (
    .I(\uart_tx/n_next<2>2/O_pack_1 ),
    .O(\uart_tx/n_next<2>2/O )
  );
  X_BUF   \fifo_rx/empty_reg/DXMUX  (
    .I(\fifo_rx/empty_next ),
    .O(\fifo_rx/empty_reg/DXMUX_4596 )
  );
  X_BUF   \fifo_rx/empty_reg/YUSED  (
    .I(\fifo_rx/Mmux_empty_next391/O_pack_2 ),
    .O(\fifo_rx/Mmux_empty_next391/O )
  );
  X_BUF   \fifo_rx/empty_reg/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/empty_reg/CLKINV_4580 )
  );
  X_BUF   \uart_tx/n<1>/DXMUX  (
    .I(\uart_tx/n_next [1]),
    .O(\uart_tx/n<1>/DXMUX_4630 )
  );
  X_BUF   \uart_tx/n<1>/YUSED  (
    .I(\uart_tx/n_next<1>_SW2/O_pack_2 ),
    .O(\uart_tx/n_next<1>_SW2/O )
  );
  X_BUF   \uart_tx/n<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/n<1>/CLKINV_4613 )
  );
  X_BUF   \fifo_tx/Mmux_empty_next35/XUSED  (
    .I(\fifo_tx/Mmux_empty_next35_4658 ),
    .O(\fifo_tx/Mmux_empty_next35_0 )
  );
  X_BUF   \fifo_tx/Mmux_empty_next35/YUSED  (
    .I(N80_pack_1),
    .O(N80)
  );
  X_BUF   \fifo_rx/w_ptr_reg<1>/DXMUX  (
    .I(\fifo_rx/w_ptr_next [1]),
    .O(\fifo_rx/w_ptr_reg<1>/DXMUX_4689 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<1>/YUSED  (
    .I(\fifo_rx/w_ptr_next<1>1_G/O_pack_3 ),
    .O(\fifo_rx/w_ptr_next<1>1_G/O )
  );
  X_BUF   \fifo_rx/w_ptr_reg<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/w_ptr_reg<1>/CLKINV_4672 )
  );
  X_BUF   \fifo_rx/Mmux_empty_next34/XUSED  (
    .I(\fifo_rx/Mmux_empty_next34_4717 ),
    .O(\fifo_rx/Mmux_empty_next34_0 )
  );
  X_BUF   \fifo_rx/Mmux_empty_next34/YUSED  (
    .I(\uart_rx/RX_DONE1_SW1/O_pack_1 ),
    .O(\uart_rx/RX_DONE1_SW1/O )
  );
  X_BUF   \fifo_rx/w_ptr_reg<2>/DXMUX  (
    .I(\fifo_rx/w_ptr_next [2]),
    .O(\fifo_rx/w_ptr_reg<2>/DXMUX_4748 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<2>/YUSED  (
    .I(\fifo_rx/Madd__old_w_ptr_succ_7_cy<1>_pack_2 ),
    .O(\fifo_rx/Madd__old_w_ptr_succ_7_cy [1])
  );
  X_BUF   \fifo_rx/w_ptr_reg<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/w_ptr_reg<2>/CLKINV_4730 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<3>/DXMUX  (
    .I(\fifo_rx/w_ptr_next [3]),
    .O(\fifo_rx/w_ptr_reg<3>/DXMUX_4783 )
  );
  X_BUF   \fifo_rx/w_ptr_reg<3>/YUSED  (
    .I(\fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11/O_pack_3 ),
    .O(\fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11/O )
  );
  X_BUF   \fifo_rx/w_ptr_reg<3>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_rx/w_ptr_reg<3>/CLKINV_4767 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd1/DXMUX  (
    .I(\uart_rx/state_rnm0_FSM_FFd1-In_4815 ),
    .O(\uart_rx/state_rnm0_FSM_FFd1/DXMUX_4818 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd1/YUSED  (
    .I(\uart_rx/state_rnm0_FSM_FFd1-In_SW1/O_pack_2 ),
    .O(\uart_rx/state_rnm0_FSM_FFd1-In_SW1/O )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd1/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/state_rnm0_FSM_FFd1/CLKINV_4802 )
  );
  X_BUF   \uart_rx/b<6>/DXMUX  (
    .I(\uart_rx/b_next [6]),
    .O(\uart_rx/b<6>/DXMUX_4853 )
  );
  X_BUF   \uart_rx/b<6>/YUSED  (
    .I(\uart_rx/N11_pack_2 ),
    .O(\uart_rx/N11 )
  );
  X_BUF   \uart_rx/b<6>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/b<6>/CLKINV_4836 )
  );
  X_BUF   \fifo_tx/Mmux_empty_next323/XUSED  (
    .I(\fifo_tx/Mmux_empty_next323_4881 ),
    .O(\fifo_tx/Mmux_empty_next323_0 )
  );
  X_BUF   \fifo_tx/Mmux_empty_next323/YUSED  (
    .I(\fifo_tx/_old_r_ptr_succ_6<3>_pack_1 ),
    .O(\fifo_tx/_old_r_ptr_succ_6 [3])
  );
  X_BUF   \uart_rx/s_next<2>8/XUSED  (
    .I(\uart_rx/s_next<2>8_4905 ),
    .O(\uart_rx/s_next<2>8_0 )
  );
  X_BUF   \uart_rx/s_next<2>8/YUSED  (
    .I(\uart_rx/s_next<2>8_SW2/O_pack_1 ),
    .O(\uart_rx/s_next<2>8_SW2/O )
  );
  X_BUF   \fifo_tx/r_ptr_reg<2>/DXMUX  (
    .I(\fifo_tx/r_ptr_next [2]),
    .O(\fifo_tx/r_ptr_reg<2>/DXMUX_4936 )
  );
  X_BUF   \fifo_tx/r_ptr_reg<2>/YUSED  (
    .I(\fifo_tx/Madd__old_r_ptr_succ_6_cy<1>_pack_2 ),
    .O(\fifo_tx/Madd__old_r_ptr_succ_6_cy [1])
  );
  X_BUF   \fifo_tx/r_ptr_reg<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/r_ptr_reg<2>/CLKINV_4918 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd2/DXMUX  (
    .I(\uart_tx/state_rnm0_FSM_FFd2-In_4968 ),
    .O(\uart_tx/state_rnm0_FSM_FFd2/DXMUX_4971 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd2/YUSED  (
    .I(\uart_tx/N5_pack_2 ),
    .O(\uart_tx/N5 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd2/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_tx/state_rnm0_FSM_FFd2/CLKINV_4953 )
  );
  X_BUF   \fifo_tx/Mmux_full_next34/XUSED  (
    .I(\fifo_tx/Mmux_full_next34_4999 ),
    .O(\fifo_tx/Mmux_full_next34_0 )
  );
  X_BUF   \fifo_tx/Mmux_full_next34/YUSED  (
    .I(\uart_tx/TX_DONE1_SW0/O_pack_1 ),
    .O(\uart_tx/TX_DONE1_SW0/O )
  );
  X_BUF   \uart_rx/s_next<1>44/XUSED  (
    .I(\uart_rx/s_next<1>44_5023 ),
    .O(\uart_rx/s_next<1>44_0 )
  );
  X_BUF   \uart_rx/s_next<1>44/YUSED  (
    .I(\uart_rx/s_next<0>211/O_pack_3 ),
    .O(\uart_rx/s_next<0>211/O )
  );
  X_BUF   \fifo_rx/Mmux_empty_next324/XUSED  (
    .I(\fifo_rx/Mmux_empty_next324_5047 ),
    .O(\fifo_rx/Mmux_empty_next324_0 )
  );
  X_BUF   \fifo_rx/Mmux_empty_next324/YUSED  (
    .I(\uart_rx/RX_DONE1_SW2/O_pack_1 ),
    .O(\uart_rx/RX_DONE1_SW2/O )
  );
  X_BUF   \fifo_tx/Mmux_empty_next392/XUSED  (
    .I(\fifo_tx/Mmux_empty_next392_5071 ),
    .O(\fifo_tx/Mmux_empty_next392_0 )
  );
  X_BUF   \fifo_tx/Mmux_empty_next392/YUSED  (
    .I(\fifo_tx/Mmux_empty_next392_SW0/O_pack_1 ),
    .O(\fifo_tx/Mmux_empty_next392_SW0/O )
  );
  X_BUF   \fifo_rx/Mmux_full_next35/XUSED  (
    .I(\fifo_rx/Mmux_full_next35_5095 ),
    .O(\fifo_rx/Mmux_full_next35_0 )
  );
  X_BUF   \fifo_rx/Mmux_full_next35/YUSED  (
    .I(\uart_rx/state_rnm0_cmp_eq0001_pack_1 ),
    .O(\uart_rx/state_rnm0_cmp_eq0001 )
  );
  X_BUF   \uart_rx/s<1>/DXMUX  (
    .I(\uart_rx/s_next [1]),
    .O(\uart_rx/s<1>/DXMUX_5126 )
  );
  X_BUF   \uart_rx/s<1>/YUSED  (
    .I(\uart_rx/s_next<1>211/O_pack_2 ),
    .O(\uart_rx/s_next<1>211/O )
  );
  X_BUF   \uart_rx/s<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/s<1>/CLKINV_5110 )
  );
  X_BUF   \fifo_tx/Mmux_full_next3110/XUSED  (
    .I(\fifo_tx/Mmux_full_next3110_5154 ),
    .O(\fifo_tx/Mmux_full_next3110_0 )
  );
  X_BUF   \fifo_tx/Mmux_full_next3110/YUSED  (
    .I(tx_done_pack_1),
    .O(tx_done)
  );
  X_BUF   \uart_rx/s<2>/DXMUX  (
    .I(\uart_rx/s_next [2]),
    .O(\uart_rx/s<2>/DXMUX_5185 )
  );
  X_BUF   \uart_rx/s<2>/YUSED  (
    .I(\uart_rx/s_next<2>34/O_pack_2 ),
    .O(\uart_rx/s_next<2>34/O )
  );
  X_BUF   \uart_rx/s<2>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/s<2>/CLKINV_5169 )
  );
  X_BUF   \uart_rx/N01/XUSED  (
    .I(\uart_rx/N01 ),
    .O(\uart_rx/N01_0 )
  );
  X_BUF   \uart_rx/N01/YUSED  (
    .I(\uart_rx/s_next<3>32/O_pack_1 ),
    .O(\uart_rx/s_next<3>32/O )
  );
  X_BUF   \fifo_rx/Mmux_empty_next390/XUSED  (
    .I(\fifo_rx/Mmux_empty_next390_5237 ),
    .O(\fifo_rx/Mmux_empty_next390_0 )
  );
  X_BUF   \fifo_rx/Mmux_empty_next390/YUSED  (
    .I(\fifo_rx/Mmux_empty_next390_SW0/O_pack_1 ),
    .O(\fifo_rx/Mmux_empty_next390_SW0/O )
  );
  X_BUF   \uart_rx/N17/XUSED  (
    .I(\uart_rx/N17 ),
    .O(\uart_rx/N17_0 )
  );
  X_BUF   \uart_rx/N17/YUSED  (
    .I(\uart_rx/n_next<0>11_SW1/O_pack_1 ),
    .O(\uart_rx/n_next<0>11_SW1/O )
  );
  X_BUF   \fifo_tx/full_reg/DXMUX  (
    .I(\fifo_tx/full_next ),
    .O(\fifo_tx/full_reg/DXMUX_5292 )
  );
  X_BUF   \fifo_tx/full_reg/YUSED  (
    .I(\fifo_tx/Mmux_full_next338/O_pack_2 ),
    .O(\fifo_tx/Mmux_full_next338/O )
  );
  X_BUF   \fifo_tx/full_reg/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\fifo_tx/full_reg/CLKINV_5276 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd2-In17/XUSED  (
    .I(\uart_rx/state_rnm0_FSM_FFd2-In17_5320 ),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In17_0 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd2-In17/YUSED  (
    .I(\uart_rx/state_rnm0_FSM_FFd2-In12/O_pack_1 ),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In12/O )
  );
  X_BUF   \brg/ti/DXMUX  (
    .I(\brg/ti/FXMUX_5351 ),
    .O(\brg/ti/DXMUX_5352 )
  );
  X_BUF   \brg/ti/XUSED  (
    .I(\brg/ti/FXMUX_5351 ),
    .O(\brg/contador_cmp_eq0000_0 )
  );
  X_BUF   \brg/ti/FXMUX  (
    .I(\brg/contador_cmp_eq0000 ),
    .O(\brg/ti/FXMUX_5351 )
  );
  X_BUF   \brg/ti/YUSED  (
    .I(\brg/contador_cmp_eq00008_pack_1 ),
    .O(\brg/contador_cmp_eq00008_1476 )
  );
  X_BUF   \brg/ti/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\brg/ti/CLKINV_5335 )
  );
  X_BUF   \brg/ti/CEINV  (
    .I(\brg/ti_and0000 ),
    .O(\brg/ti/CEINV_5334 )
  );
  X_BUF   \uart_rx/b<1>/DXMUX  (
    .I(\uart_rx/b_next [1]),
    .O(\uart_rx/b<1>/DXMUX_5392 )
  );
  X_BUF   \uart_rx/b<1>/DYMUX  (
    .I(\uart_rx/b_next [0]),
    .O(\uart_rx/b<1>/DYMUX_5377 )
  );
  X_BUF   \uart_rx/b<1>/SRINV  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/b<1>/SRINV_5368 )
  );
  X_BUF   \uart_rx/b<1>/CLKINV  (
    .I(CLK_IBUF_1299),
    .O(\uart_rx/b<1>/CLKINV_5367 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_2  (
    .I(\uart_rx/b<3>/DYMUX_1538 ),
    .CE(VCC),
    .CLK(\uart_rx/b<3>/CLKINV_1528 ),
    .SET(GND),
    .RST(\uart_rx/b<3>/SRINV_1529 ),
    .O(\uart_rx/b [2])
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<2>1  (
    .ADR0(\uart_rx/b [2]),
    .ADR1(\uart_rx/b [3]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<3>1  (
    .ADR0(\uart_rx/b [3]),
    .ADR1(\uart_rx/b [4]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_3  (
    .I(\uart_rx/b<3>/DXMUX_1553 ),
    .CE(VCC),
    .CLK(\uart_rx/b<3>/CLKINV_1528 ),
    .SET(GND),
    .RST(\uart_rx/b<3>/SRINV_1529 ),
    .O(\uart_rx/b [3])
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<4>1  (
    .ADR0(\uart_rx/b [4]),
    .ADR1(\uart_rx/b [5]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_4  (
    .I(\uart_rx/b<5>/DYMUX_1580 ),
    .CE(VCC),
    .CLK(\uart_rx/b<5>/CLKINV_1570 ),
    .SET(GND),
    .RST(\uart_rx/b<5>/SRINV_1571 ),
    .O(\uart_rx/b [4])
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<5>1  (
    .ADR0(\uart_rx/b [5]),
    .ADR1(\uart_rx/b [6]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_5  (
    .I(\uart_rx/b<5>/DXMUX_1595 ),
    .CE(VCC),
    .CLK(\uart_rx/b<5>/CLKINV_1570 ),
    .SET(GND),
    .RST(\uart_rx/b<5>/SRINV_1571 ),
    .O(\uart_rx/b [5])
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ))
  \uart_rx/b_next<7>1  (
    .ADR0(rx_IBUF_1307),
    .ADR1(\uart_rx/b [7]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_7  (
    .I(\uart_rx/b<7>/DYMUX_1621 ),
    .CE(VCC),
    .CLK(\uart_rx/b<7>/CLKINV_1611 ),
    .SET(GND),
    .RST(\uart_rx/b<7>/FFY/RSTAND_1626 ),
    .O(\uart_rx/b [7])
  );
  X_BUF   \uart_rx/b<7>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/b<7>/FFY/RSTAND_1626 )
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ))
  \uart_rx/state_rnm0_FSM_FFd2-In43  (
    .ADR0(rx_IBUF_1307),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In43_1634 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F0 ))
  \uart_tx/n_next<2>15  (
    .ADR0(\uart_tx/n [1]),
    .ADR1(\uart_tx/n [0]),
    .ADR2(N64_0),
    .ADR3(\uart_tx/N121 ),
    .O(\uart_tx/n_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/n_2  (
    .I(\uart_tx/n<2>/DYMUX_1658 ),
    .CE(VCC),
    .CLK(\uart_tx/n<2>/CLKINV_1649 ),
    .SET(GND),
    .RST(\uart_tx/n<2>/FFY/RSTAND_1663 ),
    .O(\uart_tx/n [2])
  );
  X_BUF   \uart_tx/n<2>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/n<2>/FFY/RSTAND_1663 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_tx/state_rnm0_FSM_FFd2-In_SW1  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR1(\uart_tx/n [2]),
    .ADR2(\uart_tx/n [1]),
    .ADR3(\uart_tx/n [0]),
    .O(N5)
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_11  (
    .ADR0(Result[1]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_1  (
    .I(\brg/contador<1>/DYMUX_1688 ),
    .CE(VCC),
    .CLK(\brg/contador<1>/CLKINV_1677 ),
    .SET(GND),
    .RST(\brg/contador<1>/FFY/RSTAND_1693 ),
    .O(\brg/contador [1])
  );
  X_BUF   \brg/contador<1>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\brg/contador<1>/FFY/RSTAND_1693 )
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_21  (
    .ADR0(Result[2]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_2  (
    .I(\brg/contador<3>/DYMUX_1714 ),
    .CE(VCC),
    .CLK(\brg/contador<3>/CLKINV_1703 ),
    .SET(GND),
    .RST(\brg/contador<3>/SRINV_1704 ),
    .O(\brg/contador [2])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_31  (
    .ADR0(Result[3]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_3 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_3  (
    .I(\brg/contador<3>/DXMUX_1730 ),
    .CE(VCC),
    .CLK(\brg/contador<3>/CLKINV_1703 ),
    .SET(GND),
    .RST(\brg/contador<3>/SRINV_1704 ),
    .O(\brg/contador [3])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_41  (
    .ADR0(Result[4]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_4 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_4  (
    .I(\brg/contador<5>/DYMUX_1756 ),
    .CE(VCC),
    .CLK(\brg/contador<5>/CLKINV_1745 ),
    .SET(GND),
    .RST(\brg/contador<5>/SRINV_1746 ),
    .O(\brg/contador [4])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_51  (
    .ADR0(Result[5]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_5 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_5  (
    .I(\brg/contador<5>/DXMUX_1772 ),
    .CE(VCC),
    .CLK(\brg/contador<5>/CLKINV_1745 ),
    .SET(GND),
    .RST(\brg/contador<5>/SRINV_1746 ),
    .O(\brg/contador [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_61  (
    .ADR0(Result[6]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_6 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_6  (
    .I(\brg/contador<7>/DYMUX_1798 ),
    .CE(VCC),
    .CLK(\brg/contador<7>/CLKINV_1787 ),
    .SET(GND),
    .RST(\brg/contador<7>/SRINV_1788 ),
    .O(\brg/contador [6])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \brg/Mcount_contador_eqn_71  (
    .ADR0(Result[7]),
    .ADR1(\brg/contador_cmp_eq0000_0 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_7 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_7  (
    .I(\brg/contador<7>/DXMUX_1814 ),
    .CE(VCC),
    .CLK(\brg/contador<7>/CLKINV_1787 ),
    .SET(GND),
    .RST(\brg/contador<7>/SRINV_1788 ),
    .O(\brg/contador [7])
  );
  X_LUT4 #(
    .INIT ( 16'h5AD2 ))
  \fifo_tx/w_ptr_next<0>1  (
    .ADR0(wr_uart_IBUF_1333),
    .ADR1(\fifo_tx/full_reg_1334 ),
    .ADR2(\fifo_tx/w_ptr_reg [0]),
    .ADR3(tx_done),
    .O(\fifo_tx/w_ptr_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/w_ptr_reg_0  (
    .I(\fifo_tx/w_ptr_reg<0>/DYMUX_1840 ),
    .CE(VCC),
    .CLK(\fifo_tx/w_ptr_reg<0>/CLKINV_1831 ),
    .SET(GND),
    .RST(\fifo_tx/w_ptr_reg<0>/FFY/RSTAND_1845 ),
    .O(\fifo_tx/w_ptr_reg [0])
  );
  X_BUF   \fifo_tx/w_ptr_reg<0>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/w_ptr_reg<0>/FFY/RSTAND_1845 )
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \fifo_tx/wr_en1  (
    .ADR0(wr_uart_IBUF_1333),
    .ADR1(\fifo_tx/full_reg_1334 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_tx/wr_en )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF2 ))
  \uart_rx/state_rnm0_FSM_FFd2-In47  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/state_rnm0_cmp_eq0001 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2-In43_0 ),
    .ADR3(\uart_rx/state_rnm0_FSM_FFd2-In17_0 ),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/state_rnm0_FSM_FFd2  (
    .I(\uart_rx/state_rnm0_FSM_FFd2/DYMUX_1875 ),
    .CE(VCC),
    .CLK(\uart_rx/state_rnm0_FSM_FFd2/CLKINV_1866 ),
    .SET(GND),
    .RST(\uart_rx/state_rnm0_FSM_FFd2/FFY/RSTAND_1880 ),
    .O(\uart_rx/state_rnm0_FSM_FFd2_1338 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd2/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/state_rnm0_FSM_FFd2/FFY/RSTAND_1880 )
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  \uart_rx/s_next<2>28  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/s_next<2>28_1888 )
  );
  X_LUT4 #(
    .INIT ( 16'h5AD2 ))
  \fifo_rx/r_ptr_next<0>1  (
    .ADR0(rd_uart_IBUF_1346),
    .ADR1(\fifo_rx/empty_reg_1342 ),
    .ADR2(\fifo_rx/r_ptr_reg [0]),
    .ADR3(rx_done),
    .O(\fifo_rx/r_ptr_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/r_ptr_reg_0  (
    .I(\fifo_rx/r_ptr_reg<1>/DYMUX_1912 ),
    .CE(VCC),
    .CLK(\fifo_rx/r_ptr_reg<1>/CLKINV_1903 ),
    .SET(GND),
    .RST(\fifo_rx/r_ptr_reg<1>/SRINV_1904 ),
    .O(\fifo_rx/r_ptr_reg [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF0D8 ))
  \fifo_rx/r_ptr_next<1>1  (
    .ADR0(\fifo_rx/empty_reg_1342 ),
    .ADR1(\fifo_rx/r_ptr_reg [1]),
    .ADR2(N53_0),
    .ADR3(rx_done),
    .O(\fifo_rx/r_ptr_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/r_ptr_reg_1  (
    .I(\fifo_rx/r_ptr_reg<1>/DXMUX_1926 ),
    .CE(VCC),
    .CLK(\fifo_rx/r_ptr_reg<1>/CLKINV_1903 ),
    .SET(GND),
    .RST(\fifo_rx/r_ptr_reg<1>/SRINV_1904 ),
    .O(\fifo_rx/r_ptr_reg [1])
  );
  X_LUT4 #(
    .INIT ( 16'hC3C9 ))
  \fifo_rx/r_ptr_next<2>1  (
    .ADR0(\fifo_rx/empty_reg_1342 ),
    .ADR1(\fifo_rx/r_ptr_reg [2]),
    .ADR2(N49_0),
    .ADR3(rx_done),
    .O(\fifo_rx/r_ptr_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/r_ptr_reg_2  (
    .I(\fifo_rx/r_ptr_reg<3>/DYMUX_1954 ),
    .CE(VCC),
    .CLK(\fifo_rx/r_ptr_reg<3>/CLKINV_1945 ),
    .SET(GND),
    .RST(\fifo_rx/r_ptr_reg<3>/SRINV_1946 ),
    .O(\fifo_rx/r_ptr_reg [2])
  );
  X_LUT4 #(
    .INIT ( 16'hC3C9 ))
  \fifo_rx/r_ptr_next<3>1  (
    .ADR0(\fifo_rx/empty_reg_1342 ),
    .ADR1(\fifo_rx/r_ptr_reg [3]),
    .ADR2(N113_0),
    .ADR3(rx_done),
    .O(\fifo_rx/r_ptr_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/r_ptr_reg_3  (
    .I(\fifo_rx/r_ptr_reg<3>/DXMUX_1968 ),
    .CE(VCC),
    .CLK(\fifo_rx/r_ptr_reg<3>/CLKINV_1945 ),
    .SET(GND),
    .RST(\fifo_rx/r_ptr_reg<3>/SRINV_1946 ),
    .O(\fifo_rx/r_ptr_reg [3])
  );
  X_LUT4 #(
    .INIT ( 16'hAF27 ))
  \uart_tx/s_next<0>43  (
    .ADR0(\uart_tx/s [0]),
    .ADR1(N99_0),
    .ADR2(N98_0),
    .ADR3(\uart_tx/N11 ),
    .O(\uart_tx/s_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/s_0  (
    .I(\uart_tx/s<0>/DYMUX_1996 ),
    .CE(VCC),
    .CLK(\uart_tx/s<0>/CLKINV_1987 ),
    .SET(GND),
    .RST(\uart_tx/s<0>/FFY/RSTAND_2001 ),
    .O(\uart_tx/s [0])
  );
  X_BUF   \uart_tx/s<0>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/s<0>/FFY/RSTAND_2001 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA6A ))
  \uart_tx/s_next<2>_SW3  (
    .ADR0(\uart_tx/s [2]),
    .ADR1(\uart_tx/s [0]),
    .ADR2(\uart_tx/s [1]),
    .ADR3(\uart_tx/N11 ),
    .O(N69)
  );
  X_LUT4 #(
    .INIT ( 16'hD5D5 ))
  \uart_tx/tx_next1  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/b [0]),
    .ADR2(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR3(VCC),
    .O(\uart_tx/tx_next )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \uart_tx/tx_reg  (
    .I(\uart_tx/state_rnm0_FSM_FFd1/DYMUX_2031 ),
    .CE(VCC),
    .CLK(\uart_tx/state_rnm0_FSM_FFd1/CLKINV_2021 ),
    .SET(\uart_tx/state_rnm0_FSM_FFd1/SRINV_2022 ),
    .RST(GND),
    .O(\uart_tx/tx_reg_1363 )
  );
  X_LUT4 #(
    .INIT ( 16'hDF80 ))
  \uart_tx/state_rnm0_FSM_FFd1-In1  (
    .ADR0(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .O(\uart_tx/state_rnm0_FSM_FFd1-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/state_rnm0_FSM_FFd1  (
    .I(\uart_tx/state_rnm0_FSM_FFd1/DXMUX_2044 ),
    .CE(VCC),
    .CLK(\uart_tx/state_rnm0_FSM_FFd1/CLKINV_2021 ),
    .SET(GND),
    .RST(\uart_tx/state_rnm0_FSM_FFd1/SRINV_2022 ),
    .O(\uart_tx/state_rnm0_FSM_FFd1_1311 )
  );
  X_LUT4 #(
    .INIT ( 16'hA8FD ))
  \uart_rx/n_next<0>  (
    .ADR0(\uart_rx/n [0]),
    .ADR1(\uart_rx/N17_0 ),
    .ADR2(N31_0),
    .ADR3(\uart_rx/N11 ),
    .O(\uart_rx/n_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/n_0  (
    .I(\uart_rx/n<0>/DYMUX_2070 ),
    .CE(VCC),
    .CLK(\uart_rx/n<0>/CLKINV_2061 ),
    .SET(GND),
    .RST(\uart_rx/n<0>/FFY/RSTAND_2075 ),
    .O(\uart_rx/n [0])
  );
  X_BUF   \uart_rx/n<0>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/n<0>/FFY/RSTAND_2075 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_rx/n_next<2>20  (
    .ADR0(\uart_rx/n [0]),
    .ADR1(\uart_rx/n [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/n_next<2>20_2083 )
  );
  X_LUT4 #(
    .INIT ( 16'h4BF0 ))
  \fifo_tx/r_ptr_next<0>1  (
    .ADR0(wr_uart_IBUF_1333),
    .ADR1(\fifo_tx/empty_reg_1372 ),
    .ADR2(\fifo_tx/r_ptr_reg [0]),
    .ADR3(tx_done),
    .O(\fifo_tx/r_ptr_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/r_ptr_reg_0  (
    .I(\fifo_tx/r_ptr_reg<1>/DYMUX_2107 ),
    .CE(VCC),
    .CLK(\fifo_tx/r_ptr_reg<1>/CLKINV_2098 ),
    .SET(GND),
    .RST(\fifo_tx/r_ptr_reg<1>/SRINV_2099 ),
    .O(\fifo_tx/r_ptr_reg [0])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \fifo_tx/r_ptr_next<1>1  (
    .ADR0(\fifo_tx/r_ptr_reg [1]),
    .ADR1(\fifo_tx/r_ptr_reg [0]),
    .ADR2(N33_0),
    .ADR3(tx_done),
    .O(\fifo_tx/r_ptr_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/r_ptr_reg_1  (
    .I(\fifo_tx/r_ptr_reg<1>/DXMUX_2121 ),
    .CE(VCC),
    .CLK(\fifo_tx/r_ptr_reg<1>/CLKINV_2098 ),
    .SET(GND),
    .RST(\fifo_tx/r_ptr_reg<1>/SRINV_2099 ),
    .O(\fifo_tx/r_ptr_reg [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE2AA ))
  \fifo_tx/r_ptr_next<3>1  (
    .ADR0(\fifo_tx/r_ptr_reg [3]),
    .ADR1(N33_0),
    .ADR2(\fifo_tx/_old_r_ptr_succ_6 [3]),
    .ADR3(tx_done),
    .O(\fifo_tx/r_ptr_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/r_ptr_reg_3  (
    .I(\fifo_tx/r_ptr_reg<3>/DYMUX_2144 ),
    .CE(VCC),
    .CLK(\fifo_tx/r_ptr_reg<3>/CLKINV_2135 ),
    .SET(GND),
    .RST(\fifo_tx/r_ptr_reg<3>/FFY/RSTAND_2149 ),
    .O(\fifo_tx/r_ptr_reg [3])
  );
  X_BUF   \fifo_tx/r_ptr_reg<3>/FFY/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/r_ptr_reg<3>/FFY/RSTAND_2149 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_rx/s_next<3>36  (
    .ADR0(\uart_rx/s [1]),
    .ADR1(\brg/ti_1361 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/s_next<3>36_2165 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \uart_rx/s_next<3>53_G_SW0  (
    .ADR0(\brg/ti_1361 ),
    .ADR1(\uart_rx/s [0]),
    .ADR2(\uart_rx/s [1]),
    .ADR3(\uart_rx/s [2]),
    .O(N128)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \fifo_rx/r_ptr_next<3>1_SW0_SW0  (
    .ADR0(\fifo_rx/r_ptr_reg [1]),
    .ADR1(\fifo_rx/r_ptr_reg [0]),
    .ADR2(\fifo_rx/r_ptr_reg [2]),
    .ADR3(rd_uart_IBUF_1346),
    .O(N113)
  );
  X_LUT4 #(
    .INIT ( 16'h7F7F ))
  \fifo_rx/r_ptr_next<2>1_SW0  (
    .ADR0(\fifo_rx/r_ptr_reg [1]),
    .ADR1(\fifo_rx/r_ptr_reg [0]),
    .ADR2(rd_uart_IBUF_1346),
    .ADR3(VCC),
    .O(N49)
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular1.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<0>/DIF_MUX_2460 ),
    .CLK(\tx_fifo_out<0>/CLKINV_2445 ),
    .WE(\tx_fifo_out<0>/SRINV_2439 ),
    .O(tx_fifo_out[0])
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular2.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<1>/DIG_MUX_2495 ),
    .CLK(\tx_fifo_out<1>/CLKINV_2493 ),
    .WE(\tx_fifo_out<1>/SRINV_2487 ),
    .O(\tx_fifo_out<1>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular2.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<1>/DIF_MUX_2508 ),
    .CLK(\tx_fifo_out<1>/CLKINV_2493 ),
    .WE(\tx_fifo_out<1>/SRINV_2487 ),
    .O(tx_fifo_out[1])
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular3.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<2>/DIG_MUX_2543 ),
    .CLK(\tx_fifo_out<2>/CLKINV_2541 ),
    .WE(\tx_fifo_out<2>/SRINV_2535 ),
    .O(\tx_fifo_out<2>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular3.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<2>/DIF_MUX_2556 ),
    .CLK(\tx_fifo_out<2>/CLKINV_2541 ),
    .WE(\tx_fifo_out<2>/SRINV_2535 ),
    .O(tx_fifo_out[2])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_tx/n_next<1>21  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_tx/state_rnm0_cmp_eq0000 ),
    .O(\uart_tx/N121_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDA8 ))
  \uart_tx/n_next<0>  (
    .ADR0(\uart_tx/n [0]),
    .ADR1(N7_0),
    .ADR2(\uart_tx/N5 ),
    .ADR3(\uart_tx/N121 ),
    .O(\uart_tx/n_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/n_0  (
    .I(\uart_tx/n<0>/DXMUX_2599 ),
    .CE(VCC),
    .CLK(\uart_tx/n<0>/CLKINV_2583 ),
    .SET(GND),
    .RST(\uart_tx/n<0>/FFX/RSTAND_2604 ),
    .O(\uart_tx/n [0])
  );
  X_BUF   \uart_tx/n<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/n<0>/FFX/RSTAND_2604 )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular4.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<3>/DIG_MUX_2626 ),
    .CLK(\tx_fifo_out<3>/CLKINV_2624 ),
    .WE(\tx_fifo_out<3>/SRINV_2618 ),
    .O(\tx_fifo_out<3>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular4.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<3>/DIF_MUX_2639 ),
    .CLK(\tx_fifo_out<3>/CLKINV_2624 ),
    .WE(\tx_fifo_out<3>/SRINV_2618 ),
    .O(tx_fifo_out[3])
  );
  X_LUT4 #(
    .INIT ( 16'h8AFF ))
  \uart_tx/n_next<1>_SW1  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR1(\uart_tx/n [2]),
    .ADR2(\uart_tx/n [0]),
    .ADR3(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .O(N10)
  );
  X_LUT4 #(
    .INIT ( 16'h80FF ))
  \uart_tx/n_next<0>_SW0  (
    .ADR0(\uart_tx/n [1]),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\uart_tx/n [2]),
    .ADR3(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .O(N7)
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular5.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<4>/DIG_MUX_2698 ),
    .CLK(\tx_fifo_out<4>/CLKINV_2696 ),
    .WE(\tx_fifo_out<4>/SRINV_2690 ),
    .O(\tx_fifo_out<4>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular5.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<4>/DIF_MUX_2711 ),
    .CLK(\tx_fifo_out<4>/CLKINV_2696 ),
    .WE(\tx_fifo_out<4>/SRINV_2690 ),
    .O(tx_fifo_out[4])
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular6.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<5>/DIG_MUX_2746 ),
    .CLK(\tx_fifo_out<5>/CLKINV_2744 ),
    .WE(\tx_fifo_out<5>/SRINV_2738 ),
    .O(\tx_fifo_out<5>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular6.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<5>/DIF_MUX_2759 ),
    .CLK(\tx_fifo_out<5>/CLKINV_2744 ),
    .WE(\tx_fifo_out<5>/SRINV_2738 ),
    .O(tx_fifo_out[5])
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular7.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<6>/DIG_MUX_2794 ),
    .CLK(\tx_fifo_out<6>/CLKINV_2792 ),
    .WE(\tx_fifo_out<6>/SRINV_2786 ),
    .O(\tx_fifo_out<6>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular7.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<6>/DIF_MUX_2807 ),
    .CLK(\tx_fifo_out<6>/CLKINV_2792 ),
    .WE(\tx_fifo_out<6>/SRINV_2786 ),
    .O(tx_fifo_out[6])
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  \fifo_rx/wr_en1  (
    .ADR0(\fifo_rx/full_reg_1393 ),
    .ADR1(rx_done),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_rx/wr_en )
  );
  X_LUT4 #(
    .INIT ( 16'h4BF0 ))
  \fifo_rx/w_ptr_next<0>1  (
    .ADR0(rd_uart_IBUF_1346),
    .ADR1(\fifo_rx/full_reg_1393 ),
    .ADR2(\fifo_rx/w_ptr_reg [0]),
    .ADR3(rx_done),
    .O(\fifo_rx/w_ptr_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/w_ptr_reg_0  (
    .I(\fifo_rx/w_ptr_reg<0>/DXMUX_2850 ),
    .CE(VCC),
    .CLK(\fifo_rx/w_ptr_reg<0>/CLKINV_2832 ),
    .SET(GND),
    .RST(\fifo_rx/w_ptr_reg<0>/FFX/RSTAND_2855 ),
    .O(\fifo_rx/w_ptr_reg [0])
  );
  X_BUF   \fifo_rx/w_ptr_reg<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/w_ptr_reg<0>/FFX/RSTAND_2855 )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular8.SLICEM_G  (
    .RADR0(\fifo_tx/w_ptr_reg [0]),
    .RADR1(\fifo_tx/w_ptr_reg [1]),
    .RADR2(\fifo_tx/w_ptr_reg [2]),
    .RADR3(\fifo_tx/w_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<7>/DIG_MUX_2877 ),
    .CLK(\tx_fifo_out<7>/CLKINV_2875 ),
    .WE(\tx_fifo_out<7>/SRINV_2869 ),
    .O(\tx_fifo_out<7>/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_tx/Mram_cola_circular8.SLICEM_F  (
    .RADR0(\fifo_tx/r_ptr_reg [0]),
    .RADR1(\fifo_tx/r_ptr_reg [1]),
    .RADR2(\fifo_tx/r_ptr_reg [2]),
    .RADR3(\fifo_tx/r_ptr_reg [3]),
    .WADR0(\fifo_tx/w_ptr_reg [0]),
    .WADR1(\fifo_tx/w_ptr_reg [1]),
    .WADR2(\fifo_tx/w_ptr_reg [2]),
    .WADR3(\fifo_tx/w_ptr_reg [3]),
    .I(\tx_fifo_out<7>/DIF_MUX_2890 ),
    .CLK(\tx_fifo_out<7>/CLKINV_2875 ),
    .WE(\tx_fifo_out<7>/SRINV_2869 ),
    .O(tx_fifo_out[7])
  );
  X_LUT4 #(
    .INIT ( 16'hF96F ))
  \fifo_tx/Mmux_full_next338_SW0  (
    .ADR0(\fifo_tx/w_ptr_reg [1]),
    .ADR1(\fifo_tx/r_ptr_reg [1]),
    .ADR2(\fifo_tx/r_ptr_reg [0]),
    .ADR3(\fifo_tx/w_ptr_reg [0]),
    .O(N103)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \fifo_tx/Madd__old_w_ptr_succ_7_cy<1>11  (
    .ADR0(\fifo_tx/w_ptr_reg [1]),
    .ADR1(\fifo_tx/w_ptr_reg [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_tx/Madd__old_w_ptr_succ_7_cy [1])
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular1.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_0_OBUF/DIG_MUX_2949 ),
    .CLK(\r_data_0_OBUF/CLKINV_2947 ),
    .WE(\r_data_0_OBUF/SRINV_2941 ),
    .O(\r_data_0_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular1.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_0_OBUF/DIF_MUX_2962 ),
    .CLK(\r_data_0_OBUF/CLKINV_2947 ),
    .WE(\r_data_0_OBUF/SRINV_2941 ),
    .O(r_data_0_OBUF_2974)
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \fifo_rx/Madd__old_w_ptr_succ_7_xor<1>11  (
    .ADR0(\fifo_rx/w_ptr_reg [1]),
    .ADR1(\fifo_rx/w_ptr_reg [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_rx/_old_w_ptr_succ_7 [1])
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular2.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_1_OBUF/DIG_MUX_3009 ),
    .CLK(\r_data_1_OBUF/CLKINV_3007 ),
    .WE(\r_data_1_OBUF/SRINV_3001 ),
    .O(\r_data_1_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular2.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_1_OBUF/DIF_MUX_3022 ),
    .CLK(\r_data_1_OBUF/CLKINV_3007 ),
    .WE(\r_data_1_OBUF/SRINV_3001 ),
    .O(r_data_1_OBUF_3034)
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular3.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_2_OBUF/DIG_MUX_3057 ),
    .CLK(\r_data_2_OBUF/CLKINV_3055 ),
    .WE(\r_data_2_OBUF/SRINV_3049 ),
    .O(\r_data_2_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular3.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_2_OBUF/DIF_MUX_3070 ),
    .CLK(\r_data_2_OBUF/CLKINV_3055 ),
    .WE(\r_data_2_OBUF/SRINV_3049 ),
    .O(r_data_2_OBUF_3082)
  );
  X_LUT4 #(
    .INIT ( 16'hBF1F ))
  \uart_tx/s_next<0>43_SW0  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_tx/state_rnm0_cmp_eq0000 ),
    .O(N98)
  );
  X_LUT4 #(
    .INIT ( 16'h7777 ))
  \uart_rx/s_next<1>4  (
    .ADR0(\uart_rx/s [0]),
    .ADR1(\brg/ti_1361 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/s_next<1>4_3106 )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular4.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_3_OBUF/DIG_MUX_3129 ),
    .CLK(\r_data_3_OBUF/CLKINV_3127 ),
    .WE(\r_data_3_OBUF/SRINV_3121 ),
    .O(\r_data_3_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular4.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_3_OBUF/DIF_MUX_3142 ),
    .CLK(\r_data_3_OBUF/CLKINV_3127 ),
    .WE(\r_data_3_OBUF/SRINV_3121 ),
    .O(r_data_3_OBUF_3154)
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular5.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_4_OBUF/DIG_MUX_3177 ),
    .CLK(\r_data_4_OBUF/CLKINV_3175 ),
    .WE(\r_data_4_OBUF/SRINV_3169 ),
    .O(\r_data_4_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular5.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_4_OBUF/DIF_MUX_3190 ),
    .CLK(\r_data_4_OBUF/CLKINV_3175 ),
    .WE(\r_data_4_OBUF/SRINV_3169 ),
    .O(r_data_4_OBUF_3202)
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular6.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_5_OBUF/DIG_MUX_3225 ),
    .CLK(\r_data_5_OBUF/CLKINV_3223 ),
    .WE(\r_data_5_OBUF/SRINV_3217 ),
    .O(\r_data_5_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular6.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_5_OBUF/DIF_MUX_3238 ),
    .CLK(\r_data_5_OBUF/CLKINV_3223 ),
    .WE(\r_data_5_OBUF/SRINV_3217 ),
    .O(r_data_5_OBUF_3250)
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular7.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_6_OBUF/DIG_MUX_3273 ),
    .CLK(\r_data_6_OBUF/CLKINV_3271 ),
    .WE(\r_data_6_OBUF/SRINV_3265 ),
    .O(\r_data_6_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular7.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_6_OBUF/DIF_MUX_3286 ),
    .CLK(\r_data_6_OBUF/CLKINV_3271 ),
    .WE(\r_data_6_OBUF/SRINV_3265 ),
    .O(r_data_6_OBUF_3298)
  );
  X_LUT4 #(
    .INIT ( 16'h0101 ))
  \uart_tx/b_next<0>31  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\fifo_tx/empty_reg_1372 ),
    .ADR3(VCC),
    .O(\uart_tx/N6_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \uart_tx/b_next<7>1  (
    .ADR0(\uart_tx/b [7]),
    .ADR1(\tx_fifo_out<7>_0 ),
    .ADR2(\uart_tx/N6 ),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next [7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_7  (
    .I(\uart_tx/b<7>/DXMUX_3329 ),
    .CE(VCC),
    .CLK(\uart_tx/b<7>/CLKINV_3312 ),
    .SET(GND),
    .RST(\uart_tx/b<7>/FFX/RSTAND_3334 ),
    .O(\uart_tx/b [7])
  );
  X_BUF   \uart_tx/b<7>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<7>/FFX/RSTAND_3334 )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular8.SLICEM_G  (
    .RADR0(\fifo_rx/w_ptr_reg [0]),
    .RADR1(\fifo_rx/w_ptr_reg [1]),
    .RADR2(\fifo_rx/w_ptr_reg [2]),
    .RADR3(\fifo_rx/w_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_7_OBUF/DIG_MUX_3356 ),
    .CLK(\r_data_7_OBUF/CLKINV_3354 ),
    .WE(\r_data_7_OBUF/SRINV_3348 ),
    .O(\r_data_7_OBUF/G/RAMOUT )
  );
  X_RAMD16 #(
    .INIT ( 16'h0000 ))
  \fifo_rx/Mram_cola_circular8.SLICEM_F  (
    .RADR0(\fifo_rx/r_ptr_reg [0]),
    .RADR1(\fifo_rx/r_ptr_reg [1]),
    .RADR2(\fifo_rx/r_ptr_reg [2]),
    .RADR3(\fifo_rx/r_ptr_reg [3]),
    .WADR0(\fifo_rx/w_ptr_reg [0]),
    .WADR1(\fifo_rx/w_ptr_reg [1]),
    .WADR2(\fifo_rx/w_ptr_reg [2]),
    .WADR3(\fifo_rx/w_ptr_reg [3]),
    .I(\r_data_7_OBUF/DIF_MUX_3369 ),
    .CLK(\r_data_7_OBUF/CLKINV_3354 ),
    .WE(\r_data_7_OBUF/SRINV_3348 ),
    .O(r_data_7_OBUF_3381)
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \fifo_tx/Madd__old_w_ptr_succ_7_xor<3>11  (
    .ADR0(\fifo_tx/w_ptr_reg [3]),
    .ADR1(\fifo_tx/w_ptr_reg [2]),
    .ADR2(\fifo_tx/w_ptr_reg [1]),
    .ADR3(\fifo_tx/w_ptr_reg [0]),
    .O(\fifo_tx/_old_w_ptr_succ_7 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \fifo_rx/Mmux_full_next3100_SW0  (
    .ADR0(\fifo_rx/w_ptr_reg [3]),
    .ADR1(\fifo_rx/r_ptr_reg [3]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N62)
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \brg/Mcount_contador_lut<0>_INV_0  (
    .ADR0(\brg/contador [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \brg/contador<7>_rt  (
    .ADR0(\brg/contador [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/contador<7>_rt_3532 )
  );
  X_BUF   \wr_uart/IFF/IMUX  (
    .I(\wr_uart/INBUF ),
    .O(wr_uart_IBUF_1333)
  );
  X_BUF   \rx/IFF/IMUX  (
    .I(\rx/INBUF ),
    .O(rx_IBUF_1307)
  );
  X_BUF   \rd_uart/IFF/IMUX  (
    .I(\rd_uart/INBUF ),
    .O(rd_uart_IBUF_1346)
  );
  X_BUF   \CLK/IFF/IMUX  (
    .I(\CLK/INBUF ),
    .O(CLK_IBUF1)
  );
  X_BUF   \RESET/IFF/IMUX  (
    .I(\RESET/INBUF ),
    .O(RESET_IBUF_1300)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_rx/s_next<3>53_F  (
    .ADR0(\uart_rx/s [2]),
    .ADR1(\uart_rx/s [0]),
    .ADR2(\uart_rx/s_next<3>36_0 ),
    .ADR3(\uart_rx/N01_0 ),
    .O(N124)
  );
  X_LUT4 #(
    .INIT ( 16'hF5E4 ))
  \uart_rx/s_next<3>53_G  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(N128_0),
    .ADR3(rx_IBUF_1307),
    .O(N125)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/s_3  (
    .I(\uart_rx/s<3>/DXMUX_3751 ),
    .CE(VCC),
    .CLK(\uart_rx/s<3>/CLKINV_3734 ),
    .SET(GND),
    .RST(\uart_rx/s<3>/FFX/RSTAND_3756 ),
    .O(\uart_rx/s [3])
  );
  X_BUF   \uart_rx/s<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/s<3>/FFX/RSTAND_3756 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \uart_tx/b_next<0>11_F  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\fifo_tx/empty_reg_1372 ),
    .ADR3(VCC),
    .O(N132)
  );
  X_LUT4 #(
    .INIT ( 16'h76FE ))
  \uart_tx/b_next<0>11_G  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR2(\fifo_tx/empty_reg_1372 ),
    .ADR3(\brg/ti_1361 ),
    .O(N133)
  );
  X_LUT4 #(
    .INIT ( 16'h4AE0 ))
  \uart_rx/s_next<0>202  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(rx_IBUF_1307),
    .ADR2(\uart_rx/s [0]),
    .ADR3(\brg/ti_1361 ),
    .O(\uart_rx/s_next<0>201_3801 )
  );
  X_LUT4 #(
    .INIT ( 16'h6E66 ))
  \uart_rx/s_next<0>201  (
    .ADR0(\uart_rx/s [0]),
    .ADR1(\brg/ti_1361 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR3(N120_0),
    .O(\uart_rx/s_next<0>20 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/s_0  (
    .I(\uart_rx/s<0>/DXMUX_3812 ),
    .CE(VCC),
    .CLK(\uart_rx/s<0>/CLKINV_3795 ),
    .SET(GND),
    .RST(\uart_rx/s<0>/FFX/RSTAND_3817 ),
    .O(\uart_rx/s [0])
  );
  X_BUF   \uart_rx/s<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/s<0>/FFX/RSTAND_3817 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<0>_SW0  (
    .ADR0(\tx_fifo_out<0>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [0]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<0>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<0>  (
    .ADR0(\uart_tx/b [1]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<0>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_0  (
    .I(\uart_tx/b<0>/DXMUX_3847 ),
    .CE(VCC),
    .CLK(\uart_tx/b<0>/CLKINV_3830 ),
    .SET(GND),
    .RST(\uart_tx/b<0>/FFX/RSTAND_3852 ),
    .O(\uart_tx/b [0])
  );
  X_BUF   \uart_tx/b<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<0>/FFX/RSTAND_3852 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_tx/s_next<3>41_SW1_SW0  (
    .ADR0(\uart_tx/s [1]),
    .ADR1(\uart_tx/s [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_tx/s_next<3>41_SW1_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA6A ))
  \uart_tx/s_next<3>41_SW1  (
    .ADR0(\uart_tx/s [3]),
    .ADR1(\uart_tx/s_next<3>41_SW1_SW0/O ),
    .ADR2(\uart_tx/s [2]),
    .ADR3(\uart_tx/N11 ),
    .O(N118)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<1>_SW0  (
    .ADR0(\tx_fifo_out<1>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [1]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<1>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<1>  (
    .ADR0(\uart_tx/b [2]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<1>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_1  (
    .I(\uart_tx/b<1>/DXMUX_3906 ),
    .CE(VCC),
    .CLK(\uart_tx/b<1>/CLKINV_3889 ),
    .SET(GND),
    .RST(\uart_tx/b<1>/FFX/RSTAND_3911 ),
    .O(\uart_tx/b [1])
  );
  X_BUF   \uart_tx/b<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<1>/FFX/RSTAND_3911 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<2>_SW0  (
    .ADR0(\tx_fifo_out<2>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [2]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<2>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<2>  (
    .ADR0(\uart_tx/b [3]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<2>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_2  (
    .I(\uart_tx/b<2>/DXMUX_3941 ),
    .CE(VCC),
    .CLK(\uart_tx/b<2>/CLKINV_3924 ),
    .SET(GND),
    .RST(\uart_tx/b<2>/FFX/RSTAND_3946 ),
    .O(\uart_tx/b [2])
  );
  X_BUF   \uart_tx/b<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<2>/FFX/RSTAND_3946 )
  );
  X_LUT4 #(
    .INIT ( 16'h0861 ))
  \fifo_rx/Mmux_full_next3100  (
    .ADR0(\fifo_rx/Madd__old_w_ptr_succ_7_cy [1]),
    .ADR1(\fifo_rx/w_ptr_reg [2]),
    .ADR2(\fifo_rx/r_ptr_reg [2]),
    .ADR3(N62_0),
    .O(\fifo_rx/Mmux_full_next3100/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \fifo_rx/Mmux_full_next3124  (
    .ADR0(\fifo_rx/full_reg_1393 ),
    .ADR1(\fifo_rx/Mmux_full_next35_0 ),
    .ADR2(\fifo_rx/Mmux_full_next3100/O ),
    .ADR3(\fifo_rx/Mmux_full_next334_0 ),
    .O(\fifo_rx/full_next )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/full_reg  (
    .I(\fifo_rx/full_reg/DXMUX_3976 ),
    .CE(VCC),
    .CLK(\fifo_rx/full_reg/CLKINV_3960 ),
    .SET(GND),
    .RST(\fifo_rx/full_reg/FFX/RSTAND_3981 ),
    .O(\fifo_rx/full_reg_1393 )
  );
  X_BUF   \fifo_rx/full_reg/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/full_reg/FFX/RSTAND_3981 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<3>_SW0  (
    .ADR0(\tx_fifo_out<3>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [3]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<3>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<3>  (
    .ADR0(\uart_tx/b [4]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<3>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_3  (
    .I(\uart_tx/b<3>/DXMUX_4011 ),
    .CE(VCC),
    .CLK(\uart_tx/b<3>/CLKINV_3994 ),
    .SET(GND),
    .RST(\uart_tx/b<3>/FFX/RSTAND_4016 ),
    .O(\uart_tx/b [3])
  );
  X_BUF   \uart_tx/b<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<3>/FFX/RSTAND_4016 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<4>_SW0  (
    .ADR0(\tx_fifo_out<4>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [4]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<4>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<4>  (
    .ADR0(\uart_tx/b [5]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<4>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_4  (
    .I(\uart_tx/b<4>/DXMUX_4046 ),
    .CE(VCC),
    .CLK(\uart_tx/b<4>/CLKINV_4029 ),
    .SET(GND),
    .RST(\uart_tx/b<4>/FFX/RSTAND_4051 ),
    .O(\uart_tx/b [4])
  );
  X_BUF   \uart_tx/b<4>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<4>/FFX/RSTAND_4051 )
  );
  X_LUT4 #(
    .INIT ( 16'h02FE ))
  \uart_tx/s_next<1>11  (
    .ADR0(\fifo_tx/empty_reg_1372 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR2(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR3(\brg/ti_1361 ),
    .O(\uart_tx/N11_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_tx/s_next<1>_SW0_SW0  (
    .ADR0(\uart_tx/s [1]),
    .ADR1(\uart_tx/N11 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N71)
  );
  X_LUT4 #(
    .INIT ( 16'hF7F7 ))
  \uart_rx/b_next<0>11_SW0  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\uart_rx/n [0]),
    .ADR2(\uart_rx/n [1]),
    .ADR3(VCC),
    .O(\uart_rx/b_next<0>11_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \uart_rx/n_next<1>33  (
    .ADR0(\brg/ti_1361 ),
    .ADR1(\uart_rx/b_next<0>11_SW0/O ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR3(\uart_rx/state_rnm0_cmp_eq0001 ),
    .O(\uart_rx/n_next<1>33_4098 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<5>_SW0  (
    .ADR0(\tx_fifo_out<5>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [5]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<5>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<5>  (
    .ADR0(\uart_tx/b [6]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<5>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [5])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_5  (
    .I(\uart_tx/b<5>/DXMUX_4129 ),
    .CE(VCC),
    .CLK(\uart_tx/b<5>/CLKINV_4112 ),
    .SET(GND),
    .RST(\uart_tx/b<5>/FFX/RSTAND_4134 ),
    .O(\uart_tx/b [5])
  );
  X_BUF   \uart_tx/b<5>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<5>/FFX/RSTAND_4134 )
  );
  X_LUT4 #(
    .INIT ( 16'hE6E6 ))
  \uart_tx/s_next<1>_SW0_SW1  (
    .ADR0(\uart_tx/s [0]),
    .ADR1(\uart_tx/s [1]),
    .ADR2(\uart_tx/N11 ),
    .ADR3(VCC),
    .O(\uart_tx/s_next<1>_SW0_SW1/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE2 ))
  \uart_tx/s_next<1>  (
    .ADR0(N71_0),
    .ADR1(\uart_tx/N13_0 ),
    .ADR2(\uart_tx/s_next<1>_SW0_SW1/O ),
    .ADR3(tx_done),
    .O(\uart_tx/s_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/s_1  (
    .I(\uart_tx/s<1>/DXMUX_4164 ),
    .CE(VCC),
    .CLK(\uart_tx/s<1>/CLKINV_4147 ),
    .SET(GND),
    .RST(\uart_tx/s<1>/FFX/RSTAND_4169 ),
    .O(\uart_tx/s [1])
  );
  X_BUF   \uart_tx/s<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/s<1>/FFX/RSTAND_4169 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \brg/contador_cmp_eq000019  (
    .ADR0(\brg/contador [5]),
    .ADR1(\brg/contador [7]),
    .ADR2(\brg/contador [6]),
    .ADR3(\brg/contador [4]),
    .O(\brg/contador_cmp_eq000019_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2A2A ))
  \brg/Mcount_contador_eqn_01  (
    .ADR0(Result[0]),
    .ADR1(\brg/contador_cmp_eq00008_1476 ),
    .ADR2(\brg/contador_cmp_eq000019_1477 ),
    .ADR3(VCC),
    .O(\brg/Mcount_contador_eqn_0 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/contador_0  (
    .I(\brg/contador<0>/DXMUX_4199 ),
    .CE(VCC),
    .CLK(\brg/contador<0>/CLKINV_4182 ),
    .SET(GND),
    .RST(\brg/contador<0>/FFX/RSTAND_4204 ),
    .O(\brg/contador [0])
  );
  X_BUF   \brg/contador<0>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\brg/contador<0>/FFX/RSTAND_4204 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_tx/b_next<6>_SW0  (
    .ADR0(\tx_fifo_out<6>_0 ),
    .ADR1(\uart_tx/N6 ),
    .ADR2(\uart_tx/b [6]),
    .ADR3(\uart_tx/N01 ),
    .O(\uart_tx/b_next<6>_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F8 ))
  \uart_tx/b_next<6>  (
    .ADR0(\uart_tx/b [7]),
    .ADR1(\uart_tx/N121 ),
    .ADR2(\uart_tx/b_next<6>_SW0/O ),
    .ADR3(VCC),
    .O(\uart_tx/b_next [6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/b_6  (
    .I(\uart_tx/b<6>/DXMUX_4234 ),
    .CE(VCC),
    .CLK(\uart_tx/b<6>/CLKINV_4217 ),
    .SET(GND),
    .RST(\uart_tx/b<6>/FFX/RSTAND_4239 ),
    .O(\uart_tx/b [6])
  );
  X_BUF   \uart_tx/b<6>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/b<6>/FFX/RSTAND_4239 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_tx/s_next<2>_SW2  (
    .ADR0(\uart_tx/s [2]),
    .ADR1(\uart_tx/N11 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_tx/s_next<2>_SW2/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE2 ))
  \uart_tx/s_next<2>  (
    .ADR0(\uart_tx/s_next<2>_SW2/O ),
    .ADR1(\uart_tx/N13_0 ),
    .ADR2(N69_0),
    .ADR3(tx_done),
    .O(\uart_tx/s_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/s_2  (
    .I(\uart_tx/s<2>/DXMUX_4269 ),
    .CE(VCC),
    .CLK(\uart_tx/s<2>/CLKINV_4251 ),
    .SET(GND),
    .RST(\uart_tx/s<2>/FFX/RSTAND_4274 ),
    .O(\uart_tx/s [2])
  );
  X_BUF   \uart_tx/s<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/s<2>/FFX/RSTAND_4274 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA2A ))
  \uart_rx/n_next<1>12  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\uart_rx/n [0]),
    .ADR2(\uart_rx/state_rnm0_cmp_eq0001 ),
    .ADR3(\uart_rx/n [2]),
    .O(\uart_rx/n_next<1>12/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFA8 ))
  \uart_rx/n_next<1>36  (
    .ADR0(\uart_rx/n [1]),
    .ADR1(\uart_rx/N17_0 ),
    .ADR2(\uart_rx/n_next<1>12/O ),
    .ADR3(\uart_rx/n_next<1>33_0 ),
    .O(\uart_rx/n_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/n_1  (
    .I(\uart_rx/n<1>/DXMUX_4304 ),
    .CE(VCC),
    .CLK(\uart_rx/n<1>/CLKINV_4288 ),
    .SET(GND),
    .RST(\uart_rx/n<1>/FFX/RSTAND_4309 ),
    .O(\uart_rx/n [1])
  );
  X_BUF   \uart_rx/n<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/n<1>/FFX/RSTAND_4309 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \uart_rx/RX_DONE1  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_rx/state_rnm0_cmp_eq0001 ),
    .O(rx_done_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8400 ))
  \fifo_rx/Mmux_full_next334  (
    .ADR0(\fifo_rx/r_ptr_reg [1]),
    .ADR1(\fifo_rx/Mmux_full_next321_0 ),
    .ADR2(\fifo_rx/_old_w_ptr_succ_7<1>_0 ),
    .ADR3(rx_done),
    .O(\fifo_rx/Mmux_full_next334_4332 )
  );
  X_LUT4 #(
    .INIT ( 16'h6900 ))
  \fifo_tx/Mmux_empty_next393  (
    .ADR0(\fifo_tx/Madd__old_r_ptr_succ_6_cy [1]),
    .ADR1(\fifo_tx/r_ptr_reg [2]),
    .ADR2(\fifo_tx/w_ptr_reg [2]),
    .ADR3(\fifo_tx/Mmux_empty_next392_0 ),
    .O(\fifo_tx/Mmux_empty_next393/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \fifo_tx/Mmux_empty_next3122  (
    .ADR0(\fifo_tx/empty_reg_1372 ),
    .ADR1(\fifo_tx/Mmux_empty_next35_0 ),
    .ADR2(\fifo_tx/Mmux_empty_next323_0 ),
    .ADR3(\fifo_tx/Mmux_empty_next393/O ),
    .O(\fifo_tx/empty_next )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \fifo_tx/empty_reg  (
    .I(\fifo_tx/empty_reg/DXMUX_4363 ),
    .CE(VCC),
    .CLK(\fifo_tx/empty_reg/CLKINV_4347 ),
    .SET(\fifo_tx/empty_reg/FFX/SET ),
    .RST(GND),
    .O(\fifo_tx/empty_reg_1372 )
  );
  X_BUF   \fifo_tx/empty_reg/FFX/SETOR  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/empty_reg/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hFFDF ))
  \uart_rx/n_next<2>11  (
    .ADR0(\uart_rx/s [2]),
    .ADR1(\uart_rx/s [3]),
    .ADR2(\uart_rx/s [1]),
    .ADR3(N109_0),
    .O(\uart_rx/n_next<2>11/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0EC ))
  \uart_rx/n_next<2>28  (
    .ADR0(\uart_rx/n [2]),
    .ADR1(\uart_rx/n_next<2>20_0 ),
    .ADR2(\uart_rx/n_next<2>11/O ),
    .ADR3(\uart_rx/N11 ),
    .O(\uart_rx/n_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/n_2  (
    .I(\uart_rx/n<2>/DXMUX_4397 ),
    .CE(VCC),
    .CLK(\uart_rx/n<2>/CLKINV_4381 ),
    .SET(GND),
    .RST(\uart_rx/n<2>/FFX/RSTAND_4402 ),
    .O(\uart_rx/n [2])
  );
  X_BUF   \uart_rx/n<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/n<2>/FFX/RSTAND_4402 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \uart_tx/s_next<3>41_SW0  (
    .ADR0(\uart_tx/s [3]),
    .ADR1(\uart_tx/N11 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_tx/s_next<3>41_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE2 ))
  \uart_tx/s_next<3>47  (
    .ADR0(\uart_tx/s_next<3>41_SW0/O ),
    .ADR1(\uart_tx/N13_0 ),
    .ADR2(N118_0),
    .ADR3(tx_done),
    .O(\uart_tx/s_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/s_3  (
    .I(\uart_tx/s<3>/DXMUX_4432 ),
    .CE(VCC),
    .CLK(\uart_tx/s<3>/CLKINV_4414 ),
    .SET(GND),
    .RST(\uart_tx/s<3>/FFX/RSTAND_4437 ),
    .O(\uart_tx/s [3])
  );
  X_BUF   \uart_tx/s<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/s<3>/FFX/RSTAND_4437 )
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ))
  \fifo_tx/w_ptr_next<1>1_SW0  (
    .ADR0(\fifo_tx/w_ptr_reg [1]),
    .ADR1(wr_uart_IBUF_1333),
    .ADR2(\fifo_tx/w_ptr_reg [0]),
    .ADR3(VCC),
    .O(\fifo_tx/w_ptr_next<1>1_SW0/O_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0D8 ))
  \fifo_tx/w_ptr_next<1>1  (
    .ADR0(\fifo_tx/full_reg_1334 ),
    .ADR1(\fifo_tx/w_ptr_reg [1]),
    .ADR2(\fifo_tx/w_ptr_next<1>1_SW0/O ),
    .ADR3(tx_done),
    .O(\fifo_tx/w_ptr_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/w_ptr_reg_1  (
    .I(\fifo_tx/w_ptr_reg<1>/DXMUX_4467 ),
    .CE(VCC),
    .CLK(\fifo_tx/w_ptr_reg<1>/CLKINV_4450 ),
    .SET(GND),
    .RST(\fifo_tx/w_ptr_reg<1>/FFX/RSTAND_4472 ),
    .O(\fifo_tx/w_ptr_reg [1])
  );
  X_BUF   \fifo_tx/w_ptr_reg<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/w_ptr_reg<1>/FFX/RSTAND_4472 )
  );
  X_LUT4 #(
    .INIT ( 16'h7F7F ))
  \fifo_tx/w_ptr_next<2>1_SW0  (
    .ADR0(\fifo_tx/w_ptr_reg [1]),
    .ADR1(\fifo_tx/w_ptr_reg [0]),
    .ADR2(wr_uart_IBUF_1333),
    .ADR3(VCC),
    .O(\fifo_tx/w_ptr_next<2>1_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hC3C9 ))
  \fifo_tx/w_ptr_next<2>1  (
    .ADR0(\fifo_tx/full_reg_1334 ),
    .ADR1(\fifo_tx/w_ptr_reg [2]),
    .ADR2(\fifo_tx/w_ptr_next<2>1_SW0/O ),
    .ADR3(tx_done),
    .O(\fifo_tx/w_ptr_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/w_ptr_reg_2  (
    .I(\fifo_tx/w_ptr_reg<2>/DXMUX_4502 ),
    .CE(VCC),
    .CLK(\fifo_tx/w_ptr_reg<2>/CLKINV_4485 ),
    .SET(GND),
    .RST(\fifo_tx/w_ptr_reg<2>/FFX/RSTAND_4507 ),
    .O(\fifo_tx/w_ptr_reg [2])
  );
  X_BUF   \fifo_tx/w_ptr_reg<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/w_ptr_reg<2>/FFX/RSTAND_4507 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \fifo_tx/w_ptr_next<3>1_SW0_SW0  (
    .ADR0(\fifo_tx/w_ptr_reg [1]),
    .ADR1(\fifo_tx/w_ptr_reg [0]),
    .ADR2(\fifo_tx/w_ptr_reg [2]),
    .ADR3(wr_uart_IBUF_1333),
    .O(\fifo_tx/w_ptr_next<3>1_SW0_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hC3C9 ))
  \fifo_tx/w_ptr_next<3>1  (
    .ADR0(\fifo_tx/full_reg_1334 ),
    .ADR1(\fifo_tx/w_ptr_reg [3]),
    .ADR2(\fifo_tx/w_ptr_next<3>1_SW0_SW0/O ),
    .ADR3(tx_done),
    .O(\fifo_tx/w_ptr_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/w_ptr_reg_3  (
    .I(\fifo_tx/w_ptr_reg<3>/DXMUX_4537 ),
    .CE(VCC),
    .CLK(\fifo_tx/w_ptr_reg<3>/CLKINV_4521 ),
    .SET(GND),
    .RST(\fifo_tx/w_ptr_reg<3>/FFX/RSTAND_4542 ),
    .O(\fifo_tx/w_ptr_reg [3])
  );
  X_BUF   \fifo_tx/w_ptr_reg<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/w_ptr_reg<3>/FFX/RSTAND_4542 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  \uart_tx/n_next<2>2  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_tx/n_next<2>2/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA2A ))
  \uart_tx/n_next<2>15_SW0  (
    .ADR0(\uart_tx/n [2]),
    .ADR1(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_tx/n_next<2>2/O ),
    .O(N64)
  );
  X_LUT4 #(
    .INIT ( 16'h6900 ))
  \fifo_rx/Mmux_empty_next391  (
    .ADR0(\fifo_rx/Madd__old_r_ptr_succ_6_cy<1>_0 ),
    .ADR1(\fifo_rx/r_ptr_reg [2]),
    .ADR2(\fifo_rx/w_ptr_reg [2]),
    .ADR3(\fifo_rx/Mmux_empty_next390_0 ),
    .O(\fifo_rx/Mmux_empty_next391/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \fifo_rx/Mmux_empty_next3120  (
    .ADR0(\fifo_rx/empty_reg_1342 ),
    .ADR1(\fifo_rx/Mmux_empty_next34_0 ),
    .ADR2(\fifo_rx/Mmux_empty_next324_0 ),
    .ADR3(\fifo_rx/Mmux_empty_next391/O ),
    .O(\fifo_rx/empty_next )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \fifo_rx/empty_reg  (
    .I(\fifo_rx/empty_reg/DXMUX_4596 ),
    .CE(VCC),
    .CLK(\fifo_rx/empty_reg/CLKINV_4580 ),
    .SET(\fifo_rx/empty_reg/FFX/SET ),
    .RST(GND),
    .O(\fifo_rx/empty_reg_1342 )
  );
  X_BUF   \fifo_rx/empty_reg/FFX/SETOR  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/empty_reg/FFX/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hF7F7 ))
  \uart_tx/n_next<1>_SW2  (
    .ADR0(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR1(\brg/ti_1361 ),
    .ADR2(N10_0),
    .ADR3(VCC),
    .O(\uart_tx/n_next<1>_SW2/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4A0 ))
  \uart_tx/n_next<1>  (
    .ADR0(\uart_tx/n [1]),
    .ADR1(\uart_tx/n [0]),
    .ADR2(\uart_tx/n_next<1>_SW2/O ),
    .ADR3(\uart_tx/N121 ),
    .O(\uart_tx/n_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/n_1  (
    .I(\uart_tx/n<1>/DXMUX_4630 ),
    .CE(VCC),
    .CLK(\uart_tx/n<1>/CLKINV_4613 ),
    .SET(GND),
    .RST(\uart_tx/n<1>/FFX/RSTAND_4635 ),
    .O(\uart_tx/n [1])
  );
  X_BUF   \uart_tx/n<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/n<1>/FFX/RSTAND_4635 )
  );
  X_LUT4 #(
    .INIT ( 16'hF7F7 ))
  \uart_tx/TX_DONE1_SW1  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR1(\brg/ti_1361 ),
    .ADR2(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR3(VCC),
    .O(N80_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFF5D ))
  \fifo_tx/Mmux_empty_next35  (
    .ADR0(wr_uart_IBUF_1333),
    .ADR1(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR2(N80),
    .ADR3(\fifo_tx/full_reg_1334 ),
    .O(\fifo_tx/Mmux_empty_next35_4658 )
  );
  X_LUT4 #(
    .INIT ( 16'h5AD2 ))
  \fifo_rx/w_ptr_next<1>1_G  (
    .ADR0(\fifo_rx/w_ptr_reg [0]),
    .ADR1(\fifo_rx/full_reg_1393 ),
    .ADR2(\fifo_rx/w_ptr_reg [1]),
    .ADR3(rd_uart_IBUF_1346),
    .O(\fifo_rx/w_ptr_next<1>1_G/O_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ))
  \fifo_rx/w_ptr_next<1>11  (
    .ADR0(rx_done),
    .ADR1(\fifo_rx/w_ptr_reg [1]),
    .ADR2(\fifo_rx/w_ptr_next<1>1_G/O ),
    .ADR3(VCC),
    .O(\fifo_rx/w_ptr_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/w_ptr_reg_1  (
    .I(\fifo_rx/w_ptr_reg<1>/DXMUX_4689 ),
    .CE(VCC),
    .CLK(\fifo_rx/w_ptr_reg<1>/CLKINV_4672 ),
    .SET(GND),
    .RST(\fifo_rx/w_ptr_reg<1>/FFX/RSTAND_4694 ),
    .O(\fifo_rx/w_ptr_reg [1])
  );
  X_BUF   \fifo_rx/w_ptr_reg<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/w_ptr_reg<1>/FFX/RSTAND_4694 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFB ))
  \uart_rx/RX_DONE1_SW1  (
    .ADR0(\fifo_rx/full_reg_1393 ),
    .ADR1(\brg/ti_1361 ),
    .ADR2(rd_uart_IBUF_1346),
    .ADR3(VCC),
    .O(\uart_rx/RX_DONE1_SW1/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFF ))
  \fifo_rx/Mmux_empty_next34  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(\uart_rx/RX_DONE1_SW1/O ),
    .ADR3(\uart_rx/state_rnm0_cmp_eq0001 ),
    .O(\fifo_rx/Mmux_empty_next34_4717 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \fifo_rx/Madd__old_w_ptr_succ_7_cy<1>11  (
    .ADR0(\fifo_rx/w_ptr_reg [1]),
    .ADR1(\fifo_rx/w_ptr_reg [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_rx/Madd__old_w_ptr_succ_7_cy<1>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h9AAA ))
  \fifo_rx/w_ptr_next<2>1  (
    .ADR0(\fifo_rx/w_ptr_reg [2]),
    .ADR1(N43_0),
    .ADR2(\fifo_rx/Madd__old_w_ptr_succ_7_cy [1]),
    .ADR3(rx_done),
    .O(\fifo_rx/w_ptr_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/w_ptr_reg_2  (
    .I(\fifo_rx/w_ptr_reg<2>/DXMUX_4748 ),
    .CE(VCC),
    .CLK(\fifo_rx/w_ptr_reg<2>/CLKINV_4730 ),
    .SET(GND),
    .RST(\fifo_rx/w_ptr_reg<2>/FFX/RSTAND_4753 ),
    .O(\fifo_rx/w_ptr_reg [2])
  );
  X_BUF   \fifo_rx/w_ptr_reg<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/w_ptr_reg<2>/FFX/RSTAND_4753 )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11  (
    .ADR0(\fifo_rx/w_ptr_reg [3]),
    .ADR1(\fifo_rx/w_ptr_reg [2]),
    .ADR2(\fifo_rx/w_ptr_reg [1]),
    .ADR3(\fifo_rx/w_ptr_reg [0]),
    .O(\fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11/O_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2AA ))
  \fifo_rx/w_ptr_next<3>1  (
    .ADR0(\fifo_rx/w_ptr_reg [3]),
    .ADR1(N37_0),
    .ADR2(\fifo_rx/Madd__old_w_ptr_succ_7_xor<3>11/O ),
    .ADR3(rx_done),
    .O(\fifo_rx/w_ptr_next [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_rx/w_ptr_reg_3  (
    .I(\fifo_rx/w_ptr_reg<3>/DXMUX_4783 ),
    .CE(VCC),
    .CLK(\fifo_rx/w_ptr_reg<3>/CLKINV_4767 ),
    .SET(GND),
    .RST(\fifo_rx/w_ptr_reg<3>/FFX/RSTAND_4788 ),
    .O(\fifo_rx/w_ptr_reg [3])
  );
  X_BUF   \fifo_rx/w_ptr_reg<3>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_rx/w_ptr_reg<3>/FFX/RSTAND_4788 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_rx/state_rnm0_FSM_FFd1-In_SW1  (
    .ADR0(\brg/ti_1361 ),
    .ADR1(\uart_rx/s [0]),
    .ADR2(\uart_rx/s [1]),
    .ADR3(\uart_rx/s [2]),
    .O(\uart_rx/state_rnm0_FSM_FFd1-In_SW1/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h8AEA ))
  \uart_rx/state_rnm0_FSM_FFd1-In  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd1-In_SW1/O ),
    .ADR3(\uart_rx/s [3]),
    .O(\uart_rx/state_rnm0_FSM_FFd1-In_4815 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/state_rnm0_FSM_FFd1  (
    .I(\uart_rx/state_rnm0_FSM_FFd1/DXMUX_4818 ),
    .CE(VCC),
    .CLK(\uart_rx/state_rnm0_FSM_FFd1/CLKINV_4802 ),
    .SET(GND),
    .RST(\uart_rx/state_rnm0_FSM_FFd1/FFX/RSTAND_4823 ),
    .O(\uart_rx/state_rnm0_FSM_FFd1_1308 )
  );
  X_BUF   \uart_rx/state_rnm0_FSM_FFd1/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/state_rnm0_FSM_FFd1/FFX/RSTAND_4823 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \uart_rx/b_next<0>11  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_rx/state_rnm0_cmp_eq0001 ),
    .O(\uart_rx/N11_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<6>1  (
    .ADR0(\uart_rx/b [6]),
    .ADR1(\uart_rx/b [7]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [6])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_6  (
    .I(\uart_rx/b<6>/DXMUX_4853 ),
    .CE(VCC),
    .CLK(\uart_rx/b<6>/CLKINV_4836 ),
    .SET(GND),
    .RST(\uart_rx/b<6>/FFX/RSTAND_4858 ),
    .O(\uart_rx/b [6])
  );
  X_BUF   \uart_rx/b<6>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/b<6>/FFX/RSTAND_4858 )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \fifo_tx/Madd__old_r_ptr_succ_6_xor<3>11  (
    .ADR0(\fifo_tx/r_ptr_reg [3]),
    .ADR1(\fifo_tx/r_ptr_reg [2]),
    .ADR2(\fifo_tx/r_ptr_reg [1]),
    .ADR3(\fifo_tx/r_ptr_reg [0]),
    .O(\fifo_tx/_old_r_ptr_succ_6<3>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0090 ))
  \fifo_tx/Mmux_empty_next323  (
    .ADR0(\fifo_tx/_old_r_ptr_succ_6 [3]),
    .ADR1(\fifo_tx/w_ptr_reg [3]),
    .ADR2(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR3(N80),
    .O(\fifo_tx/Mmux_empty_next323_4881 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \uart_rx/s_next<2>8_SW2  (
    .ADR0(\uart_rx/s [1]),
    .ADR1(\uart_rx/s [0]),
    .ADR2(\brg/ti_1361 ),
    .ADR3(VCC),
    .O(\uart_rx/s_next<2>8_SW2/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h3732 ))
  \uart_rx/s_next<2>8  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/s_next<2>8_SW2/O ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR3(rx_IBUF_1307),
    .O(\uart_rx/s_next<2>8_4905 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \fifo_tx/Madd__old_r_ptr_succ_6_cy<1>11  (
    .ADR0(\fifo_tx/r_ptr_reg [1]),
    .ADR1(\fifo_tx/r_ptr_reg [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_tx/Madd__old_r_ptr_succ_6_cy<1>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h9AAA ))
  \fifo_tx/r_ptr_next<2>1  (
    .ADR0(\fifo_tx/r_ptr_reg [2]),
    .ADR1(N41_0),
    .ADR2(\fifo_tx/Madd__old_r_ptr_succ_6_cy [1]),
    .ADR3(tx_done),
    .O(\fifo_tx/r_ptr_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/r_ptr_reg_2  (
    .I(\fifo_tx/r_ptr_reg<2>/DXMUX_4936 ),
    .CE(VCC),
    .CLK(\fifo_tx/r_ptr_reg<2>/CLKINV_4918 ),
    .SET(GND),
    .RST(\fifo_tx/r_ptr_reg<2>/FFX/RSTAND_4941 ),
    .O(\fifo_tx/r_ptr_reg [2])
  );
  X_BUF   \fifo_tx/r_ptr_reg<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/r_ptr_reg<2>/FFX/RSTAND_4941 )
  );
  X_LUT4 #(
    .INIT ( 16'h7777 ))
  \uart_tx/s_next<0>11  (
    .ADR0(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR1(\brg/ti_1361 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_tx/N5_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hAF27 ))
  \uart_tx/state_rnm0_FSM_FFd2-In  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(N5_0),
    .ADR2(N4_0),
    .ADR3(\uart_tx/N5 ),
    .O(\uart_tx/state_rnm0_FSM_FFd2-In_4968 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_tx/state_rnm0_FSM_FFd2  (
    .I(\uart_tx/state_rnm0_FSM_FFd2/DXMUX_4971 ),
    .CE(VCC),
    .CLK(\uart_tx/state_rnm0_FSM_FFd2/CLKINV_4953 ),
    .SET(GND),
    .RST(\uart_tx/state_rnm0_FSM_FFd2/FFX/RSTAND_4976 ),
    .O(\uart_tx/state_rnm0_FSM_FFd2_1360 )
  );
  X_BUF   \uart_tx/state_rnm0_FSM_FFd2/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_tx/state_rnm0_FSM_FFd2/FFX/RSTAND_4976 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFB ))
  \uart_tx/TX_DONE1_SW0  (
    .ADR0(\fifo_tx/empty_reg_1372 ),
    .ADR1(\brg/ti_1361 ),
    .ADR2(wr_uart_IBUF_1333),
    .ADR3(VCC),
    .O(\uart_tx/TX_DONE1_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFDF ))
  \fifo_tx/Mmux_full_next34  (
    .ADR0(\uart_tx/state_rnm0_cmp_eq0000 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR2(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR3(\uart_tx/TX_DONE1_SW0/O ),
    .O(\fifo_tx/Mmux_full_next34_4999 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \uart_rx/s_next<0>211  (
    .ADR0(\uart_rx/s [2]),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR2(\uart_rx/s [3]),
    .ADR3(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .O(\uart_rx/s_next<0>211/O_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF32 ))
  \uart_rx/s_next<1>44  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/s [1]),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR3(\uart_rx/s_next<0>211/O ),
    .O(\uart_rx/s_next<1>44_5023 )
  );
  X_LUT4 #(
    .INIT ( 16'h0808 ))
  \uart_rx/RX_DONE1_SW2  (
    .ADR0(\brg/ti_1361 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR3(VCC),
    .O(\uart_rx/RX_DONE1_SW2/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0999 ))
  \fifo_rx/Mmux_empty_next324  (
    .ADR0(\fifo_rx/w_ptr_reg [3]),
    .ADR1(\fifo_rx/_old_r_ptr_succ_6<3>_0 ),
    .ADR2(\uart_rx/state_rnm0_cmp_eq0001 ),
    .ADR3(\uart_rx/RX_DONE1_SW2/O ),
    .O(\fifo_rx/Mmux_empty_next324_5047 )
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \fifo_tx/Mmux_empty_next392_SW0  (
    .ADR0(\fifo_tx/r_ptr_reg [1]),
    .ADR1(\fifo_tx/w_ptr_reg [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_tx/Mmux_empty_next392_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0204 ))
  \fifo_tx/Mmux_empty_next392  (
    .ADR0(\fifo_tx/w_ptr_reg [0]),
    .ADR1(\fifo_tx/r_ptr_reg [0]),
    .ADR2(wr_uart_IBUF_1333),
    .ADR3(\fifo_tx/Mmux_empty_next392_SW0/O ),
    .O(\fifo_tx/Mmux_empty_next392_5071 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_rx/state_rnm0_cmp_eq00011  (
    .ADR0(\uart_rx/s [3]),
    .ADR1(\uart_rx/s [2]),
    .ADR2(\uart_rx/s [1]),
    .ADR3(\uart_rx/s [0]),
    .O(\uart_rx/state_rnm0_cmp_eq0001_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF5D ))
  \fifo_rx/Mmux_full_next35  (
    .ADR0(rd_uart_IBUF_1346),
    .ADR1(\uart_rx/state_rnm0_cmp_eq0001 ),
    .ADR2(N74_0),
    .ADR3(\fifo_rx/empty_reg_1342 ),
    .O(\fifo_rx/Mmux_full_next35_5095 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE04 ))
  \uart_rx/s_next<1>211  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(rx_IBUF_1307),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR3(\uart_rx/s_next<1>4_0 ),
    .O(\uart_rx/s_next<1>211/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_rx/s_next<1>54  (
    .ADR0(\uart_rx/s [1]),
    .ADR1(\uart_rx/s_next<1>211/O ),
    .ADR2(\uart_rx/s_next<1>44_0 ),
    .ADR3(\uart_rx/s_next<1>45_0 ),
    .O(\uart_rx/s_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/s_1  (
    .I(\uart_rx/s<1>/DXMUX_5126 ),
    .CE(VCC),
    .CLK(\uart_rx/s<1>/CLKINV_5110 ),
    .SET(GND),
    .RST(\uart_rx/s<1>/FFX/RSTAND_5131 ),
    .O(\uart_rx/s [1])
  );
  X_BUF   \uart_rx/s<1>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/s<1>/FFX/RSTAND_5131 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \uart_tx/TX_DONE1  (
    .ADR0(\uart_tx/state_rnm0_FSM_FFd2_1360 ),
    .ADR1(\uart_tx/state_rnm0_FSM_FFd1_1311 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_tx/state_rnm0_cmp_eq0000 ),
    .O(tx_done_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0069 ))
  \fifo_tx/Mmux_full_next3110  (
    .ADR0(\fifo_tx/r_ptr_reg [2]),
    .ADR1(\fifo_tx/Madd__old_w_ptr_succ_7_cy<1>_0 ),
    .ADR2(\fifo_tx/w_ptr_reg [2]),
    .ADR3(tx_done),
    .O(\fifo_tx/Mmux_full_next3110_5154 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \uart_rx/s_next<2>34  (
    .ADR0(\uart_rx/s_next<2>21_0 ),
    .ADR1(\uart_rx/s_next<2>28_0 ),
    .ADR2(\uart_rx/state_rnm0_cmp_eq0001 ),
    .ADR3(\uart_rx/N01_0 ),
    .O(\uart_rx/s_next<2>34/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \uart_rx/s_next<2>51  (
    .ADR0(\uart_rx/s [2]),
    .ADR1(\uart_rx/s_next<2>8_0 ),
    .ADR2(\brg/ti_1361 ),
    .ADR3(\uart_rx/s_next<2>34/O ),
    .O(\uart_rx/s_next [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/s_2  (
    .I(\uart_rx/s<2>/DXMUX_5185 ),
    .CE(VCC),
    .CLK(\uart_rx/s<2>/CLKINV_5169 ),
    .SET(GND),
    .RST(\uart_rx/s<2>/FFX/RSTAND_5190 ),
    .O(\uart_rx/s [2])
  );
  X_BUF   \uart_rx/s<2>/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\uart_rx/s<2>/FFX/RSTAND_5190 )
  );
  X_LUT4 #(
    .INIT ( 16'h7F7F ))
  \uart_rx/s_next<3>32  (
    .ADR0(\uart_rx/s [2]),
    .ADR1(\uart_rx/s [1]),
    .ADR2(\uart_rx/s [0]),
    .ADR3(VCC),
    .O(\uart_rx/s_next<3>32/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC64 ))
  \uart_rx/s_next<3>11  (
    .ADR0(\uart_rx/s [3]),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR3(\uart_rx/s_next<3>32/O ),
    .O(\uart_rx/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \fifo_rx/Mmux_empty_next390_SW0  (
    .ADR0(\fifo_rx/r_ptr_reg [1]),
    .ADR1(\fifo_rx/w_ptr_reg [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\fifo_rx/Mmux_empty_next390_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2040 ))
  \fifo_rx/Mmux_empty_next390  (
    .ADR0(\fifo_rx/w_ptr_reg [0]),
    .ADR1(\fifo_rx/r_ptr_reg [0]),
    .ADR2(rd_uart_IBUF_1346),
    .ADR3(\fifo_rx/Mmux_empty_next390_SW0/O ),
    .O(\fifo_rx/Mmux_empty_next390_5237 )
  );
  X_LUT4 #(
    .INIT ( 16'hF7FF ))
  \uart_rx/n_next<0>11_SW1  (
    .ADR0(\uart_rx/s [2]),
    .ADR1(\uart_rx/s [1]),
    .ADR2(\uart_rx/s [3]),
    .ADR3(\uart_rx/s [0]),
    .O(\uart_rx/n_next<0>11_SW1/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h75FF ))
  \uart_rx/n_next<0>11  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd2_1338 ),
    .ADR1(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR2(\uart_rx/n_next<0>11_SW1/O ),
    .ADR3(\brg/ti_1361 ),
    .O(\uart_rx/N17 )
  );
  X_LUT4 #(
    .INIT ( 16'h0090 ))
  \fifo_tx/Mmux_full_next338  (
    .ADR0(\fifo_tx/_old_w_ptr_succ_7<3>_0 ),
    .ADR1(\fifo_tx/r_ptr_reg [3]),
    .ADR2(wr_uart_IBUF_1333),
    .ADR3(N103_0),
    .O(\fifo_tx/Mmux_full_next338/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \fifo_tx/Mmux_full_next3126  (
    .ADR0(\fifo_tx/full_reg_1334 ),
    .ADR1(\fifo_tx/Mmux_full_next34_0 ),
    .ADR2(\fifo_tx/Mmux_full_next338/O ),
    .ADR3(\fifo_tx/Mmux_full_next3110_0 ),
    .O(\fifo_tx/full_next )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fifo_tx/full_reg  (
    .I(\fifo_tx/full_reg/DXMUX_5292 ),
    .CE(VCC),
    .CLK(\fifo_tx/full_reg/CLKINV_5276 ),
    .SET(GND),
    .RST(\fifo_tx/full_reg/FFX/RSTAND_5297 ),
    .O(\fifo_tx/full_reg_1334 )
  );
  X_BUF   \fifo_tx/full_reg/FFX/RSTAND  (
    .I(RESET_IBUF_1300),
    .O(\fifo_tx/full_reg/FFX/RSTAND_5297 )
  );
  X_LUT4 #(
    .INIT ( 16'h7777 ))
  \uart_rx/state_rnm0_FSM_FFd2-In12  (
    .ADR0(\uart_rx/state_rnm0_FSM_FFd1_1308 ),
    .ADR1(\uart_rx/n [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In12/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF7FF ))
  \uart_rx/state_rnm0_FSM_FFd2-In17  (
    .ADR0(\uart_rx/n [1]),
    .ADR1(\uart_rx/n [0]),
    .ADR2(\uart_rx/state_rnm0_FSM_FFd2-In12/O ),
    .ADR3(\brg/ti_1361 ),
    .O(\uart_rx/state_rnm0_FSM_FFd2-In17_5320 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \brg/contador_cmp_eq00008  (
    .ADR0(\brg/contador [1]),
    .ADR1(\brg/contador [0]),
    .ADR2(\brg/contador [3]),
    .ADR3(\brg/contador [2]),
    .O(\brg/contador_cmp_eq00008_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \brg/contador_cmp_eq000020  (
    .ADR0(\brg/contador_cmp_eq00008_1476 ),
    .ADR1(\brg/contador_cmp_eq000019_1477 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\brg/contador_cmp_eq0000 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \brg/ti  (
    .I(\brg/ti/DXMUX_5352 ),
    .CE(\brg/ti/CEINV_5334 ),
    .CLK(\brg/ti/CLKINV_5335 ),
    .SET(GND),
    .RST(GND),
    .O(\brg/ti_1361 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<0>2  (
    .ADR0(\uart_rx/b [0]),
    .ADR1(\uart_rx/b [1]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_0  (
    .I(\uart_rx/b<1>/DYMUX_5377 ),
    .CE(VCC),
    .CLK(\uart_rx/b<1>/CLKINV_5367 ),
    .SET(GND),
    .RST(\uart_rx/b<1>/SRINV_5368 ),
    .O(\uart_rx/b [0])
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ))
  \uart_rx/b_next<1>1  (
    .ADR0(\uart_rx/b [1]),
    .ADR1(\uart_rx/b [2]),
    .ADR2(\uart_rx/N11 ),
    .ADR3(VCC),
    .O(\uart_rx/b_next [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \uart_rx/b_1  (
    .I(\uart_rx/b<1>/DXMUX_5392 ),
    .CE(VCC),
    .CLK(\uart_rx/b<1>/CLKINV_5367 ),
    .SET(GND),
    .RST(\uart_rx/b<1>/SRINV_5368 ),
    .O(\uart_rx/b [1])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \Result<0>/G/X_LUT4  (
    .ADR0(\brg/contador [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \Result<2>/F/X_LUT4  (
    .ADR0(\brg/contador [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \Result<2>/G/X_LUT4  (
    .ADR0(\brg/contador [3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \Result<4>/F/X_LUT4  (
    .ADR0(\brg/contador [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \Result<4>/G/X_LUT4  (
    .ADR0(\brg/contador [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \Result<6>/F/X_LUT4  (
    .ADR0(\brg/contador [6]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<6>/F )
  );
  X_BUF   \rx_empty/OUTPUT/OFF/OMUX  (
    .I(\fifo_rx/empty_reg_1342 ),
    .O(\rx_empty/O )
  );
  X_BUF   \r_data<0>/OUTPUT/OFF/OMUX  (
    .I(r_data_0_OBUF_2974),
    .O(\r_data<0>/O )
  );
  X_BUF   \r_data<1>/OUTPUT/OFF/OMUX  (
    .I(r_data_1_OBUF_3034),
    .O(\r_data<1>/O )
  );
  X_BUF   \tx/OUTPUT/OFF/OMUX  (
    .I(\uart_tx/tx_reg_1363 ),
    .O(\tx/O )
  );
  X_BUF   \r_data<2>/OUTPUT/OFF/OMUX  (
    .I(r_data_2_OBUF_3082),
    .O(\r_data<2>/O )
  );
  X_BUF   \tx_full/OUTPUT/OFF/OMUX  (
    .I(\fifo_tx/full_reg_1334 ),
    .O(\tx_full/O )
  );
  X_BUF   \r_data<3>/OUTPUT/OFF/OMUX  (
    .I(r_data_3_OBUF_3154),
    .O(\r_data<3>/O )
  );
  X_BUF   \r_data<4>/OUTPUT/OFF/OMUX  (
    .I(r_data_4_OBUF_3202),
    .O(\r_data<4>/O )
  );
  X_BUF   \r_data<5>/OUTPUT/OFF/OMUX  (
    .I(r_data_5_OBUF_3250),
    .O(\r_data<5>/O )
  );
  X_BUF   \r_data<6>/OUTPUT/OFF/OMUX  (
    .I(r_data_6_OBUF_3298),
    .O(\r_data<6>/O )
  );
  X_BUF   \r_data<7>/OUTPUT/OFF/OMUX  (
    .I(r_data_7_OBUF_3381),
    .O(\r_data<7>/O )
  );
  X_ONE   NlwBlock_UART_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_UART_GND (
    .O(GND)
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

