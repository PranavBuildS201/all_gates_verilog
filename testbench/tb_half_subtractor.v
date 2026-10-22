timescale 1ns/1ps
module tb_half_subtractor;
    reg A,B; wire Diff,Borrow; integer k;
    half_subtractor dut(.A(A),.B(B),.Diff(Diff),.Borrow(Borrow));
    initial begin
        for(k=0;k<4;k=k+1) begin {A,B}=k; #10; $display("A=%b B=%b Diff=%b Borrow=%b",A,B,Diff,Borrow); end
        $finish;
    end
endmodule
