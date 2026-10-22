module mux_2to1_gatelevel(input [1:0] I, input S, output Y);
    wire nS, a0, a1;
    not (nS, S);
    and (a0, I[0], nS);
    and (a1, I[1], S);
    or  (Y, a0, a1);
endmodule
