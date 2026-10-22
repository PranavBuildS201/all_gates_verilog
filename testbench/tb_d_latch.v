timescale 1ns/1ps
module tb_d_latch;
    reg D,en; wire Q;
    d_latch dut(.D(D),.en(en),.Q(Q));
    initial begin
        en=0; D=0; #10;
        en=1; D=1; #10;
        D=0; #10;
        en=0; D=1; #10; // Q holds 0
        D=0; #10;
        en=1; #10; // Q follows D=0
        $finish;
    end
    initial $monitor("t=%0t en=%b D=%b Q=%b",$time,en,D,Q);
endmodule
