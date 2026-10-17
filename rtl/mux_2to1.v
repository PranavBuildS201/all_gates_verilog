// 2-to-1 Multiplexer (Dataflow Modeling)
module mux_2to1 (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule
