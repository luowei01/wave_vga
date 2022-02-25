module Phase_Acc
(
	CLK, RSTn, KW, Addr
);
	 input CLK;
	 input RSTn;
	 input[27:0] KW;
	 output[9:0] Addr;	 

	       
    reg[27:0] Cnt; 
	 
	always @ ( posedge CLK or negedge RSTn )
		begin
			if( !RSTn ) 
				Cnt <= 28'd0;
			else if( Cnt == 28'd268435455 )
				Cnt <= 0;
			else	
				Cnt <= Cnt + KW;
		end
		
	 assign Addr = Cnt[27:18];

endmodule
		
		
		
		
		
		
		 