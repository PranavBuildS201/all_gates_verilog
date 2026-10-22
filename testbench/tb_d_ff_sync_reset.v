timescale 1ns/1ps
module tb_d_ff_sync_reset;
    reg clk,rst,D; wire Q;
    d_ff_sync_reset dut(.clk(clk),.rst(rst),.D(D),.Q(Q));
    initial clk=0;
    always #5 clk=~clk;
    initial begin
        rst=1; D=1; #12; rst=0; #10; D=0; #10; rst=1; #10; rst=0; D=1; #10; $finish;
    end
    initial $monitor("t=%0t clk=%b rst=%b D=%b Q=%b",$time,clk,rst,D,Q);
endmodule
