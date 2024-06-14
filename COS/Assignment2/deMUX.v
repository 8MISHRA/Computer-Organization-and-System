// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

module deMUX_1to4(i, s, o);

    input i;
    input [0:1]s;
    output [0:3]o;

    wire s0_not, s1_not;

    assign s0_not = ~s[0];
    assign s1_not = ~s[1];

    assign o[0] = i & s0_not & s1_not;
    assign o[1] = i & s0_not & s[1];
    assign o[2] = i & s[0] & s1_not;
    assign o[3] = i & s[0] & s[1];

endmodule