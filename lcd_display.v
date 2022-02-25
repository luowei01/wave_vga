module lcd_display(
    input             lcd_clk,                  //lcd驱动时钟
    input             sys_rst_n,                //复位信号
    input      [9:0]  data,    
    input      [9:0] waddr,
    input      [9:0] pixel_xpos,               //像素点横坐标
    input      [9:0] pixel_ypos,               //像素点纵坐标    
    output reg [15:0] pixel_data                //像素点数据
    );    
    
localparam WHITE  = 16'b11111_111111_11111;     //RGB565 白色
localparam BLACK  = 16'b00000_000000_00000;     //RGB565 黑色
localparam RED    = 16'b11111_000000_00000;     //RGB565 红色
localparam GREEN  = 16'b00000_111111_00000;     //RGB565 绿色
localparam BLUE   = 16'b00000_000000_11111;     //RGB565 蓝色
localparam BROWN   = 16'h7800;                  //RGB565 棕色
    
    
  //测试边框
  /*    always @(posedge lcd_clk or negedge sys_rst_n) begin         
          if (!sys_rst_n)
              pixel_data <= 16'hffff;
          else begin
          
            if(pixel_xpos == 11'd1)                                              
                pixel_data <= GREEN;                               
            else if(pixel_xpos == 11'd100)
                pixel_data <= GREEN;
            else if(pixel_xpos == 11'd200)
                pixel_data <= GREEN;    
                
            else if(pixel_ypos == 11'd300)
                pixel_data <= GREEN;  
            else if(pixel_ypos == 11'd400)
                pixel_data <= GREEN; 
            else if(pixel_ypos == 11'd500)
                pixel_data <= GREEN;   
            else 
            
                pixel_data <= BROWN;
          end
      end

   */
    //栅格   
      /*reg clk_c;   
      reg [15:0]cnt; 
      reg [9:0] x,y;      
      always @(posedge lcd_clk or negedge sys_rst_n) begin         
          if (!sys_rst_n)
              cnt<= 16'd0;        
          else begin
            if(cnt == 16'd10000) cnt<= 10'b0;          
            else cnt <= cnt +1;          
            if(cnt <= 16'd50000) clk_c<= 1;            
            else clk_c<=0;          
                          
          end
      end    
      always @(posedge clk_c or negedge sys_rst_n) begin         
          if (!sys_rst_n)
              x<= 10'd0;        
          else begin
            if(x == 10'd800) x<= 10'b0;          
            else x <= x +1;              
          end
      end*/          
      reg [9:0] sum;      
      reg [3:0] num = 0; 
      always @(posedge lcd_clk or negedge sys_rst_n) begin         
          if (!sys_rst_n)
             sum <= 10'd0;        
          else begin           
            if(pixel_xpos % 160 == 0 ) num <= num + 1;          
            if(num == 5) num <= 0;                    
            else sum <= (pixel_xpos - num*160);
          end
      end          
      reg [19:0] xy;     
      always @(posedge lcd_clk or negedge sys_rst_n ) begin               
          if (!sys_rst_n)
              pixel_data <= 16'hffff;
          else begin              
            xy <= {pixel_ypos,pixel_xpos};
            //if((pixel_xpos == waddr) && (pixel_ypos == data))                 
            if(pixel_xpos == data )// || pixel_ypos == sum)//pixel_xpos == (pixel_ypos * pixel_ypos) / 400)            
                pixel_data <= WHITE;            
            else if(                
xy == {10'd60,10'd731} ||                
xy == {10'd60,10'd730} ||            
xy == {10'd60,10'd750} ||                    
xy == {10'd60,10'd751} ||

xy == {10'd61,10'd731} ||                
xy == {10'd61,10'd730} ||            
xy == {10'd61,10'd750} ||                    
xy == {10'd61,10'd751} ||
                    
xy == {10'd60,10'd691} ||					
xy == {10'd60,10'd690} ||                    
xy == {10'd60,10'd710} ||                    
xy == {10'd60,10'd711} ||
                    
xy == {10'd61,10'd691} ||					
xy == {10'd61,10'd690} ||                    
xy == {10'd61,10'd710} ||                    
xy == {10'd61,10'd711}                                        
                   )                 
                pixel_data <= BLUE;                   
            else if(pixel_ypos > 10'd2  && pixel_ypos <= 10'd20 &&  (pixel_xpos + 2*pixel_ypos - 760)== 10'd0 )                
                 pixel_data <= BLUE;            
            else if(pixel_ypos > 10'd20  && pixel_ypos <= 10'd37 &&  (pixel_xpos - 2*pixel_ypos - 680)== 10'd0 )                
                 pixel_data <= BLUE;            
            else if((pixel_xpos > 10'd682  && pixel_xpos <= 10'd718 &&  pixel_ypos == 10'd3 )||                 
                    (pixel_ypos > 10'd3  && pixel_ypos <= 10'd30 && ( pixel_xpos == 10'd718 || pixel_xpos== 10'd700 ))||            
                    (pixel_ypos > 10'd80  && pixel_ypos <= 10'd200 && ( pixel_xpos == 10'd722 )) )               
                 pixel_data <= BLUE;                    
            else if(pixel_ypos == 10'd300 || pixel_xpos == 10'd400 )                         
                pixel_data <= BROWN;            
            else if(((pixel_xpos % 6'd8) == 11'd0) && pixel_ypos >= 10'd300 && pixel_ypos <= 10'd310 )                
                pixel_data <= RED;            
            else if(((pixel_ypos % 6'd8) == 11'd0) && pixel_xpos >= 10'd400 && pixel_xpos <= 10'd410 )                
                pixel_data <= RED;              
            else if((((pixel_xpos % 6'd40) == 11'd0)||((pixel_ypos % 6'd40) == 11'd0)) &&                
                 !(pixel_xpos >10'd680  && pixel_xpos < 10'd760 && pixel_ypos > 10'd0  && pixel_ypos < 10'd200 ) )                                                              
                pixel_data <= GREEN;                                
            else             
                pixel_data <= BLACK;
          end
      end
    //彩条      
 //   always @(posedge lcd_clk or negedge sys_rst_n) begin         
 //       if (!sys_rst_n)
 //           pixel_data <= 16'hffff;
 //       else begin
 //           if((pixel_xpos >= 1) && (pixel_xpos < (11'd480/5)*1))                                              
 //               pixel_data <= GREEN;                               
 //           else if((pixel_xpos >= (11'd480/5)*1) && (pixel_xpos < (11'd480/5)*2))
 //               pixel_data <= BLACK;  
 //           else if((pixel_xpos >= (11'd480/5)*2) && (pixel_xpos < (11'd480/5)*3))
 //               pixel_data <= RED;  
 //           else if((pixel_xpos >= (11'd480/5)*3) && (pixel_xpos < (11'd480/5)*4))
 //               pixel_data <= BLUE;  
 //           else 
 //               pixel_data <= BROWN;
 //       end
 //   end
    endmodule 

