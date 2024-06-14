`include "first.v"

module tb_first;
reg a;
wire b;
first f1
initial begin
    $monitor("input=%b\n, output=%b\n", a, b);
    #2 a=1'b0;
    #2 a=1'b1;
end

endmodule