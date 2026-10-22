timescale 1ns/1ps
module tb_sr_latch;
    reg S,R; wire Q,Qbar;
    sr_latch dut(.S(S),.R(R),.Q(Q),.Qbar(Qbar));
    initial begin
        S=0; R=1; #10; // establish reset state
        S=0; R=0; #10; // hold 0
        S=1; R=0; #10; // set
        S=0; R=0; #10; // hold 1
        S=0; R=1; #10; // reset
        S=1; R=1; #10; // invalid for NOR SR latch
        $finish;
    end
    initial $monitor("t=%0t S=%b R=%b Q=%b Qbar=%b",$time,S,R,Q,Qbar);
endmodule
