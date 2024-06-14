// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

module comparator3bit(a, b, less, equal, greater);
input [2:0] a, b;
output less, equal, greater;

assign less = (a < b);
assign equal = (a == b);
assign greater = (a > b);

endmodule
