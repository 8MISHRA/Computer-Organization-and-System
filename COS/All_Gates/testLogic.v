`include "or.v"
module testLogic;
reg a, b;
wire c;
Logic_or f1(a,b,c);


initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #4 a=1'b0; b=1'b0;
    #4 a=1'b1; b=1'b0;
    #4 a=1'b0; b=1'b1;
    #4 a=1'b1; b=1'b1;
end


initial begin
 $dumpfile("ortest.vcd");
 $dumpvars;
 #100 $finish;
end

endmodule

