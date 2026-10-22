module mux_32to1_indexed(input [31:0] I, input [4:0] S, output Y);
    assign Y = I[S];
endmodule
