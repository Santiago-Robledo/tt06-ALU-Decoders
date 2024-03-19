module Decod_Gray (
    input [3:0] num_in,
    output reg [6:0] Dec_Iz,
    output reg [6:0] Dec_Der
);
    always @(*) begin
        case (num_in)
               4'd0 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1111110; end // Gray 0
               4'd1 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b0110000; end // Gray 1
               4'd2 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1111001; end // Gray 3
               4'd3 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1101101; end // Gray 2
               4'd4 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1011111; end // Gray 6
               4'd5 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1110000; end // Gray 7
               4'd6 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1011011; end // Gray 5
               4'd7 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b0110011; end // Gray 4
               4'd8 : begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1101101; end // Gray 12
               4'd9 : begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1111001; end // Gray 13
               4'd10: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1011011; end // Gray 15
               4'd11: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b0110011; end // Gray 14
               4'd12: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1111110; end // Gray 10
               4'd13: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b0110000; end // Gray 11
               4'd14: begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1111011; end // Gray 9
               4'd15: begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1111111; end // Gray 8
            default : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b0000000; end // Todos apagados default
        endcase
    end
endmodule