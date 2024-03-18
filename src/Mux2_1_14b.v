module Mux2_1_14b(
    input[13:0] a,
    input[13:0] b,
    input sel,
    output reg [13:0] y
);
    
    always @(*) begin
        case (sel)
            2'd0 : begin y = a; end
            2'd1 : begin y = b; end
            default: begin y = a; end
        endcase 
    end
endmodule