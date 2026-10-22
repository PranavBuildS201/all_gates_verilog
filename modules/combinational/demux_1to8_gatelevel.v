module demux_1to8_gatelevel(input D, input [2:0] S, output [7:0] Y);
    wire n0, n1, n2;
    not (n0, S[0]);
    not (n1, S[1]);
    not (n2, S[2]);
    and (Y[0], D, n2, n1, n0);
    and (Y[1], D, n2, n1, S[0]);
    and (Y[2], D, n2, S[1], n0);
    and (Y[3], D, n2, S[1], S[0]);
    and (Y[4], D, S[2], n1, n0);
    and (Y[5], D, S[2], n1, S[0]);
    and (Y[6], D, S[2], S[1], n0);
    and (Y[7], D, S[2], S[1], S[0]);
endmodule
