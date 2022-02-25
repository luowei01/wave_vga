// Verilog netlist created by TD v5.0.30786
// Wed Feb 23 17:41:51 2022

`timescale 1ns / 1ps
module muddr  // muddr.v(14)
  (
  a,
  b,
  p
  );

  input [9:0] a;  // muddr.v(18)
  input [9:0] b;  // muddr.v(19)
  output [19:0] p;  // muddr.v(16)


  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  EG_PHY_MULT18 #(
    .INPUTREGA("DISABLE"),
    .INPUTREGB("DISABLE"),
    .MODE("MULT18X18C"),
    .OUTPUTREG("DISABLE"),
    .SIGNEDAMUX("1"),
    .SIGNEDBMUX("1"))
    inst_ (
    .a({a[9],a[9],a[9],a[9],a[9],a[9],a[9],a[9],a}),
    .b({b[9],b[9],b[9],b[9],b[9],b[9],b[9],b[9],b}),
    .p({open_n130,open_n131,open_n132,open_n133,open_n134,open_n135,open_n136,open_n137,open_n138,open_n139,open_n140,open_n141,open_n142,open_n143,open_n144,open_n145,p}));

endmodule 

