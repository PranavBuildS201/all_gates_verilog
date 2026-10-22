timescale 1ns/1ps
module tb_comparator_4bit;
    reg [3:0] A,B; wire GT,EQ,LT;
    comparator_4bit dut(.A(A),.B(B),.GT(GT),.EQ(EQ),.LT(LT));
    initial begin
        A=4; B=4; #10;
        A=9; B=2; #10;
        A=1; B=12; #10;
        $finish;
    end
    initial $monitor("t=%0t A=%d B=%d GT=%b EQ=%b LT=%b",$time,A,B,GT,EQ,LT);
endmodule
