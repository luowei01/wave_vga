module ADDA
(
	CLK, SW1, RSTn, ADC_DATA,DAC_DATA,ADC_CLK,DAC_CLK
);
	input CLK, SW1, RSTn;
	input[9:0] ADC_DATA;
	output [9:0] DAC_DATA;
	output ADC_CLK;
	output DAC_CLK;
	  	
reg	[7:0]	rst_cnt=0;	
always @(posedge CLK)
begin
	if (rst_cnt[7])
		rst_cnt <=  rst_cnt;
	else
		rst_cnt <= rst_cnt+1'b1;
end			  	

PLL	PLL_inst (
	.refclk ( CLK ),
	.reset(!rst_cnt[7]), 
//	.extlock (),
	.clk0_out ( ADC_CLK ),
	.clk1_out(DAC_CLK)
	);

wire[9:0] ADC2DAC_DATA;
	
FIFO	FIFO_inst (
	.rst(1'b0),
	.empty_flag(),
	.full_flag(),
	.di ( ADC_DATA ), //
	.clkr (DAC_CLK),
	.re ( RSTn ),
	.clkw ( ADC_CLK ),
	.we ( RSTn ),
	.do ( ADC2DAC_DATA )
	);
	

//DDS信号源程序

   wire[9:0] ROM_ADDR;  
      	
   	Phase_Acc U1
   (.CLK(DAC_CLK),
	.RSTn(RSTn), 
	.KW(28'd0000007),  //可以修改该数值获得想要的频率 KW=f*6.7S
	.Addr(ROM_ADDR)
    );
		
  wire[9:0] ROM_DATA;
  
  Sine_ROM U2
  ( .doa(ROM_DATA),   
    .addra(ROM_ADDR),   
    .clka(DAC_CLK),     
    .rsta(~RSTn) );

//选择DAC的数据输入是来自于ADC还是DDS模块
assign DAC_DATA = SW1? ADC2DAC_DATA : ROM_DATA ;
	 	 
	 
endmodule