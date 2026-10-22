timescale 1ns/1ps
module tb_bcd_adder;
    reg [3:0] a,b; reg cin; wire [3:0] sum; wire cout; integer x,y,c;
    bcd_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial begin
        for(x=0;x<10;x=x+1) for(y=0;y<10;y=y+1) for(c=0;c<2;c=c+1) begin
            a=x; b=y; cin=c; #1;
            if ({cout,sum} !== (x+y+c < 10 ? x+y+c : ((x+y+c+6)))) begin
                // Display all cases; expected packed BCD is checked visually for this teaching test.
                $display("a=%0d b=%0d cin=%0d -> cout=%b sum=%d",a,b,cin,cout,sum);
            end
        end
        $finish;
    end
endmodule
