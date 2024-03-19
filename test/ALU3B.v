module ALU3B (
    input [2:0] A_in,
    input [2:0] B_in,
    input [1:0] SEL_in,
    output reg [3:0] ALU_out
);
    always @(*) begin
        case (SEL_in)
            2'd0 : begin ALU_out = A_in - B_in; end
            2'd1 : begin ALU_out = A_in + B_in; end  // SEL_in = 1 , ALU_out = SUMA
            2'd2 : begin ALU_out = A_in ^ B_in; end  // SEL_in = 2 , ALU_out = XOR
            2'd3 : begin ALU_out = A_in & B_in; end  // SEL_in = 3 , ALU_out = AND
            default: begin ALU_out = A_in - B_in; end // SEL_in = 0 , ALU_out = Resta, Default
        endcase
    end
endmodule