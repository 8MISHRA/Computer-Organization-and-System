module Logic_XNOR(a, b, c);
input a, b;
output c;
assign c = ~(a ^ b);
endmodule 
