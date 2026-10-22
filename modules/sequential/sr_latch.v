// Active-high NOR-style SR latch behavioral model.
// S=R=1 is invalid; X is used to expose that condition in simulation.
module sr_latch(input S, R, output reg Q, output Qbar);
    always @(*) begin
        if (S && R)
            Q = 1'bx;
        else if (S)
            Q = 1'b1;
        else if (R)
            Q = 1'b0;
        // S=0 and R=0: retain Q (latch hold)
    end
    assign Qbar = ~Q;
endmodule
