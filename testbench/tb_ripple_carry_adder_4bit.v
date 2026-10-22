timescale 1ns/1ps
module tb_ripple_carry_adder_4bit;
    reg [3:0] A,B; reg Cin; wire [3:0] Sum; wire Cout;
    ripple_carry_adder_4bit dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    initial begin
        A=0; B=0; Cin=0; #10;
        A=5; B=3; Cin=0; #10;
        A=15; B=1; Cin=0; #10;
        A=10; B=4; Cin=1; #10;
        $finish;
    end
    initial $monitor("t=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",$time,A,B,Cin,Sum,Cout);
endmodule
