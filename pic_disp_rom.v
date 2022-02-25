`timescale 1ns / 1ps
//
// Company: 
// Engineer: w0shishabi
// 
// Create Date: 2021/02/10 22:29:39
// Design Name: 
// Module Name: pic_disp_rom
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//


module pic_disp_rom(
    input                   I_sys_clk ,
    input                   I_reset_n ,
    input         [ 9:0]    I_pos_x   ,
    input         [ 9:0]    I_pos_y   ,
    input                   I_pos_en  ,
    output        [15:0]    O_data
    );

localparam P_PIXEL_NUM_Y = 10'd600                ;
localparam P_PIXEL_NUM_X = 10'd800                ;
localparam P_PIC_POS_X   = 10'd0                  ;
localparam P_PIC_POS_Y   = 10'd0                  ;
localparam P_PIC_WIDTH   = 10'd600                ;
localparam P_PIC_HEIGTH  = 10'd800                ;
localparam P_PIC_TOTAL   = 20'd480000             ;
localparam P_COLOR_BLACK = 16'b00000_000000_00000;

wire        W_rom_en;
reg [19:0]  R_rom_addr;
reg         R_rom_valid;
reg         R_pos_en;
reg [ 9:0]    R_pos_x;

wire [15:0] W_rom_data;
wire [19:0] W_mult_addr;

always @ (posedge I_sys_clk or negedge I_reset_n)
begin
    if(~I_reset_n)
    begin 
        R_pos_en <= 1'b0;
        R_pos_x <= 10'd0;
    end
    else
    begin 
        R_pos_en <= I_pos_en; 
        R_pos_x <= I_pos_x;
    end
end

assign O_data = R_rom_valid ? W_rom_data : P_COLOR_BLACK;
assign W_rom_en = (I_pos_x >= P_PIC_POS_X) && (I_pos_x < P_PIC_POS_X + P_PIC_WIDTH) && (I_pos_y >= P_PIC_POS_Y) && (I_pos_y < P_PIC_POS_Y + P_PIC_HEIGTH) ? 1'b1 : 1'b0;
always @ (posedge I_sys_clk or negedge I_reset_n)
begin
    if(~I_reset_n)
    begin
        R_rom_addr <= 20'd000000;
    end
    else
    begin
        if (R_pos_en)
        begin
            R_rom_addr <= W_mult_addr + R_pos_x;
        end
        else
            R_rom_addr <= R_rom_addr;
    end
end

always @ (posedge I_sys_clk or negedge I_reset_n)
begin
    if(~I_reset_n)
    begin
        R_rom_valid <= 1'b0;
    end
    else
    begin
        R_rom_valid <= W_rom_en;
    end
end
muddr u_muddr
(
				.a(10'd800),
				.b(I_pos_y),
				.p(W_mult_addr)
);		
wave_ram  u_wave_ram
(				
				.addra(R_rom_addr[14:0]),
                //.addra(R_rom_addr),
				.clka(I_sys_clk),				
                //.ocea(W_rom_en),
				.doa(W_rom_data),                                
                .dia(16'd400),
				.wea(1'b0)
									
);		
endmodule

