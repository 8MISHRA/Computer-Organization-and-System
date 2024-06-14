`include "first.v"
module tb_first;
reg a, b;
wire c;
first f1(a,b,c);

initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #2 a=1'b0; b=1'b0;
    #2 a=1'b1; b=1'b0;
    #2 a=1'b0; b=1'b1;
    #2 a=1'b1; b=1'b1;
end

initial begin
 $dumpfile("out.vcd");
 $dumpvars;
 #100 $finish;
end

endmodule

// `include "first.v"
// module tb_first;
// reg a;
// wire b;
// first f1(a,b);

// initial begin
//     $monitor("input=%b, output=%b\n", a, b);
//     #2 a=1'b0;
//     #2 a=1'b1;
// end 

// initial begin
//     $dumpfile("out.vcd");
//     $dumpvars;
//     #5 $finish;
// end

// endmodule


// in reg we can hold a value for some time.
// in wire we assign or evaluate the value.