timescale 1ns/1ps
module tb_mux_32to1;
    reg [31:0] I; reg [4:0] S; wire Y_indexed, Y_case; integer k;
    mux_32to1_indexed u1(.I(I),.S(S),.Y(Y_indexed));
    mux_32to1_case u2(.I(I),.S(S),.Y(Y_case));
    initial begin
        I=32'hA5A5A5A5;
        for(k=0;k<32;k=k+1) begin
            S=k; #10;
            if(Y_indexed !== Y_case || Y_indexed !== I[S])
                $display("FAIL S=%0d I[S]=%b indexed=%b case=%b",S,I[S],Y_indexed,Y_case);
            else $display("PASS S=%0d Y=%b",S,Y_indexed);
        end
        I=32'hFFFFFFFF; #10;
        for(k=0;k<32;k=k+1) begin S=k; #1; if(Y_indexed!==1'b1 || Y_case!==1'b1) $display("FAIL all-ones S=%0d",S); end
        $finish;
    end
endmodule
