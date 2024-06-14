//Implementing the and logic.
module Logic_and(a, b, c);  //Here a and b are the input and c is the output.
input a, b;
output c;
assign c = a & b;
endmodule


//Implementing the not logic.
module Logic_not(a, b); //Here a is the input and b is the output.
input a;
output b;
assign b = ~a;
endmodule


//Implementing the or logic.
module Logic_or(a, b, c);
input a, b;
output c;
assign c = a | b;
endmodule


//Implementing the XOR logic.
module Logic_XOR(a, b, c);
input a,b;
output c;
assign c = a ^ b;
endmodule


//Implementing the NOR logic.
module Logic_NOR(a, b, c);
input a,b;
output c;
assign c = ~(a | b);  // for nor logic ~(A | B)
endmodule

//Implementing the NOR logic.
module Logic_NOR(a, b, c);
input a,b;
output c;
assign c = ~(a | b);  // for nor logic ~(A | B)
endmodule


// Implementing the NAND gate.
module Logic_NAND(a, b, c);
input a, b;
output c
assign c = ~(a & b);
endmodule


// Implementing the XNOR gate.
module Logic_XNOR(a, b, c);
input a, b;
output c
assign c = ~(a ^ b);
endmodule