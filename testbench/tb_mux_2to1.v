`timescale 1ns/1ps
module tb_mux_2to1;
    reg a, b, sel;
    wire y;

    mux_2to1 uut (.a(a), .b(b), .sel(sel), .y(y));

    initial begin
        $monitor("t=%0t a=%b b=%b sel=%b y=%b", $time, a, b, sel, y);
        a=0; b=0; sel=0; #10;
        a=1; b=0; sel=0; #10;
        a=0; b=1; sel=1; #10;
        a=1; b=0; sel=1; #10;
        $finish;
    end
endmodule
