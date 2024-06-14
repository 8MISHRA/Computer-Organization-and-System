// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

`include "MUX.v"

module tb_MUX;

reg [0:1] d;
reg s;
wire o;
multiplexer_2_1 MUX(d, s, o);

initial begin
    $monitor("input=%b, select=%b, output=%b\n", d, s, o);
    #2 d=2'b00; s=1'b0;
    #2 d=2'b00; s=1'b1;
    #2 d=2'b01; s=1'b0;
    #2 d=2'b01; s=1'b1;
    #2 d=2'b10; s=1'b0;
    #2 d=2'b10; s=1'b1;
    #2 d=2'b11; s=1'b0;
    #2 d=2'b11; s=1'b1;
    
end

initial begin
 $dumpfile("out.vcd");
 $dumpvars;
 #100 $finish;
end

endmodule