// Author: Divyansh Mishra and Narayan Jat
// Submission Date: 7 February 2024
// Updation Date: 25 Feb 2024

module encoder8to3 (i, o);
    input [0:7] i;
    output [0:2]o;

    wire [0:7]w;

    assign w[1] = (~i[0] & i[1] & ~i[2] & ~i[3] & ~i[4] & ~i[5] & ~i[6] & ~i[7]);
    assign w[2] = (~i[0] & ~i[1] & i[2] & ~i[3] & ~i[4] & ~i[5] & ~i[6] & ~i[7]);
    assign w[3] = (~i[0] & ~i[1] & ~i[2] & i[3] & ~i[4] & ~i[5] & ~i[6] & ~i[7]);
    assign w[4] = (~i[0] & ~i[1] & ~i[2] & ~i[3] & i[4] & ~i[5] & ~i[6] & ~i[7]);
    assign w[5] = (~i[0] & ~i[1] & ~i[2] & ~i[3] & ~i[4] & i[5] & ~i[6] & ~i[7]);
    assign w[6] = (~i[0] & ~i[1] & ~i[2] & ~i[3] & ~i[4] & ~i[5] & i[6] & ~i[7]);
    assign w[7] = (~i[0] & ~i[1] & ~i[2] & ~i[3] & ~i[4] & ~i[5] & ~i[6] & i[7]);
    
    assign o[0] = w[7] | w[5] | w[3] | w[1];
    assign o[1] = w[7] | w[6] | w[3] | w[2];
    assign o[2] = w[7] | w[6] | w[5] | w[4];

endmodule