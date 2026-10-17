`timescale 1ns/1ps
module tb_decoder_2to4;
    reg [1:0] a;
    reg en;
    wire [3:0] y;

    decoder_2to4 uut (.a(a), .en(en), .y(y));

    initial begin
        $monitor("t=%0t en=%b a=%b y=%b", $time, en, a, y);
        en=1; a=2'b00; #10;
        en=1; a=2'b01; #10;
        en=1; a=2'b10; #10;
        en=1; a=2'b11; #10;
        en=0; a=2'b10; #10;
        $finish;
    end
endmodule
