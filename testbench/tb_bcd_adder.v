`timescale 1ns/1ps
module tb_bcd_adder;
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    reg [4:0] expected;
    integer x,y,c,total;

    bcd_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

    initial begin
        for (x=0; x<10; x=x+1)
            for (y=0; y<10; y=y+1)
                for (c=0; c<2; c=c+1) begin
                    a=x; b=y; cin=c;
                    total=x+y+c;
                    if (total < 10) expected=total;
                    else expected=16+(total-10);
                    #1;
                    if ({cout,sum} !== expected)
                        $display("FAIL a=%0d b=%0d cin=%0d expected=%b actual=%b",a,b,cin,expected,{cout,sum});
                end
        $display("BCD adder test completed.");
        $finish;
    end
endmodule
