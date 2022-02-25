`timescale 1ns/ 1ps
module top(
    output  wire        clk_1000HZ,//测试时钟
    input 	wire 		clk_50m,	//系统时钟
	input 	wire 		rst_n,		//复位
	//vga	
	output 	wire [4:0] 	VGA_R,		//VGA_R数据
	output 	wire [5:0] 	VGA_G,		//VGA_G数据
	output 	wire [4:0] 	VGA_B,		//VGA_B数据
	output 	wire 		vga_clk,	//VGA时钟
	output 	wire 		vga_hsync,	//VGA行同
	output 	wire 		vga_vsync,	//VGA帧同	
    //ADC	
    input   wire [5:0]  data_hand,	
    input   wire        SW1,
	input   wire [9:0]  ADC_DATA,
	output  wire [9:0]  DAC_DATA,
	output  wire        ADC_CLK,
	output  wire        DAC_CLK 	
 );	
clk1000HZ clk1000
( .clk(clk_50m),
  .clk1000HZ(clk_1000HZ)
);
//VGA 显示连线
wire   clk_lcd;
wire   vga_en;
wire [7:0] 	vga_r;      
wire [7:0] 	vga_g;		
wire [7:0] 	vga_b;	
wire	[9:0]	lcd_xpos;
wire 	[9:0]	lcd_ypos;
wire	[11:0]	lcd_xpos1;
wire 	[11:0]	lcd_ypos1;
wire [9:0] wave_data;//波形数据
wire [15:0] vga_rddat;//像素数据16
wire [23:0] vga_data;//像素数据24

assign VGA_R = vga_r[7:3];
assign VGA_G = vga_g[7:2];
assign VGA_B = vga_b[7:3];
	
	
reg[0:0] clk_div,clk_read; //数据点写和读传输速度
reg[31:0] clk_cnt=0;
reg[31:0] clk_cnt1=0;
reg[9:0] waddr=0;
wire [9:0] raddr;
always@(posedge clk_50m or negedge rst_n)//50000000/N 1S读N个波形数据dian
		begin
			if(!rst_n) 
				clk_cnt<=0;
			else begin
				clk_cnt<=clk_cnt+1;			  
				if(clk_cnt==(50000000/600)) clk_cnt<=0;                
                if(clk_cnt<(50000000/1200)) clk_div<=1;//600个波点				
				else clk_div<=0;
			end
		end			
always@(posedge clk_lcd or negedge rst_n)//N/50000000S读一次波形数据
		begin
			if(!rst_n) 
				clk_cnt1<=0;
			else begin
				clk_cnt1<=clk_cnt1+1;			  
				if(clk_cnt1==(1056)) clk_cnt1<=0;                
                if(clk_cnt1<(528)) clk_read<=1;
				else clk_read<=0;
			end
		end				
always@(posedge clk_div or negedge rst_n)
		begin
			if(!rst_n) 
				waddr<=0;
			else begin			
                waddr<=waddr+1;				                  
                if(waddr== 600) waddr<=0;				
			end
		end			
/*always@(posedge clk_read or negedge rst_n)//N/50000000S读一次波形数据
		begin
			if(!rst_n) 
				raddr<=0;
			else begin
                raddr<=raddr+1;                  
                if(raddr==(255)) raddr<=0;
			end
		end */       	
/*pic_disp_rom u_pic_disp_rom//ROM存储波形数据或者图片数据
(
    .I_sys_clk(clk_lcd) ,//一帧输出一个数据点
    .I_reset_n(rst_n) ,
    .I_pos_x(lcd_xpos),
    .I_pos_y(lcd_ypos),
    .I_pos_en(1'b1),
    .O_data(vga_rddat)
);*/     
									
clk_vga pll_inst
(
        .refclk(clk_50m),
		.reset(!rst_n),
		.clk0_out(clk_lcd)
);									
ADDA u_ADDA//ADC数据
(
    .CLK(clk_50m), 
    .SW1(SW1),     
    .RSTn(rst_n),
	.ADC_DATA(ADC_DATA),
	.DAC_DATA(DAC_DATA),
	.ADC_CLK(ADC_CLK),
	.DAC_CLK(DAC_CLK) 	
);	
assign raddr = (lcd_ypos % 256) ;//DRAM		
/*
DRAM dram(//256*10
			//di({data_hand[5:0],4'b1111}),
            .di((DAC_DATA)),
			.waddr(waddr[7:0]),
			.wclk(clk_div),
			.we(1'b1),
			.do(wave_data),
			.raddr(raddr[7:0]));			
*/			
wave_ram  u_wave_ram//波形RAM
(				
                .addra(waddr),
				.clka(clk_div),                
                //.dia({data_hand[5:0],4'b1111}),				
                .dia((DAC_DATA)),				
                .doa(),                
                .wea(1'b1),				
                //.ocea(W_rom_en),                
                .addrb(lcd_ypos),
				.clkb(clk_lcd),                
                .dib({data_hand[5:0],4'b1111}),				
                .dob(wave_data),                
                .web(1'b0)				
                //.oceb(W_rom_en),                                				
				                
);																	 									
//wire[9:0] ROM_DATA;		  
lcd_display u_lcd_display//波形转像素
(          //lcd显示模块
    .lcd_clk        (clk_lcd),    
    .sys_rst_n      (rst_n),
    .data(wave_data),    
    .waddr(waddr),    
    //.data(ROM_DATA),
    .pixel_xpos     (lcd_xpos),
    .pixel_ypos     (lcd_ypos),
    .pixel_data     (vga_rddat)//颜色数据
);    
assign 	vga_data [23:0] ={vga_rddat[15:11],3'h0,vga_rddat[10:5],2'h0,vga_rddat[4:0],3'h0}; //16转24像素   
Driver u_cam_vga_out//输出显示
(
	.clk(clk_lcd),			
	.rst_n(rst_n),     		//sync reset
	.lcd_data(vga_data),		//lcd data
	
	//lcd interface
	.lcd_dclk(vga_clk),   	//lcd pixel clock
	.lcd_hs(vga_hsync),	    	//lcd horizontal sync
	.lcd_vs(vga_vsync),	    	//lcd vertical sync
	.lcd_en(vga_en),			//lcd display enable
	.lcd_rgb({vga_r,vga_g,vga_b}),		//lcd display data

	//user interface
	.lcd_xpos(lcd_xpos1),		//lcd horizontal coordinate
	.lcd_ypos(lcd_ypos1)
);	
assign lcd_xpos = lcd_xpos1[9:0];
assign lcd_ypos = lcd_ypos1[9:0];                   
endmodule
