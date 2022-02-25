// Verilog netlist created by TD v5.0.30786
// Wed Feb 23 21:29:19 2022

`timescale 1ns / 1ps
module DRAM  // DRAM.v(14)
  (
  di,
  raddr,
  waddr,
  wclk,
  we,
  do
  );

  input [9:0] di;  // DRAM.v(23)
  input [7:0] raddr;  // DRAM.v(25)
  input [7:0] waddr;  // DRAM.v(24)
  input wclk;  // DRAM.v(26)
  input we;  // DRAM.v(26)
  output [9:0] do;  // DRAM.v(28)

  parameter ADDR_WIDTH_R = 8;
  parameter ADDR_WIDTH_W = 8;
  parameter DATA_DEPTH_R = 256;
  parameter DATA_DEPTH_W = 256;
  parameter DATA_WIDTH_R = 10;
  parameter DATA_WIDTH_W = 10;
  wire  \dram_do_mux_b0/B0_0 ;
  wire  \dram_do_mux_b0/B0_1 ;
  wire  \dram_do_mux_b0/B0_2 ;
  wire  \dram_do_mux_b0/B0_3 ;
  wire  \dram_do_mux_b0/B0_4 ;
  wire  \dram_do_mux_b0/B0_5 ;
  wire  \dram_do_mux_b0/B0_6 ;
  wire  \dram_do_mux_b0/B0_7 ;
  wire  \dram_do_mux_b0/B1_0 ;
  wire  \dram_do_mux_b0/B1_1 ;
  wire  \dram_do_mux_b0/B1_2 ;
  wire  \dram_do_mux_b0/B1_3 ;
  wire  \dram_do_mux_b0/B2_0 ;
  wire  \dram_do_mux_b0/B2_1 ;
  wire  \dram_do_mux_b1/B0_0 ;
  wire  \dram_do_mux_b1/B0_1 ;
  wire  \dram_do_mux_b1/B0_2 ;
  wire  \dram_do_mux_b1/B0_3 ;
  wire  \dram_do_mux_b1/B0_4 ;
  wire  \dram_do_mux_b1/B0_5 ;
  wire  \dram_do_mux_b1/B0_6 ;
  wire  \dram_do_mux_b1/B0_7 ;
  wire  \dram_do_mux_b1/B1_0 ;
  wire  \dram_do_mux_b1/B1_1 ;
  wire  \dram_do_mux_b1/B1_2 ;
  wire  \dram_do_mux_b1/B1_3 ;
  wire  \dram_do_mux_b1/B2_0 ;
  wire  \dram_do_mux_b1/B2_1 ;
  wire  \dram_do_mux_b2/B0_0 ;
  wire  \dram_do_mux_b2/B0_1 ;
  wire  \dram_do_mux_b2/B0_2 ;
  wire  \dram_do_mux_b2/B0_3 ;
  wire  \dram_do_mux_b2/B0_4 ;
  wire  \dram_do_mux_b2/B0_5 ;
  wire  \dram_do_mux_b2/B0_6 ;
  wire  \dram_do_mux_b2/B0_7 ;
  wire  \dram_do_mux_b2/B1_0 ;
  wire  \dram_do_mux_b2/B1_1 ;
  wire  \dram_do_mux_b2/B1_2 ;
  wire  \dram_do_mux_b2/B1_3 ;
  wire  \dram_do_mux_b2/B2_0 ;
  wire  \dram_do_mux_b2/B2_1 ;
  wire  \dram_do_mux_b3/B0_0 ;
  wire  \dram_do_mux_b3/B0_1 ;
  wire  \dram_do_mux_b3/B0_2 ;
  wire  \dram_do_mux_b3/B0_3 ;
  wire  \dram_do_mux_b3/B0_4 ;
  wire  \dram_do_mux_b3/B0_5 ;
  wire  \dram_do_mux_b3/B0_6 ;
  wire  \dram_do_mux_b3/B0_7 ;
  wire  \dram_do_mux_b3/B1_0 ;
  wire  \dram_do_mux_b3/B1_1 ;
  wire  \dram_do_mux_b3/B1_2 ;
  wire  \dram_do_mux_b3/B1_3 ;
  wire  \dram_do_mux_b3/B2_0 ;
  wire  \dram_do_mux_b3/B2_1 ;
  wire  \dram_do_mux_b4/B0_0 ;
  wire  \dram_do_mux_b4/B0_1 ;
  wire  \dram_do_mux_b4/B0_2 ;
  wire  \dram_do_mux_b4/B0_3 ;
  wire  \dram_do_mux_b4/B0_4 ;
  wire  \dram_do_mux_b4/B0_5 ;
  wire  \dram_do_mux_b4/B0_6 ;
  wire  \dram_do_mux_b4/B0_7 ;
  wire  \dram_do_mux_b4/B1_0 ;
  wire  \dram_do_mux_b4/B1_1 ;
  wire  \dram_do_mux_b4/B1_2 ;
  wire  \dram_do_mux_b4/B1_3 ;
  wire  \dram_do_mux_b4/B2_0 ;
  wire  \dram_do_mux_b4/B2_1 ;
  wire  \dram_do_mux_b5/B0_0 ;
  wire  \dram_do_mux_b5/B0_1 ;
  wire  \dram_do_mux_b5/B0_2 ;
  wire  \dram_do_mux_b5/B0_3 ;
  wire  \dram_do_mux_b5/B0_4 ;
  wire  \dram_do_mux_b5/B0_5 ;
  wire  \dram_do_mux_b5/B0_6 ;
  wire  \dram_do_mux_b5/B0_7 ;
  wire  \dram_do_mux_b5/B1_0 ;
  wire  \dram_do_mux_b5/B1_1 ;
  wire  \dram_do_mux_b5/B1_2 ;
  wire  \dram_do_mux_b5/B1_3 ;
  wire  \dram_do_mux_b5/B2_0 ;
  wire  \dram_do_mux_b5/B2_1 ;
  wire  \dram_do_mux_b6/B0_0 ;
  wire  \dram_do_mux_b6/B0_1 ;
  wire  \dram_do_mux_b6/B0_2 ;
  wire  \dram_do_mux_b6/B0_3 ;
  wire  \dram_do_mux_b6/B0_4 ;
  wire  \dram_do_mux_b6/B0_5 ;
  wire  \dram_do_mux_b6/B0_6 ;
  wire  \dram_do_mux_b6/B0_7 ;
  wire  \dram_do_mux_b6/B1_0 ;
  wire  \dram_do_mux_b6/B1_1 ;
  wire  \dram_do_mux_b6/B1_2 ;
  wire  \dram_do_mux_b6/B1_3 ;
  wire  \dram_do_mux_b6/B2_0 ;
  wire  \dram_do_mux_b6/B2_1 ;
  wire  \dram_do_mux_b7/B0_0 ;
  wire  \dram_do_mux_b7/B0_1 ;
  wire  \dram_do_mux_b7/B0_2 ;
  wire  \dram_do_mux_b7/B0_3 ;
  wire  \dram_do_mux_b7/B0_4 ;
  wire  \dram_do_mux_b7/B0_5 ;
  wire  \dram_do_mux_b7/B0_6 ;
  wire  \dram_do_mux_b7/B0_7 ;
  wire  \dram_do_mux_b7/B1_0 ;
  wire  \dram_do_mux_b7/B1_1 ;
  wire  \dram_do_mux_b7/B1_2 ;
  wire  \dram_do_mux_b7/B1_3 ;
  wire  \dram_do_mux_b7/B2_0 ;
  wire  \dram_do_mux_b7/B2_1 ;
  wire  \dram_do_mux_b8/B0_0 ;
  wire  \dram_do_mux_b8/B0_1 ;
  wire  \dram_do_mux_b8/B0_2 ;
  wire  \dram_do_mux_b8/B0_3 ;
  wire  \dram_do_mux_b8/B0_4 ;
  wire  \dram_do_mux_b8/B0_5 ;
  wire  \dram_do_mux_b8/B0_6 ;
  wire  \dram_do_mux_b8/B0_7 ;
  wire  \dram_do_mux_b8/B1_0 ;
  wire  \dram_do_mux_b8/B1_1 ;
  wire  \dram_do_mux_b8/B1_2 ;
  wire  \dram_do_mux_b8/B1_3 ;
  wire  \dram_do_mux_b8/B2_0 ;
  wire  \dram_do_mux_b8/B2_1 ;
  wire  \dram_do_mux_b9/B0_0 ;
  wire  \dram_do_mux_b9/B0_1 ;
  wire  \dram_do_mux_b9/B0_2 ;
  wire  \dram_do_mux_b9/B0_3 ;
  wire  \dram_do_mux_b9/B0_4 ;
  wire  \dram_do_mux_b9/B0_5 ;
  wire  \dram_do_mux_b9/B0_6 ;
  wire  \dram_do_mux_b9/B0_7 ;
  wire  \dram_do_mux_b9/B1_0 ;
  wire  \dram_do_mux_b9/B1_1 ;
  wire  \dram_do_mux_b9/B1_2 ;
  wire  \dram_do_mux_b9/B1_3 ;
  wire  \dram_do_mux_b9/B2_0 ;
  wire  \dram_do_mux_b9/B2_1 ;
  wire dram_do_i0_000;
  wire dram_do_i0_001;
  wire dram_do_i0_002;
  wire dram_do_i0_003;
  wire dram_do_i0_004;
  wire dram_do_i0_005;
  wire dram_do_i0_006;
  wire dram_do_i0_007;
  wire dram_do_i0_008;
  wire dram_do_i0_009;
  wire dram_do_i10_000;
  wire dram_do_i10_001;
  wire dram_do_i10_002;
  wire dram_do_i10_003;
  wire dram_do_i10_004;
  wire dram_do_i10_005;
  wire dram_do_i10_006;
  wire dram_do_i10_007;
  wire dram_do_i10_008;
  wire dram_do_i10_009;
  wire dram_do_i11_000;
  wire dram_do_i11_001;
  wire dram_do_i11_002;
  wire dram_do_i11_003;
  wire dram_do_i11_004;
  wire dram_do_i11_005;
  wire dram_do_i11_006;
  wire dram_do_i11_007;
  wire dram_do_i11_008;
  wire dram_do_i11_009;
  wire dram_do_i12_000;
  wire dram_do_i12_001;
  wire dram_do_i12_002;
  wire dram_do_i12_003;
  wire dram_do_i12_004;
  wire dram_do_i12_005;
  wire dram_do_i12_006;
  wire dram_do_i12_007;
  wire dram_do_i12_008;
  wire dram_do_i12_009;
  wire dram_do_i13_000;
  wire dram_do_i13_001;
  wire dram_do_i13_002;
  wire dram_do_i13_003;
  wire dram_do_i13_004;
  wire dram_do_i13_005;
  wire dram_do_i13_006;
  wire dram_do_i13_007;
  wire dram_do_i13_008;
  wire dram_do_i13_009;
  wire dram_do_i14_000;
  wire dram_do_i14_001;
  wire dram_do_i14_002;
  wire dram_do_i14_003;
  wire dram_do_i14_004;
  wire dram_do_i14_005;
  wire dram_do_i14_006;
  wire dram_do_i14_007;
  wire dram_do_i14_008;
  wire dram_do_i14_009;
  wire dram_do_i15_000;
  wire dram_do_i15_001;
  wire dram_do_i15_002;
  wire dram_do_i15_003;
  wire dram_do_i15_004;
  wire dram_do_i15_005;
  wire dram_do_i15_006;
  wire dram_do_i15_007;
  wire dram_do_i15_008;
  wire dram_do_i15_009;
  wire dram_do_i1_000;
  wire dram_do_i1_001;
  wire dram_do_i1_002;
  wire dram_do_i1_003;
  wire dram_do_i1_004;
  wire dram_do_i1_005;
  wire dram_do_i1_006;
  wire dram_do_i1_007;
  wire dram_do_i1_008;
  wire dram_do_i1_009;
  wire dram_do_i2_000;
  wire dram_do_i2_001;
  wire dram_do_i2_002;
  wire dram_do_i2_003;
  wire dram_do_i2_004;
  wire dram_do_i2_005;
  wire dram_do_i2_006;
  wire dram_do_i2_007;
  wire dram_do_i2_008;
  wire dram_do_i2_009;
  wire dram_do_i3_000;
  wire dram_do_i3_001;
  wire dram_do_i3_002;
  wire dram_do_i3_003;
  wire dram_do_i3_004;
  wire dram_do_i3_005;
  wire dram_do_i3_006;
  wire dram_do_i3_007;
  wire dram_do_i3_008;
  wire dram_do_i3_009;
  wire dram_do_i4_000;
  wire dram_do_i4_001;
  wire dram_do_i4_002;
  wire dram_do_i4_003;
  wire dram_do_i4_004;
  wire dram_do_i4_005;
  wire dram_do_i4_006;
  wire dram_do_i4_007;
  wire dram_do_i4_008;
  wire dram_do_i4_009;
  wire dram_do_i5_000;
  wire dram_do_i5_001;
  wire dram_do_i5_002;
  wire dram_do_i5_003;
  wire dram_do_i5_004;
  wire dram_do_i5_005;
  wire dram_do_i5_006;
  wire dram_do_i5_007;
  wire dram_do_i5_008;
  wire dram_do_i5_009;
  wire dram_do_i6_000;
  wire dram_do_i6_001;
  wire dram_do_i6_002;
  wire dram_do_i6_003;
  wire dram_do_i6_004;
  wire dram_do_i6_005;
  wire dram_do_i6_006;
  wire dram_do_i6_007;
  wire dram_do_i6_008;
  wire dram_do_i6_009;
  wire dram_do_i7_000;
  wire dram_do_i7_001;
  wire dram_do_i7_002;
  wire dram_do_i7_003;
  wire dram_do_i7_004;
  wire dram_do_i7_005;
  wire dram_do_i7_006;
  wire dram_do_i7_007;
  wire dram_do_i7_008;
  wire dram_do_i7_009;
  wire dram_do_i8_000;
  wire dram_do_i8_001;
  wire dram_do_i8_002;
  wire dram_do_i8_003;
  wire dram_do_i8_004;
  wire dram_do_i8_005;
  wire dram_do_i8_006;
  wire dram_do_i8_007;
  wire dram_do_i8_008;
  wire dram_do_i8_009;
  wire dram_do_i9_000;
  wire dram_do_i9_001;
  wire dram_do_i9_002;
  wire dram_do_i9_003;
  wire dram_do_i9_004;
  wire dram_do_i9_005;
  wire dram_do_i9_006;
  wire dram_do_i9_007;
  wire dram_do_i9_008;
  wire dram_do_i9_009;
  wire \waddr[4]_neg ;
  wire \waddr[5]_neg ;
  wire \waddr[6]_neg ;
  wire \waddr[7]_neg ;
  wire we_0;
  wire we_0_0;
  wire we_0_0_0;
  wire we_0_0_0_0;
  wire we_0_0_0_1;
  wire we_0_0_1;
  wire we_0_0_1_0;
  wire we_0_0_1_1;
  wire we_0_1;
  wire we_0_1_0;
  wire we_0_1_0_0;
  wire we_0_1_0_1;
  wire we_0_1_1;
  wire we_0_1_1_0;
  wire we_0_1_1_1;
  wire we_1;
  wire we_1_0;
  wire we_1_0_0;
  wire we_1_0_0_0;
  wire we_1_0_0_1;
  wire we_1_0_1;
  wire we_1_0_1_0;
  wire we_1_0_1_1;
  wire we_1_1;
  wire we_1_1_0;
  wire we_1_1_0_0;
  wire we_1_1_0_1;
  wire we_1_1_1;
  wire we_1_1_1_0;
  wire we_1_1_1_1;

  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_0  (
    .i0(dram_do_i0_000),
    .i1(dram_do_i1_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_0 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_1  (
    .i0(dram_do_i2_000),
    .i1(dram_do_i3_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_1 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_2  (
    .i0(dram_do_i4_000),
    .i1(dram_do_i5_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_2 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_3  (
    .i0(dram_do_i6_000),
    .i1(dram_do_i7_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_3 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_4  (
    .i0(dram_do_i8_000),
    .i1(dram_do_i9_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_4 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_5  (
    .i0(dram_do_i10_000),
    .i1(dram_do_i11_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_5 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_6  (
    .i0(dram_do_i12_000),
    .i1(dram_do_i13_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_6 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_0_7  (
    .i0(dram_do_i14_000),
    .i1(dram_do_i15_000),
    .sel(raddr[4]),
    .o(\dram_do_mux_b0/B0_7 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b0/B0_0 ),
    .i1(\dram_do_mux_b0/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b0/B1_0 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b0/B0_2 ),
    .i1(\dram_do_mux_b0/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b0/B1_1 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b0/B0_4 ),
    .i1(\dram_do_mux_b0/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b0/B1_2 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b0/B0_6 ),
    .i1(\dram_do_mux_b0/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b0/B1_3 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b0/B1_0 ),
    .i1(\dram_do_mux_b0/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b0/B2_0 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b0/B1_2 ),
    .i1(\dram_do_mux_b0/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b0/B2_1 ));
  AL_MUX \dram_do_mux_b0/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b0/B2_0 ),
    .i1(\dram_do_mux_b0/B2_1 ),
    .sel(raddr[7]),
    .o(do[0]));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_0  (
    .i0(dram_do_i0_001),
    .i1(dram_do_i1_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_0 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_1  (
    .i0(dram_do_i2_001),
    .i1(dram_do_i3_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_1 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_2  (
    .i0(dram_do_i4_001),
    .i1(dram_do_i5_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_2 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_3  (
    .i0(dram_do_i6_001),
    .i1(dram_do_i7_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_3 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_4  (
    .i0(dram_do_i8_001),
    .i1(dram_do_i9_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_4 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_5  (
    .i0(dram_do_i10_001),
    .i1(dram_do_i11_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_5 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_6  (
    .i0(dram_do_i12_001),
    .i1(dram_do_i13_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_6 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_0_7  (
    .i0(dram_do_i14_001),
    .i1(dram_do_i15_001),
    .sel(raddr[4]),
    .o(\dram_do_mux_b1/B0_7 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b1/B0_0 ),
    .i1(\dram_do_mux_b1/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b1/B1_0 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b1/B0_2 ),
    .i1(\dram_do_mux_b1/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b1/B1_1 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b1/B0_4 ),
    .i1(\dram_do_mux_b1/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b1/B1_2 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b1/B0_6 ),
    .i1(\dram_do_mux_b1/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b1/B1_3 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b1/B1_0 ),
    .i1(\dram_do_mux_b1/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b1/B2_0 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b1/B1_2 ),
    .i1(\dram_do_mux_b1/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b1/B2_1 ));
  AL_MUX \dram_do_mux_b1/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b1/B2_0 ),
    .i1(\dram_do_mux_b1/B2_1 ),
    .sel(raddr[7]),
    .o(do[1]));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_0  (
    .i0(dram_do_i0_002),
    .i1(dram_do_i1_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_0 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_1  (
    .i0(dram_do_i2_002),
    .i1(dram_do_i3_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_1 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_2  (
    .i0(dram_do_i4_002),
    .i1(dram_do_i5_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_2 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_3  (
    .i0(dram_do_i6_002),
    .i1(dram_do_i7_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_3 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_4  (
    .i0(dram_do_i8_002),
    .i1(dram_do_i9_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_4 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_5  (
    .i0(dram_do_i10_002),
    .i1(dram_do_i11_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_5 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_6  (
    .i0(dram_do_i12_002),
    .i1(dram_do_i13_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_6 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_0_7  (
    .i0(dram_do_i14_002),
    .i1(dram_do_i15_002),
    .sel(raddr[4]),
    .o(\dram_do_mux_b2/B0_7 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b2/B0_0 ),
    .i1(\dram_do_mux_b2/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b2/B1_0 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b2/B0_2 ),
    .i1(\dram_do_mux_b2/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b2/B1_1 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b2/B0_4 ),
    .i1(\dram_do_mux_b2/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b2/B1_2 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b2/B0_6 ),
    .i1(\dram_do_mux_b2/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b2/B1_3 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b2/B1_0 ),
    .i1(\dram_do_mux_b2/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b2/B2_0 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b2/B1_2 ),
    .i1(\dram_do_mux_b2/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b2/B2_1 ));
  AL_MUX \dram_do_mux_b2/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b2/B2_0 ),
    .i1(\dram_do_mux_b2/B2_1 ),
    .sel(raddr[7]),
    .o(do[2]));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_0  (
    .i0(dram_do_i0_003),
    .i1(dram_do_i1_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_0 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_1  (
    .i0(dram_do_i2_003),
    .i1(dram_do_i3_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_1 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_2  (
    .i0(dram_do_i4_003),
    .i1(dram_do_i5_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_2 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_3  (
    .i0(dram_do_i6_003),
    .i1(dram_do_i7_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_3 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_4  (
    .i0(dram_do_i8_003),
    .i1(dram_do_i9_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_4 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_5  (
    .i0(dram_do_i10_003),
    .i1(dram_do_i11_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_5 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_6  (
    .i0(dram_do_i12_003),
    .i1(dram_do_i13_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_6 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_0_7  (
    .i0(dram_do_i14_003),
    .i1(dram_do_i15_003),
    .sel(raddr[4]),
    .o(\dram_do_mux_b3/B0_7 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b3/B0_0 ),
    .i1(\dram_do_mux_b3/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b3/B1_0 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b3/B0_2 ),
    .i1(\dram_do_mux_b3/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b3/B1_1 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b3/B0_4 ),
    .i1(\dram_do_mux_b3/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b3/B1_2 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b3/B0_6 ),
    .i1(\dram_do_mux_b3/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b3/B1_3 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b3/B1_0 ),
    .i1(\dram_do_mux_b3/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b3/B2_0 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b3/B1_2 ),
    .i1(\dram_do_mux_b3/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b3/B2_1 ));
  AL_MUX \dram_do_mux_b3/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b3/B2_0 ),
    .i1(\dram_do_mux_b3/B2_1 ),
    .sel(raddr[7]),
    .o(do[3]));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_0  (
    .i0(dram_do_i0_004),
    .i1(dram_do_i1_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_0 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_1  (
    .i0(dram_do_i2_004),
    .i1(dram_do_i3_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_1 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_2  (
    .i0(dram_do_i4_004),
    .i1(dram_do_i5_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_2 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_3  (
    .i0(dram_do_i6_004),
    .i1(dram_do_i7_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_3 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_4  (
    .i0(dram_do_i8_004),
    .i1(dram_do_i9_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_4 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_5  (
    .i0(dram_do_i10_004),
    .i1(dram_do_i11_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_5 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_6  (
    .i0(dram_do_i12_004),
    .i1(dram_do_i13_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_6 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_0_7  (
    .i0(dram_do_i14_004),
    .i1(dram_do_i15_004),
    .sel(raddr[4]),
    .o(\dram_do_mux_b4/B0_7 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b4/B0_0 ),
    .i1(\dram_do_mux_b4/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b4/B1_0 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b4/B0_2 ),
    .i1(\dram_do_mux_b4/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b4/B1_1 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b4/B0_4 ),
    .i1(\dram_do_mux_b4/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b4/B1_2 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b4/B0_6 ),
    .i1(\dram_do_mux_b4/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b4/B1_3 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b4/B1_0 ),
    .i1(\dram_do_mux_b4/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b4/B2_0 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b4/B1_2 ),
    .i1(\dram_do_mux_b4/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b4/B2_1 ));
  AL_MUX \dram_do_mux_b4/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b4/B2_0 ),
    .i1(\dram_do_mux_b4/B2_1 ),
    .sel(raddr[7]),
    .o(do[4]));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_0  (
    .i0(dram_do_i0_005),
    .i1(dram_do_i1_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_0 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_1  (
    .i0(dram_do_i2_005),
    .i1(dram_do_i3_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_1 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_2  (
    .i0(dram_do_i4_005),
    .i1(dram_do_i5_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_2 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_3  (
    .i0(dram_do_i6_005),
    .i1(dram_do_i7_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_3 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_4  (
    .i0(dram_do_i8_005),
    .i1(dram_do_i9_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_4 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_5  (
    .i0(dram_do_i10_005),
    .i1(dram_do_i11_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_5 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_6  (
    .i0(dram_do_i12_005),
    .i1(dram_do_i13_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_6 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_0_7  (
    .i0(dram_do_i14_005),
    .i1(dram_do_i15_005),
    .sel(raddr[4]),
    .o(\dram_do_mux_b5/B0_7 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b5/B0_0 ),
    .i1(\dram_do_mux_b5/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b5/B1_0 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b5/B0_2 ),
    .i1(\dram_do_mux_b5/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b5/B1_1 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b5/B0_4 ),
    .i1(\dram_do_mux_b5/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b5/B1_2 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b5/B0_6 ),
    .i1(\dram_do_mux_b5/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b5/B1_3 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b5/B1_0 ),
    .i1(\dram_do_mux_b5/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b5/B2_0 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b5/B1_2 ),
    .i1(\dram_do_mux_b5/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b5/B2_1 ));
  AL_MUX \dram_do_mux_b5/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b5/B2_0 ),
    .i1(\dram_do_mux_b5/B2_1 ),
    .sel(raddr[7]),
    .o(do[5]));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_0  (
    .i0(dram_do_i0_006),
    .i1(dram_do_i1_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_0 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_1  (
    .i0(dram_do_i2_006),
    .i1(dram_do_i3_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_1 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_2  (
    .i0(dram_do_i4_006),
    .i1(dram_do_i5_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_2 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_3  (
    .i0(dram_do_i6_006),
    .i1(dram_do_i7_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_3 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_4  (
    .i0(dram_do_i8_006),
    .i1(dram_do_i9_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_4 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_5  (
    .i0(dram_do_i10_006),
    .i1(dram_do_i11_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_5 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_6  (
    .i0(dram_do_i12_006),
    .i1(dram_do_i13_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_6 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_0_7  (
    .i0(dram_do_i14_006),
    .i1(dram_do_i15_006),
    .sel(raddr[4]),
    .o(\dram_do_mux_b6/B0_7 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b6/B0_0 ),
    .i1(\dram_do_mux_b6/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b6/B1_0 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b6/B0_2 ),
    .i1(\dram_do_mux_b6/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b6/B1_1 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b6/B0_4 ),
    .i1(\dram_do_mux_b6/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b6/B1_2 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b6/B0_6 ),
    .i1(\dram_do_mux_b6/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b6/B1_3 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b6/B1_0 ),
    .i1(\dram_do_mux_b6/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b6/B2_0 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b6/B1_2 ),
    .i1(\dram_do_mux_b6/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b6/B2_1 ));
  AL_MUX \dram_do_mux_b6/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b6/B2_0 ),
    .i1(\dram_do_mux_b6/B2_1 ),
    .sel(raddr[7]),
    .o(do[6]));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_0  (
    .i0(dram_do_i0_007),
    .i1(dram_do_i1_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_0 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_1  (
    .i0(dram_do_i2_007),
    .i1(dram_do_i3_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_1 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_2  (
    .i0(dram_do_i4_007),
    .i1(dram_do_i5_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_2 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_3  (
    .i0(dram_do_i6_007),
    .i1(dram_do_i7_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_3 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_4  (
    .i0(dram_do_i8_007),
    .i1(dram_do_i9_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_4 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_5  (
    .i0(dram_do_i10_007),
    .i1(dram_do_i11_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_5 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_6  (
    .i0(dram_do_i12_007),
    .i1(dram_do_i13_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_6 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_0_7  (
    .i0(dram_do_i14_007),
    .i1(dram_do_i15_007),
    .sel(raddr[4]),
    .o(\dram_do_mux_b7/B0_7 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b7/B0_0 ),
    .i1(\dram_do_mux_b7/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b7/B1_0 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b7/B0_2 ),
    .i1(\dram_do_mux_b7/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b7/B1_1 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b7/B0_4 ),
    .i1(\dram_do_mux_b7/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b7/B1_2 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b7/B0_6 ),
    .i1(\dram_do_mux_b7/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b7/B1_3 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b7/B1_0 ),
    .i1(\dram_do_mux_b7/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b7/B2_0 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b7/B1_2 ),
    .i1(\dram_do_mux_b7/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b7/B2_1 ));
  AL_MUX \dram_do_mux_b7/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b7/B2_0 ),
    .i1(\dram_do_mux_b7/B2_1 ),
    .sel(raddr[7]),
    .o(do[7]));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_0  (
    .i0(dram_do_i0_008),
    .i1(dram_do_i1_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_0 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_1  (
    .i0(dram_do_i2_008),
    .i1(dram_do_i3_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_1 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_2  (
    .i0(dram_do_i4_008),
    .i1(dram_do_i5_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_2 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_3  (
    .i0(dram_do_i6_008),
    .i1(dram_do_i7_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_3 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_4  (
    .i0(dram_do_i8_008),
    .i1(dram_do_i9_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_4 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_5  (
    .i0(dram_do_i10_008),
    .i1(dram_do_i11_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_5 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_6  (
    .i0(dram_do_i12_008),
    .i1(dram_do_i13_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_6 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_0_7  (
    .i0(dram_do_i14_008),
    .i1(dram_do_i15_008),
    .sel(raddr[4]),
    .o(\dram_do_mux_b8/B0_7 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b8/B0_0 ),
    .i1(\dram_do_mux_b8/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b8/B1_0 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b8/B0_2 ),
    .i1(\dram_do_mux_b8/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b8/B1_1 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b8/B0_4 ),
    .i1(\dram_do_mux_b8/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b8/B1_2 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b8/B0_6 ),
    .i1(\dram_do_mux_b8/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b8/B1_3 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b8/B1_0 ),
    .i1(\dram_do_mux_b8/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b8/B2_0 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b8/B1_2 ),
    .i1(\dram_do_mux_b8/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b8/B2_1 ));
  AL_MUX \dram_do_mux_b8/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b8/B2_0 ),
    .i1(\dram_do_mux_b8/B2_1 ),
    .sel(raddr[7]),
    .o(do[8]));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_0  (
    .i0(dram_do_i0_009),
    .i1(dram_do_i1_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_0 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_1  (
    .i0(dram_do_i2_009),
    .i1(dram_do_i3_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_1 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_2  (
    .i0(dram_do_i4_009),
    .i1(dram_do_i5_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_2 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_3  (
    .i0(dram_do_i6_009),
    .i1(dram_do_i7_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_3 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_4  (
    .i0(dram_do_i8_009),
    .i1(dram_do_i9_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_4 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_5  (
    .i0(dram_do_i10_009),
    .i1(dram_do_i11_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_5 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_6  (
    .i0(dram_do_i12_009),
    .i1(dram_do_i13_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_6 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_0_7  (
    .i0(dram_do_i14_009),
    .i1(dram_do_i15_009),
    .sel(raddr[4]),
    .o(\dram_do_mux_b9/B0_7 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_1_0  (
    .i0(\dram_do_mux_b9/B0_0 ),
    .i1(\dram_do_mux_b9/B0_1 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b9/B1_0 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_1_1  (
    .i0(\dram_do_mux_b9/B0_2 ),
    .i1(\dram_do_mux_b9/B0_3 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b9/B1_1 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_1_2  (
    .i0(\dram_do_mux_b9/B0_4 ),
    .i1(\dram_do_mux_b9/B0_5 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b9/B1_2 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_1_3  (
    .i0(\dram_do_mux_b9/B0_6 ),
    .i1(\dram_do_mux_b9/B0_7 ),
    .sel(raddr[5]),
    .o(\dram_do_mux_b9/B1_3 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_2_0  (
    .i0(\dram_do_mux_b9/B1_0 ),
    .i1(\dram_do_mux_b9/B1_1 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b9/B2_0 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_2_1  (
    .i0(\dram_do_mux_b9/B1_2 ),
    .i1(\dram_do_mux_b9/B1_3 ),
    .sel(raddr[6]),
    .o(\dram_do_mux_b9/B2_1 ));
  AL_MUX \dram_do_mux_b9/al_mux_b0_3_0  (
    .i0(\dram_do_mux_b9/B2_0 ),
    .i1(\dram_do_mux_b9/B2_1 ),
    .sel(raddr[7]),
    .o(do[9]));
  EG_LOGIC_DRAM16X4 dram_r0_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_0_0),
    .do({dram_do_i0_003,dram_do_i0_002,dram_do_i0_001,dram_do_i0_000}));
  EG_LOGIC_DRAM16X4 dram_r0_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_0_0),
    .do({dram_do_i0_007,dram_do_i0_006,dram_do_i0_005,dram_do_i0_004}));
  EG_LOGIC_DRAM16X4 dram_r0_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_0_0),
    .do({open_n47,open_n48,dram_do_i0_009,dram_do_i0_008}));
  EG_LOGIC_DRAM16X4 dram_r10_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_1_0),
    .do({dram_do_i10_003,dram_do_i10_002,dram_do_i10_001,dram_do_i10_000}));
  EG_LOGIC_DRAM16X4 dram_r10_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_1_0),
    .do({dram_do_i10_007,dram_do_i10_006,dram_do_i10_005,dram_do_i10_004}));
  EG_LOGIC_DRAM16X4 dram_r10_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_1_0),
    .do({open_n49,open_n50,dram_do_i10_009,dram_do_i10_008}));
  EG_LOGIC_DRAM16X4 dram_r11_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_1_1),
    .do({dram_do_i11_003,dram_do_i11_002,dram_do_i11_001,dram_do_i11_000}));
  EG_LOGIC_DRAM16X4 dram_r11_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_1_1),
    .do({dram_do_i11_007,dram_do_i11_006,dram_do_i11_005,dram_do_i11_004}));
  EG_LOGIC_DRAM16X4 dram_r11_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_1_1),
    .do({open_n51,open_n52,dram_do_i11_009,dram_do_i11_008}));
  EG_LOGIC_DRAM16X4 dram_r12_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_0_0),
    .do({dram_do_i12_003,dram_do_i12_002,dram_do_i12_001,dram_do_i12_000}));
  EG_LOGIC_DRAM16X4 dram_r12_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_0_0),
    .do({dram_do_i12_007,dram_do_i12_006,dram_do_i12_005,dram_do_i12_004}));
  EG_LOGIC_DRAM16X4 dram_r12_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_0_0),
    .do({open_n53,open_n54,dram_do_i12_009,dram_do_i12_008}));
  EG_LOGIC_DRAM16X4 dram_r13_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_0_1),
    .do({dram_do_i13_003,dram_do_i13_002,dram_do_i13_001,dram_do_i13_000}));
  EG_LOGIC_DRAM16X4 dram_r13_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_0_1),
    .do({dram_do_i13_007,dram_do_i13_006,dram_do_i13_005,dram_do_i13_004}));
  EG_LOGIC_DRAM16X4 dram_r13_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_0_1),
    .do({open_n55,open_n56,dram_do_i13_009,dram_do_i13_008}));
  EG_LOGIC_DRAM16X4 dram_r14_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_1_0),
    .do({dram_do_i14_003,dram_do_i14_002,dram_do_i14_001,dram_do_i14_000}));
  EG_LOGIC_DRAM16X4 dram_r14_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_1_0),
    .do({dram_do_i14_007,dram_do_i14_006,dram_do_i14_005,dram_do_i14_004}));
  EG_LOGIC_DRAM16X4 dram_r14_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_1_0),
    .do({open_n57,open_n58,dram_do_i14_009,dram_do_i14_008}));
  EG_LOGIC_DRAM16X4 dram_r15_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_1_1),
    .do({dram_do_i15_003,dram_do_i15_002,dram_do_i15_001,dram_do_i15_000}));
  EG_LOGIC_DRAM16X4 dram_r15_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_1_1),
    .do({dram_do_i15_007,dram_do_i15_006,dram_do_i15_005,dram_do_i15_004}));
  EG_LOGIC_DRAM16X4 dram_r15_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_1_1_1),
    .do({open_n59,open_n60,dram_do_i15_009,dram_do_i15_008}));
  EG_LOGIC_DRAM16X4 dram_r1_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_0_1),
    .do({dram_do_i1_003,dram_do_i1_002,dram_do_i1_001,dram_do_i1_000}));
  EG_LOGIC_DRAM16X4 dram_r1_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_0_1),
    .do({dram_do_i1_007,dram_do_i1_006,dram_do_i1_005,dram_do_i1_004}));
  EG_LOGIC_DRAM16X4 dram_r1_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_0_1),
    .do({open_n61,open_n62,dram_do_i1_009,dram_do_i1_008}));
  EG_LOGIC_DRAM16X4 dram_r2_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_1_0),
    .do({dram_do_i2_003,dram_do_i2_002,dram_do_i2_001,dram_do_i2_000}));
  EG_LOGIC_DRAM16X4 dram_r2_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_1_0),
    .do({dram_do_i2_007,dram_do_i2_006,dram_do_i2_005,dram_do_i2_004}));
  EG_LOGIC_DRAM16X4 dram_r2_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_1_0),
    .do({open_n63,open_n64,dram_do_i2_009,dram_do_i2_008}));
  EG_LOGIC_DRAM16X4 dram_r3_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_1_1),
    .do({dram_do_i3_003,dram_do_i3_002,dram_do_i3_001,dram_do_i3_000}));
  EG_LOGIC_DRAM16X4 dram_r3_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_1_1),
    .do({dram_do_i3_007,dram_do_i3_006,dram_do_i3_005,dram_do_i3_004}));
  EG_LOGIC_DRAM16X4 dram_r3_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_0_1_1),
    .do({open_n65,open_n66,dram_do_i3_009,dram_do_i3_008}));
  EG_LOGIC_DRAM16X4 dram_r4_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_0_0),
    .do({dram_do_i4_003,dram_do_i4_002,dram_do_i4_001,dram_do_i4_000}));
  EG_LOGIC_DRAM16X4 dram_r4_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_0_0),
    .do({dram_do_i4_007,dram_do_i4_006,dram_do_i4_005,dram_do_i4_004}));
  EG_LOGIC_DRAM16X4 dram_r4_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_0_0),
    .do({open_n67,open_n68,dram_do_i4_009,dram_do_i4_008}));
  EG_LOGIC_DRAM16X4 dram_r5_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_0_1),
    .do({dram_do_i5_003,dram_do_i5_002,dram_do_i5_001,dram_do_i5_000}));
  EG_LOGIC_DRAM16X4 dram_r5_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_0_1),
    .do({dram_do_i5_007,dram_do_i5_006,dram_do_i5_005,dram_do_i5_004}));
  EG_LOGIC_DRAM16X4 dram_r5_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_0_1),
    .do({open_n69,open_n70,dram_do_i5_009,dram_do_i5_008}));
  EG_LOGIC_DRAM16X4 dram_r6_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_1_0),
    .do({dram_do_i6_003,dram_do_i6_002,dram_do_i6_001,dram_do_i6_000}));
  EG_LOGIC_DRAM16X4 dram_r6_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_1_0),
    .do({dram_do_i6_007,dram_do_i6_006,dram_do_i6_005,dram_do_i6_004}));
  EG_LOGIC_DRAM16X4 dram_r6_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_1_0),
    .do({open_n71,open_n72,dram_do_i6_009,dram_do_i6_008}));
  EG_LOGIC_DRAM16X4 dram_r7_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_1_1),
    .do({dram_do_i7_003,dram_do_i7_002,dram_do_i7_001,dram_do_i7_000}));
  EG_LOGIC_DRAM16X4 dram_r7_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_1_1),
    .do({dram_do_i7_007,dram_do_i7_006,dram_do_i7_005,dram_do_i7_004}));
  EG_LOGIC_DRAM16X4 dram_r7_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_0_1_1_1),
    .do({open_n73,open_n74,dram_do_i7_009,dram_do_i7_008}));
  EG_LOGIC_DRAM16X4 dram_r8_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_0_0),
    .do({dram_do_i8_003,dram_do_i8_002,dram_do_i8_001,dram_do_i8_000}));
  EG_LOGIC_DRAM16X4 dram_r8_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_0_0),
    .do({dram_do_i8_007,dram_do_i8_006,dram_do_i8_005,dram_do_i8_004}));
  EG_LOGIC_DRAM16X4 dram_r8_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_0_0),
    .do({open_n75,open_n76,dram_do_i8_009,dram_do_i8_008}));
  EG_LOGIC_DRAM16X4 dram_r9_c0 (
    .di(di[3:0]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_0_1),
    .do({dram_do_i9_003,dram_do_i9_002,dram_do_i9_001,dram_do_i9_000}));
  EG_LOGIC_DRAM16X4 dram_r9_c1 (
    .di(di[7:4]),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_0_1),
    .do({dram_do_i9_007,dram_do_i9_006,dram_do_i9_005,dram_do_i9_004}));
  EG_LOGIC_DRAM16X4 dram_r9_c2 (
    .di({2'b00,di[9:8]}),
    .raddr(raddr[3:0]),
    .waddr(waddr[3:0]),
    .wclk(wclk),
    .we(we_1_0_0_1),
    .do({open_n77,open_n78,dram_do_i9_009,dram_do_i9_008}));
  not \waddr[4]_inv  (\waddr[4]_neg , waddr[4]);
  not \waddr[5]_inv  (\waddr[5]_neg , waddr[5]);
  not \waddr[6]_inv  (\waddr[6]_neg , waddr[6]);
  not \waddr[7]_inv  (\waddr[7]_neg , waddr[7]);
  and we_0_0_0_0i (we_0_0_0_0, we_0_0_0, \waddr[4]_neg );
  and we_0_0_0_1i (we_0_0_0_1, we_0_0_0, waddr[4]);
  and we_0_0_0i (we_0_0_0, we_0_0, \waddr[5]_neg );
  and we_0_0_1_0i (we_0_0_1_0, we_0_0_1, \waddr[4]_neg );
  and we_0_0_1_1i (we_0_0_1_1, we_0_0_1, waddr[4]);
  and we_0_0_1i (we_0_0_1, we_0_0, waddr[5]);
  and we_0_0i (we_0_0, we_0, \waddr[6]_neg );
  and we_0_1_0_0i (we_0_1_0_0, we_0_1_0, \waddr[4]_neg );
  and we_0_1_0_1i (we_0_1_0_1, we_0_1_0, waddr[4]);
  and we_0_1_0i (we_0_1_0, we_0_1, \waddr[5]_neg );
  and we_0_1_1_0i (we_0_1_1_0, we_0_1_1, \waddr[4]_neg );
  and we_0_1_1_1i (we_0_1_1_1, we_0_1_1, waddr[4]);
  and we_0_1_1i (we_0_1_1, we_0_1, waddr[5]);
  and we_0_1i (we_0_1, we_0, waddr[6]);
  and we_0i (we_0, we, \waddr[7]_neg );
  and we_1_0_0_0i (we_1_0_0_0, we_1_0_0, \waddr[4]_neg );
  and we_1_0_0_1i (we_1_0_0_1, we_1_0_0, waddr[4]);
  and we_1_0_0i (we_1_0_0, we_1_0, \waddr[5]_neg );
  and we_1_0_1_0i (we_1_0_1_0, we_1_0_1, \waddr[4]_neg );
  and we_1_0_1_1i (we_1_0_1_1, we_1_0_1, waddr[4]);
  and we_1_0_1i (we_1_0_1, we_1_0, waddr[5]);
  and we_1_0i (we_1_0, we_1, \waddr[6]_neg );
  and we_1_1_0_0i (we_1_1_0_0, we_1_1_0, \waddr[4]_neg );
  and we_1_1_0_1i (we_1_1_0_1, we_1_1_0, waddr[4]);
  and we_1_1_0i (we_1_1_0, we_1_1, \waddr[5]_neg );
  and we_1_1_1_0i (we_1_1_1_0, we_1_1_1, \waddr[4]_neg );
  and we_1_1_1_1i (we_1_1_1_1, we_1_1_1, waddr[4]);
  and we_1_1_1i (we_1_1_1, we_1_1, waddr[5]);
  and we_1_1i (we_1_1, we_1, waddr[6]);
  and we_1i (we_1, we, waddr[7]);

endmodule 

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

