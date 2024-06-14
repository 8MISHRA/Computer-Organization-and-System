// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

`include "encoder8to3.v"

module tb_encoder8to3;
reg [0:7]i;
wire [0:2]o;

encoder8to3 f1(i, o);

initial begin
    $monitor("input=%b, output=%b\n", i, o);
    #2 i=8'b10000000;
    #2 i=8'b01000000;
    #2 i=8'b00100000;
    #2 i=8'b00010000;
    #2 i=8'b00001000;
    #2 i=8'b00000100;
    #2 i=8'b00000010;
    #2 i=8'b00000001;
end

initial begin
 $dumpfile("out.vcd");
 $dumpvars;
 #100 $finish;
end

endmodule