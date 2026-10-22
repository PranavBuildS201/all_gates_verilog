`timescale 1ns/1ps
module tb_mux_2to1_variants;
    reg [1:0] I; reg S;
    wire Y_gate, Y_behavioral, Y_existing;
    mux_2to1_gatelevel g(.I(I),.S(S),.Y(Y_gate));
    mux_2to1_behavioral b(.I(I),.S(S),.Y(Y_behavioral));
    mux_2to1 existing(.i(I),.s(S),.y(Y_existing));
    integer k;
    initial begin
        for(k=0;k<8;k=k+1) begin
            {I,S}=k; #5;
            if(Y_gate!==Y_behavioral || Y_gate!==Y_existing)
                $display("FAIL I=%b S=%b gate=%b behavioral=%b existing=%b",I,S,Y_gate,Y_behavioral,Y_existing);
            else $display("PASS I=%b S=%b Y=%b",I,S,Y_gate);
        end
        $finish;
    end
endmodule
