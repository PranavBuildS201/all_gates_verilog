timescale 1ns/1ps
module tb_d_ff;
    reg clk,D; wire Q;
    d_ff dut(.clk(clk),.D(D),.Q(Q));
    initial clk=0;
    always #5 clk=~clk;
    initial begin
        D=0; #7; D=1; #10; D=0; #10; D=1; #10; $finish;
    end
    initial $monitor("t=%0t clk=%b D=%b Q=%b",$time,clk,D,Q);
endmodule
