module bcd_adder(input [3:0] a, b, input cin, output [3:0] sum, output cout);
    reg [4:0] raw_sum;
    reg [5:0] corrected_sum;
    always @(*) begin
        raw_sum = {1'b0, a} + {1'b0, b} + cin;
        corrected_sum = {1'b0, raw_sum};
        if (raw_sum > 5'd9)
            corrected_sum = {1'b0, raw_sum} + 6'd6;
    end
    assign sum = corrected_sum[3:0];
    assign cout = corrected_sum[4];
endmodule
