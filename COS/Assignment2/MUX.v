// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

module multiplexer_2_1(d, s, o);
    input [0:1]d ;
    input s;
    output o;

    wire w1, w2, s_not;

    assign s_not = ~s;
    assign w1 = d[0] & s_not;
    assign w2 = d[1] & s;
    assign o = w1 | w2;

endmodule

