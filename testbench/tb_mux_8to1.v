timescale 1ns/1ps
module tb_mux_8to1;
    reg [7:0] I; reg [2:0] S; wire Y; integer k;
    mux_8to1 dut(.I(I),.S(S),.Y(Y));
    initial begin
        I=8'b10100101;
        for(k=0;k<8;k=k+1) begin S=k; #10; if(Y !== I[S]) $display("FAIL S=%0d",S); else $display("PASS S=%0d Y=%b",S,Y); end
        $finish;
    end
endmodule
