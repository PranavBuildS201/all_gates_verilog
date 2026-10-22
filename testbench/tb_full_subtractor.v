timescale 1ns/1ps
module tb_full_subtractor;
    reg A,B,Bin; wire Diff,Bout; integer k;
    full_subtractor dut(.A(A),.B(B),.Bin(Bin),.Diff(Diff),.Bout(Bout));
    initial begin
        for(k=0;k<8;k=k+1) begin {A,B,Bin}=k; #10; $display("A=%b B=%b Bin=%b Diff=%b Bout=%b",A,B,Bin,Diff,Bout); end
        $finish;
    end
endmodule
