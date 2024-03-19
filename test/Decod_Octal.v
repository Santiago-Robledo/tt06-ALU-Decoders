module Decod_Octal (
    input [3:0] num_in,
    output reg [6:0] Dec_Iz,
    output reg [6:0] Dec_Der
);
    always @(*) begin
        case (num_in)
               4'd0 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1111110; end // Octal 0
               4'd1 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b0110000; end // Octal 1
               4'd2 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1101101; end // Octal 2
               4'd3 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1111001; end // Octal 3
               4'd4 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b0110011; end // Octal 4
               4'd5 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1011011; end // Octal 5
               4'd6 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1011111; end // Octal 6
               4'd7 : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b1110000; end // Octal 7
               4'd8 : begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1111110; end // Octal 10
               4'd9 : begin Dec_Iz = 7'b0110000; Dec_Der = 7'b0110000; end // Octal 11
               4'd10: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1101101; end // Octal 12
               4'd11: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1111001; end // Octal 13
               4'd12: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b0110011; end // Octal 14
               4'd13: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1011011; end // Octal 15
               4'd14: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1011111; end // Octal 16
               4'd15: begin Dec_Iz = 7'b0110000; Dec_Der = 7'b1110000; end // Octal 17
            default : begin Dec_Iz = 7'b0000000; Dec_Der = 7'b0000000; end // Todos apagados default
        endcase
    end
endmodule