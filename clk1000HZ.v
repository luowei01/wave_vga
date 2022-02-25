module clk1000HZ( 
    input  clk,
    output clk1000HZ    
);    
reg clk_cnt;
reg clk_div1000;
always@(posedge clk )//50000000/N 1S读N个波形数据dian
		 begin
				clk_cnt<=clk_cnt+1;			  
				if(clk_cnt==(50000000/1000)) clk_cnt<=0;                
                if(clk_cnt<(50000000/2000)) clk_div1000<=0;//600个波点				
				else clk_div1000<=1;
		end				
assign clk1000HZ = clk_div1000; 
endmodule
