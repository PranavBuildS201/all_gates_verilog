module demux_1to8(input D, input [2:0] S, output reg [7:0] Y);
    always @(*) begin
        Y = 8'b0;
        Y[S] = D;
    end
endmodule
