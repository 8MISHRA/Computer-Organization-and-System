module Logic_NAND(a, b, c);
input a, b;
output c
assign c = ~(a & b);
endmodule