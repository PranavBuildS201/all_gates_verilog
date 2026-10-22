timescale 1ns/1ps
module tb_encoder_4to2;
    reg [3:0] din; wire [1:0] y; integer k;
    encoder_4to2 dut(.din(din),.y(y));
    initial begin
        for(k=0;k<16;k=k+1) begin
            din=k; #10;
            if(din==1) begin if(y!==0) $display("FAIL din=%b y=%b",din,y); end
            else if(din==2) begin if(y!==1) $display("FAIL din=%b y=%b",din,y); end
            else if(din==4) begin if(y!==2) $display("FAIL din=%b y=%b",din,y); end
            else if(din==8) begin if(y!==3) $display("FAIL din=%b y=%b",din,y); end
            $display("din=%b y=%b",din,y);
        end
        $finish;
    end
endmodule
