`timescale 1ns/1ps
module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;

    full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $monitor("t=%0t a=%b b=%b cin=%b sum=%b cout=%b", $time, a, b, cin, sum, cout);
        {a,b,cin}=3'b000; #10;
        {a,b,cin}=3'b001; #10;
        {a,b,cin}=3'b010; #10;
        {a,b,cin}=3'b011; #10;
        {a,b,cin}=3'b100; #10;
        {a,b,cin}=3'b101; #10;
        {a,b,cin}=3'b110; #10;
        {a,b,cin}=3'b111; #10;
        $finish;
    end
endmodule
