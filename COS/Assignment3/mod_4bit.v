module mod16_ctr  
  # (parameter n = 16,  
     parameter size = 4)  
  
    (input   clk,  
    input   not_rst,  
    output  reg[size-1:0] out);  
  
  always @ (posedge clk) begin  
    if (!not_rst) begin  
      out <= 0;  
    end else begin  
      if (out == N-1)  
        out <= 0;  
      else  
        out <= out + 1;  
    end  
  end  
endmodule