module d_ff_sync_reset(input clk, rst, D, output reg Q);
    always @(posedge clk) begin
        if (rst)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule
