`include "mod_4bit.v"

module tb_mod_4bit;
  parameter n = 16;  
  parameter size = 4;  
  
  reg clk;  
  reg not_reset;  
  wire [size-1:0] out;  

  mod16_ctr m(clk, not_reset, out);
  
  always #10 clk = ~clk;  
  
  initial begin
    clk <= 1;
    forever begin
      #2 clk <= ~clk;
    end
  end

    initial begin  
        not_reset <= 0;  
  
    $monitor ("Time=%0t not_reset=%0b counter=%0d", $time, not_reset, out);  
    repeat(2) @ (posedge clk);  
    not_reset <= 1;  
    repeat(31) @ (posedge clk);  
    $finish;  
  end

  initial begin
    $dumpfile("out.vcd");
    $dumpvars;
  end
  
endmodule  