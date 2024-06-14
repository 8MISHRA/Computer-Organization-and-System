// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

module decoder_3to8(i, d);
    input [0:2] i;
    output [0:7] d;


wire not_a, not_b, not_c;


assign not_a = ~i[0];
assign not_b = ~i[1];
assign not_c = ~i[2];


assign d[0] = (not_a & not_b & not_c);
assign d[1] = (not_a & not_b & i[2]);
assign d[2] = (not_a & i[1] & not_c);
assign d[3] = (not_a & i[1] & i[2]);
assign d[4] = (i[0] & not_b & not_c);
assign d[5] = (i[0] & not_b & i[2]);
assign d[6] = (i[0] & i[1] & not_c);
assign d[7] = (i[0] & i[1] & i[2]);

endmodule