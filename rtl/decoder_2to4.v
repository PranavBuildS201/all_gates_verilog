// 2-to-4 Decoder with active-high outputs (Dataflow Modeling)
module decoder_2to4 (
    input  wire [1:0] a,
    input  wire       en,
    output wire [3:0] y
);
    assign y[0] = en & (a == 2'b00);
    assign y[1] = en & (a == 2'b01);
    assign y[2] = en & (a == 2'b10);
    assign y[3] = en & (a == 2'b11);
endmodule
