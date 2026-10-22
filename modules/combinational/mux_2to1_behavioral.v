module mux_2to1_behavioral(input [1:0] I, input S, output reg Y);
    always @(*) begin
        case (S)
            1'b0: Y = I[0];
            1'b1: Y = I[1];
            default: Y = 1'b0;
        endcase
    end
endmodule
