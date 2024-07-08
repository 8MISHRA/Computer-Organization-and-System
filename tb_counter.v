`include "counter.v"
module tb_counter();

  reg clk = 0;
  reg reset = 1;
  wire [3:0] counter;

  counter c1(clk, reset, counter);

  always #1 clk = ~clk;
  initial #5 reset = 0;
  initial begin
    #5 reset = 1; 
    #5 reset = 0; 
    #50 $finish;
  end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
end

endmodule