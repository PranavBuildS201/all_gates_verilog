timescale 1ns/1ps
module tb_jk_ff;
    reg clk,J,K; wire Q;
    jk_ff dut(.clk(clk),.J(J),.K(K),.Q(Q));
    initial clk=0;
    always #5 clk=~clk;
    initial begin
        J=0; K=0; #10; // hold
        J=1; K=0; #10; // set
        J=0; K=0; #10; // hold
        J=0; K=1; #10; // reset
        J=1; K=1; #20; // toggle on each rising edge
        $finish;
    end
    initial $monitor("t=%0t clk=%b J=%b K=%b Q=%b",$time,clk,J,K,Q);
endmodule
