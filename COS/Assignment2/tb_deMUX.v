// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

`include "deMUX.v"

module tb_deMUX;

reg i;
reg [0:1]s;
wire [0:3]o;

deMUX_1to4 deMUX(i, s, o);

initial begin
    $monitor("input=%b, select=%b, output=%b\n", i, s, o);
    #2 i=1'b0; s=2'b00;
    #2 i=1'b0; s=2'b01;
    #2 i=1'b0; s=2'b10;
    #2 i=1'b0; s=2'b11;
    #2 i=1'b1; s=2'b00;
    #2 i=1'b1; s=2'b01;
    #2 i=1'b1; s=2'b10;
    #2 i=1'b1; s=2'b11;
    
end

initial begin
 $dumpfile("out.vcd");
 $dumpvars;
 #100 $finish;
end

endmodule