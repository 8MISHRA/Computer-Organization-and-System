// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

`include "comparator3bit.v"

module comparator3bit_tb;

reg [2:0] a, b;
wire less, equal, greater;

comparator3bit cmp(
    .a(a),
    .b(b),
    .less(less),
    .equal(equal),
    .greater(greater)
);

initial begin
    $monitor(" input=%b, input=%b, lesser=%b, equal=%b, greater=%b\n ", a, b, less, equal, greater);

    #2 a = 3'b000; b = 3'b001;                              //  A < B
    #2 a = 3'b010; b = 3'b001;                              //  A > B
    #2 a = 3'b011; b = 3'b011;                              //  A == B
    #2 a = 3'b100; b = 3'b110;                              //  A < B
    #2 a = 3'b110; b = 3'b101;                              //  A > B
    #2 a = 3'b111; b = 3'b111;                              //  A == B

    #50 $finish;
end
initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule
