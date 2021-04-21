//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Apr 21 19:51:42 2021
//Host        : donlon-lunarpc running 64-bit Manjaro Linux
//Command     : generate_target soc_top_wrapper.bd
//Design      : soc_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_top_wrapper
   (SPI_0_io0_io,
    SPI_0_io1_io,
    SPI_0_io2_io,
    SPI_0_io3_io,
    SPI_0_sck_io,
    SPI_0_ss_io,
    TCK,
    TDI,
    TDO,
    TMS,
    UART_rxd,
    UART_txd,
    clk_50MHz,
    ext_reset_n,
    gpio_tri_io);
  inout SPI_0_io0_io;
  inout SPI_0_io1_io;
  inout SPI_0_io2_io;
  inout SPI_0_io3_io;
  inout SPI_0_sck_io;
  inout [0:0]SPI_0_ss_io;
  input TCK;
  input TDI;
  inout TDO;
  input TMS;
  input UART_rxd;
  output UART_txd;
  input clk_50MHz;
  input ext_reset_n;
  inout [31:0]gpio_tri_io;

  wire SPI_0_io0_i;
  wire SPI_0_io0_io;
  wire SPI_0_io0_o;
  wire SPI_0_io0_t;
  wire SPI_0_io1_i;
  wire SPI_0_io1_io;
  wire SPI_0_io1_o;
  wire SPI_0_io1_t;
  wire SPI_0_io2_i;
  wire SPI_0_io2_io;
  wire SPI_0_io2_o;
  wire SPI_0_io2_t;
  wire SPI_0_io3_i;
  wire SPI_0_io3_io;
  wire SPI_0_io3_o;
  wire SPI_0_io3_t;
  wire SPI_0_sck_i;
  wire SPI_0_sck_io;
  wire SPI_0_sck_o;
  wire SPI_0_sck_t;
  wire [0:0]SPI_0_ss_i_0;
  wire [0:0]SPI_0_ss_io_0;
  wire [0:0]SPI_0_ss_o_0;
  wire SPI_0_ss_t;
  wire TCK;
  wire TDI;
  wire TDO;
  wire TMS;
  wire UART_rxd;
  wire UART_txd;
  wire clk_50MHz;
  wire ext_reset_n;
  wire [0:0]gpio_tri_i_0;
  wire [1:1]gpio_tri_i_1;
  wire [10:10]gpio_tri_i_10;
  wire [11:11]gpio_tri_i_11;
  wire [12:12]gpio_tri_i_12;
  wire [13:13]gpio_tri_i_13;
  wire [14:14]gpio_tri_i_14;
  wire [15:15]gpio_tri_i_15;
  wire [16:16]gpio_tri_i_16;
  wire [17:17]gpio_tri_i_17;
  wire [18:18]gpio_tri_i_18;
  wire [19:19]gpio_tri_i_19;
  wire [2:2]gpio_tri_i_2;
  wire [20:20]gpio_tri_i_20;
  wire [21:21]gpio_tri_i_21;
  wire [22:22]gpio_tri_i_22;
  wire [23:23]gpio_tri_i_23;
  wire [24:24]gpio_tri_i_24;
  wire [25:25]gpio_tri_i_25;
  wire [26:26]gpio_tri_i_26;
  wire [27:27]gpio_tri_i_27;
  wire [28:28]gpio_tri_i_28;
  wire [29:29]gpio_tri_i_29;
  wire [3:3]gpio_tri_i_3;
  wire [30:30]gpio_tri_i_30;
  wire [31:31]gpio_tri_i_31;
  wire [4:4]gpio_tri_i_4;
  wire [5:5]gpio_tri_i_5;
  wire [6:6]gpio_tri_i_6;
  wire [7:7]gpio_tri_i_7;
  wire [8:8]gpio_tri_i_8;
  wire [9:9]gpio_tri_i_9;
  wire [0:0]gpio_tri_io_0;
  wire [1:1]gpio_tri_io_1;
  wire [10:10]gpio_tri_io_10;
  wire [11:11]gpio_tri_io_11;
  wire [12:12]gpio_tri_io_12;
  wire [13:13]gpio_tri_io_13;
  wire [14:14]gpio_tri_io_14;
  wire [15:15]gpio_tri_io_15;
  wire [16:16]gpio_tri_io_16;
  wire [17:17]gpio_tri_io_17;
  wire [18:18]gpio_tri_io_18;
  wire [19:19]gpio_tri_io_19;
  wire [2:2]gpio_tri_io_2;
  wire [20:20]gpio_tri_io_20;
  wire [21:21]gpio_tri_io_21;
  wire [22:22]gpio_tri_io_22;
  wire [23:23]gpio_tri_io_23;
  wire [24:24]gpio_tri_io_24;
  wire [25:25]gpio_tri_io_25;
  wire [26:26]gpio_tri_io_26;
  wire [27:27]gpio_tri_io_27;
  wire [28:28]gpio_tri_io_28;
  wire [29:29]gpio_tri_io_29;
  wire [3:3]gpio_tri_io_3;
  wire [30:30]gpio_tri_io_30;
  wire [31:31]gpio_tri_io_31;
  wire [4:4]gpio_tri_io_4;
  wire [5:5]gpio_tri_io_5;
  wire [6:6]gpio_tri_io_6;
  wire [7:7]gpio_tri_io_7;
  wire [8:8]gpio_tri_io_8;
  wire [9:9]gpio_tri_io_9;
  wire [0:0]gpio_tri_o_0;
  wire [1:1]gpio_tri_o_1;
  wire [10:10]gpio_tri_o_10;
  wire [11:11]gpio_tri_o_11;
  wire [12:12]gpio_tri_o_12;
  wire [13:13]gpio_tri_o_13;
  wire [14:14]gpio_tri_o_14;
  wire [15:15]gpio_tri_o_15;
  wire [16:16]gpio_tri_o_16;
  wire [17:17]gpio_tri_o_17;
  wire [18:18]gpio_tri_o_18;
  wire [19:19]gpio_tri_o_19;
  wire [2:2]gpio_tri_o_2;
  wire [20:20]gpio_tri_o_20;
  wire [21:21]gpio_tri_o_21;
  wire [22:22]gpio_tri_o_22;
  wire [23:23]gpio_tri_o_23;
  wire [24:24]gpio_tri_o_24;
  wire [25:25]gpio_tri_o_25;
  wire [26:26]gpio_tri_o_26;
  wire [27:27]gpio_tri_o_27;
  wire [28:28]gpio_tri_o_28;
  wire [29:29]gpio_tri_o_29;
  wire [3:3]gpio_tri_o_3;
  wire [30:30]gpio_tri_o_30;
  wire [31:31]gpio_tri_o_31;
  wire [4:4]gpio_tri_o_4;
  wire [5:5]gpio_tri_o_5;
  wire [6:6]gpio_tri_o_6;
  wire [7:7]gpio_tri_o_7;
  wire [8:8]gpio_tri_o_8;
  wire [9:9]gpio_tri_o_9;
  wire [0:0]gpio_tri_t_0;
  wire [1:1]gpio_tri_t_1;
  wire [10:10]gpio_tri_t_10;
  wire [11:11]gpio_tri_t_11;
  wire [12:12]gpio_tri_t_12;
  wire [13:13]gpio_tri_t_13;
  wire [14:14]gpio_tri_t_14;
  wire [15:15]gpio_tri_t_15;
  wire [16:16]gpio_tri_t_16;
  wire [17:17]gpio_tri_t_17;
  wire [18:18]gpio_tri_t_18;
  wire [19:19]gpio_tri_t_19;
  wire [2:2]gpio_tri_t_2;
  wire [20:20]gpio_tri_t_20;
  wire [21:21]gpio_tri_t_21;
  wire [22:22]gpio_tri_t_22;
  wire [23:23]gpio_tri_t_23;
  wire [24:24]gpio_tri_t_24;
  wire [25:25]gpio_tri_t_25;
  wire [26:26]gpio_tri_t_26;
  wire [27:27]gpio_tri_t_27;
  wire [28:28]gpio_tri_t_28;
  wire [29:29]gpio_tri_t_29;
  wire [3:3]gpio_tri_t_3;
  wire [30:30]gpio_tri_t_30;
  wire [31:31]gpio_tri_t_31;
  wire [4:4]gpio_tri_t_4;
  wire [5:5]gpio_tri_t_5;
  wire [6:6]gpio_tri_t_6;
  wire [7:7]gpio_tri_t_7;
  wire [8:8]gpio_tri_t_8;
  wire [9:9]gpio_tri_t_9;

  IOBUF SPI_0_io0_iobuf
       (.I(SPI_0_io0_o),
        .IO(SPI_0_io0_io),
        .O(SPI_0_io0_i),
        .T(SPI_0_io0_t));
  IOBUF SPI_0_io1_iobuf
       (.I(SPI_0_io1_o),
        .IO(SPI_0_io1_io),
        .O(SPI_0_io1_i),
        .T(SPI_0_io1_t));
  IOBUF SPI_0_io2_iobuf
       (.I(SPI_0_io2_o),
        .IO(SPI_0_io2_io),
        .O(SPI_0_io2_i),
        .T(SPI_0_io2_t));
  IOBUF SPI_0_io3_iobuf
       (.I(SPI_0_io3_o),
        .IO(SPI_0_io3_io),
        .O(SPI_0_io3_i),
        .T(SPI_0_io3_t));
  IOBUF SPI_0_sck_iobuf
       (.I(SPI_0_sck_o),
        .IO(SPI_0_sck_io),
        .O(SPI_0_sck_i),
        .T(SPI_0_sck_t));
  IOBUF SPI_0_ss_iobuf_0
       (.I(SPI_0_ss_o_0),
        .IO(SPI_0_ss_io[0]),
        .O(SPI_0_ss_i_0),
        .T(SPI_0_ss_t));
  IOBUF gpio_tri_iobuf_0
       (.I(gpio_tri_o_0),
        .IO(gpio_tri_io[0]),
        .O(gpio_tri_i_0),
        .T(gpio_tri_t_0));
  IOBUF gpio_tri_iobuf_1
       (.I(gpio_tri_o_1),
        .IO(gpio_tri_io[1]),
        .O(gpio_tri_i_1),
        .T(gpio_tri_t_1));
  IOBUF gpio_tri_iobuf_10
       (.I(gpio_tri_o_10),
        .IO(gpio_tri_io[10]),
        .O(gpio_tri_i_10),
        .T(gpio_tri_t_10));
  IOBUF gpio_tri_iobuf_11
       (.I(gpio_tri_o_11),
        .IO(gpio_tri_io[11]),
        .O(gpio_tri_i_11),
        .T(gpio_tri_t_11));
  IOBUF gpio_tri_iobuf_12
       (.I(gpio_tri_o_12),
        .IO(gpio_tri_io[12]),
        .O(gpio_tri_i_12),
        .T(gpio_tri_t_12));
  IOBUF gpio_tri_iobuf_13
       (.I(gpio_tri_o_13),
        .IO(gpio_tri_io[13]),
        .O(gpio_tri_i_13),
        .T(gpio_tri_t_13));
  IOBUF gpio_tri_iobuf_14
       (.I(gpio_tri_o_14),
        .IO(gpio_tri_io[14]),
        .O(gpio_tri_i_14),
        .T(gpio_tri_t_14));
  IOBUF gpio_tri_iobuf_15
       (.I(gpio_tri_o_15),
        .IO(gpio_tri_io[15]),
        .O(gpio_tri_i_15),
        .T(gpio_tri_t_15));
  IOBUF gpio_tri_iobuf_16
       (.I(gpio_tri_o_16),
        .IO(gpio_tri_io[16]),
        .O(gpio_tri_i_16),
        .T(gpio_tri_t_16));
  IOBUF gpio_tri_iobuf_17
       (.I(gpio_tri_o_17),
        .IO(gpio_tri_io[17]),
        .O(gpio_tri_i_17),
        .T(gpio_tri_t_17));
  IOBUF gpio_tri_iobuf_18
       (.I(gpio_tri_o_18),
        .IO(gpio_tri_io[18]),
        .O(gpio_tri_i_18),
        .T(gpio_tri_t_18));
  IOBUF gpio_tri_iobuf_19
       (.I(gpio_tri_o_19),
        .IO(gpio_tri_io[19]),
        .O(gpio_tri_i_19),
        .T(gpio_tri_t_19));
  IOBUF gpio_tri_iobuf_2
       (.I(gpio_tri_o_2),
        .IO(gpio_tri_io[2]),
        .O(gpio_tri_i_2),
        .T(gpio_tri_t_2));
  IOBUF gpio_tri_iobuf_20
       (.I(gpio_tri_o_20),
        .IO(gpio_tri_io[20]),
        .O(gpio_tri_i_20),
        .T(gpio_tri_t_20));
  IOBUF gpio_tri_iobuf_21
       (.I(gpio_tri_o_21),
        .IO(gpio_tri_io[21]),
        .O(gpio_tri_i_21),
        .T(gpio_tri_t_21));
  IOBUF gpio_tri_iobuf_22
       (.I(gpio_tri_o_22),
        .IO(gpio_tri_io[22]),
        .O(gpio_tri_i_22),
        .T(gpio_tri_t_22));
  IOBUF gpio_tri_iobuf_23
       (.I(gpio_tri_o_23),
        .IO(gpio_tri_io[23]),
        .O(gpio_tri_i_23),
        .T(gpio_tri_t_23));
  IOBUF gpio_tri_iobuf_24
       (.I(gpio_tri_o_24),
        .IO(gpio_tri_io[24]),
        .O(gpio_tri_i_24),
        .T(gpio_tri_t_24));
  IOBUF gpio_tri_iobuf_25
       (.I(gpio_tri_o_25),
        .IO(gpio_tri_io[25]),
        .O(gpio_tri_i_25),
        .T(gpio_tri_t_25));
  IOBUF gpio_tri_iobuf_26
       (.I(gpio_tri_o_26),
        .IO(gpio_tri_io[26]),
        .O(gpio_tri_i_26),
        .T(gpio_tri_t_26));
  IOBUF gpio_tri_iobuf_27
       (.I(gpio_tri_o_27),
        .IO(gpio_tri_io[27]),
        .O(gpio_tri_i_27),
        .T(gpio_tri_t_27));
  IOBUF gpio_tri_iobuf_28
       (.I(gpio_tri_o_28),
        .IO(gpio_tri_io[28]),
        .O(gpio_tri_i_28),
        .T(gpio_tri_t_28));
  IOBUF gpio_tri_iobuf_29
       (.I(gpio_tri_o_29),
        .IO(gpio_tri_io[29]),
        .O(gpio_tri_i_29),
        .T(gpio_tri_t_29));
  IOBUF gpio_tri_iobuf_3
       (.I(gpio_tri_o_3),
        .IO(gpio_tri_io[3]),
        .O(gpio_tri_i_3),
        .T(gpio_tri_t_3));
  IOBUF gpio_tri_iobuf_30
       (.I(gpio_tri_o_30),
        .IO(gpio_tri_io[30]),
        .O(gpio_tri_i_30),
        .T(gpio_tri_t_30));
  IOBUF gpio_tri_iobuf_31
       (.I(gpio_tri_o_31),
        .IO(gpio_tri_io[31]),
        .O(gpio_tri_i_31),
        .T(gpio_tri_t_31));
  IOBUF gpio_tri_iobuf_4
       (.I(gpio_tri_o_4),
        .IO(gpio_tri_io[4]),
        .O(gpio_tri_i_4),
        .T(gpio_tri_t_4));
  IOBUF gpio_tri_iobuf_5
       (.I(gpio_tri_o_5),
        .IO(gpio_tri_io[5]),
        .O(gpio_tri_i_5),
        .T(gpio_tri_t_5));
  IOBUF gpio_tri_iobuf_6
       (.I(gpio_tri_o_6),
        .IO(gpio_tri_io[6]),
        .O(gpio_tri_i_6),
        .T(gpio_tri_t_6));
  IOBUF gpio_tri_iobuf_7
       (.I(gpio_tri_o_7),
        .IO(gpio_tri_io[7]),
        .O(gpio_tri_i_7),
        .T(gpio_tri_t_7));
  IOBUF gpio_tri_iobuf_8
       (.I(gpio_tri_o_8),
        .IO(gpio_tri_io[8]),
        .O(gpio_tri_i_8),
        .T(gpio_tri_t_8));
  IOBUF gpio_tri_iobuf_9
       (.I(gpio_tri_o_9),
        .IO(gpio_tri_io[9]),
        .O(gpio_tri_i_9),
        .T(gpio_tri_t_9));
  soc_top soc_top_i
       (.SPI_0_io0_i(SPI_0_io0_i),
        .SPI_0_io0_o(SPI_0_io0_o),
        .SPI_0_io0_t(SPI_0_io0_t),
        .SPI_0_io1_i(SPI_0_io1_i),
        .SPI_0_io1_o(SPI_0_io1_o),
        .SPI_0_io1_t(SPI_0_io1_t),
        .SPI_0_io2_i(SPI_0_io2_i),
        .SPI_0_io2_o(SPI_0_io2_o),
        .SPI_0_io2_t(SPI_0_io2_t),
        .SPI_0_io3_i(SPI_0_io3_i),
        .SPI_0_io3_o(SPI_0_io3_o),
        .SPI_0_io3_t(SPI_0_io3_t),
        .SPI_0_sck_i(SPI_0_sck_i),
        .SPI_0_sck_o(SPI_0_sck_o),
        .SPI_0_sck_t(SPI_0_sck_t),
        .SPI_0_ss_i(SPI_0_ss_i_0),
        .SPI_0_ss_o(SPI_0_ss_o_0),
        .SPI_0_ss_t(SPI_0_ss_t),
        .TCK(TCK),
        .TDI(TDI),
        .TDO(TDO),
        .TMS(TMS),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .clk_50MHz(clk_50MHz),
        .ext_reset_n(ext_reset_n),
        .gpio_tri_i({gpio_tri_i_31,gpio_tri_i_30,gpio_tri_i_29,gpio_tri_i_28,gpio_tri_i_27,gpio_tri_i_26,gpio_tri_i_25,gpio_tri_i_24,gpio_tri_i_23,gpio_tri_i_22,gpio_tri_i_21,gpio_tri_i_20,gpio_tri_i_19,gpio_tri_i_18,gpio_tri_i_17,gpio_tri_i_16,gpio_tri_i_15,gpio_tri_i_14,gpio_tri_i_13,gpio_tri_i_12,gpio_tri_i_11,gpio_tri_i_10,gpio_tri_i_9,gpio_tri_i_8,gpio_tri_i_7,gpio_tri_i_6,gpio_tri_i_5,gpio_tri_i_4,gpio_tri_i_3,gpio_tri_i_2,gpio_tri_i_1,gpio_tri_i_0}),
        .gpio_tri_o({gpio_tri_o_31,gpio_tri_o_30,gpio_tri_o_29,gpio_tri_o_28,gpio_tri_o_27,gpio_tri_o_26,gpio_tri_o_25,gpio_tri_o_24,gpio_tri_o_23,gpio_tri_o_22,gpio_tri_o_21,gpio_tri_o_20,gpio_tri_o_19,gpio_tri_o_18,gpio_tri_o_17,gpio_tri_o_16,gpio_tri_o_15,gpio_tri_o_14,gpio_tri_o_13,gpio_tri_o_12,gpio_tri_o_11,gpio_tri_o_10,gpio_tri_o_9,gpio_tri_o_8,gpio_tri_o_7,gpio_tri_o_6,gpio_tri_o_5,gpio_tri_o_4,gpio_tri_o_3,gpio_tri_o_2,gpio_tri_o_1,gpio_tri_o_0}),
        .gpio_tri_t({gpio_tri_t_31,gpio_tri_t_30,gpio_tri_t_29,gpio_tri_t_28,gpio_tri_t_27,gpio_tri_t_26,gpio_tri_t_25,gpio_tri_t_24,gpio_tri_t_23,gpio_tri_t_22,gpio_tri_t_21,gpio_tri_t_20,gpio_tri_t_19,gpio_tri_t_18,gpio_tri_t_17,gpio_tri_t_16,gpio_tri_t_15,gpio_tri_t_14,gpio_tri_t_13,gpio_tri_t_12,gpio_tri_t_11,gpio_tri_t_10,gpio_tri_t_9,gpio_tri_t_8,gpio_tri_t_7,gpio_tri_t_6,gpio_tri_t_5,gpio_tri_t_4,gpio_tri_t_3,gpio_tri_t_2,gpio_tri_t_1,gpio_tri_t_0}));
endmodule
