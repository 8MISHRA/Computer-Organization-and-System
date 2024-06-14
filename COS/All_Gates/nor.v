module Logic_NOR(a, b, c);
input a,b;
output c;
assign c = ~(a | b);  
endmodule
