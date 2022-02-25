// Verilog netlist created by TD v5.0.30786
// Wed Feb 23 20:32:36 2022

`timescale 1ns / 1ps
module FIFO  // FIFO.v(14)
  (
  clkr,
  clkw,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag
  );

  input clkr;  // FIFO.v(25)
  input clkw;  // FIFO.v(24)
  input [9:0] di;  // FIFO.v(23)
  input re;  // FIFO.v(25)
  input rst;  // FIFO.v(22)
  input we;  // FIFO.v(24)
  output [9:0] do;  // FIFO.v(27)
  output empty_flag;  // FIFO.v(28)
  output full_flag;  // FIFO.v(29)

  wire empty_flag_neg;
  wire full_flag_neg;

  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  not empty_flag_inv (empty_flag_neg, empty_flag);
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000001100000),
    .AEP1(32'b00000000000000000000000001110000),
    .AF(32'b00000000000000000001111110100000),
    .AFM1(32'b00000000000000000001111110010000),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("18"),
    .DATA_WIDTH_B("18"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000010000),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111110000),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_0_ (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_neg}),
    .csw({2'b11,full_flag_neg}),
    .dia(di[8:0]),
    .dib({open_n47,open_n48,open_n49,open_n50,open_n51,open_n52,open_n53,open_n54,di[9]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .doa(do[8:0]),
    .dob({open_n57,open_n58,open_n59,open_n60,open_n61,open_n62,open_n63,open_n64,do[9]}),
    .empty_flag(empty_flag),
    .full_flag(full_flag));  // FIFO.v(41)
  not full_flag_inv (full_flag_neg, full_flag);

endmodule 

