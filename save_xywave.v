module save_xywave( 
 input [9:0] x,
 input clk,rst_n,
 output [17:0] xy
); 
wire [9:0] doa;
y_rom u_y_rom
(
				.addra(x),
				.clka(clk),
				.rsta(rst_n),
				.doa(doa)				
);				
assign xy[17:0]={x, doa};				
endmodule
