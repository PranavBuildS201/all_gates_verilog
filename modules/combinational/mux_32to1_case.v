module mux_32to1_case(input [31:0] I, input [4:0] S, output reg Y);
    always @(*) begin
        case (S)
            5'd0: Y=I[0];   5'd1: Y=I[1];   5'd2: Y=I[2];   5'd3: Y=I[3];
            5'd4: Y=I[4];   5'd5: Y=I[5];   5'd6: Y=I[6];   5'd7: Y=I[7];
            5'd8: Y=I[8];   5'd9: Y=I[9];   5'd10: Y=I[10]; 5'd11: Y=I[11];
            5'd12: Y=I[12]; 5'd13: Y=I[13]; 5'd14: Y=I[14]; 5'd15: Y=I[15];
            5'd16: Y=I[16]; 5'd17: Y=I[17]; 5'd18: Y=I[18]; 5'd19: Y=I[19];
            5'd20: Y=I[20]; 5'd21: Y=I[21]; 5'd22: Y=I[22]; 5'd23: Y=I[23];
            5'd24: Y=I[24]; 5'd25: Y=I[25]; 5'd26: Y=I[26]; 5'd27: Y=I[27];
            5'd28: Y=I[28]; 5'd29: Y=I[29]; 5'd30: Y=I[30]; 5'd31: Y=I[31];
            default: Y=1'b0;
        endcase
    end
endmodule
