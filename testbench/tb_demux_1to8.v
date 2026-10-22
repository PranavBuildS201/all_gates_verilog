timescale 1ns/1ps
module tb_demux_1to8;
    reg D; reg [2:0] S; wire [7:0] Y; integer k;
    demux_1to8 dut(.D(D),.S(S),.Y(Y));
    initial begin
        D=1'b1;
        for(k=0;k<8;k=k+1) begin S=k; #10; if(Y !== (8'b1 << k)) $display("FAIL S=%0d Y=%b",S,Y); else $display("PASS S=%0d Y=%b",S,Y); end
        D=0; #10; if(Y!==8'b0) $display("FAIL D=0"); else $display("PASS D=0");
        $finish;
    end
endmodule
