`include "jonson_counter.v"
module tb_jonson_counter();

  reg clk;
  reg reset;

  wire [0:3] counter;
    j_counter uut (
    clk,
    reset,
    counter
  );

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    reset = 0;
    #10 reset = 1;
    #10 reset = 0;
    $finish;
  end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
  end

endmodule
