// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

`include "decoder_3to8.v"
module decoder_3to8_tb;
reg [0:2]i;
wire [0:7]o;
decoder_3to8 decode(i, o);
 
initial begin
    $monitor("i=%b, output=%b\n", i, o);
    #2 i=3'b000;
    #2 i=3'b001;
    #2 i=3'b010;
    #2 i=3'b011;
    #2 i=3'b100;
    #2 i=3'b101;
    #2 i=3'b110;
    #2 i=3'b111; 
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule