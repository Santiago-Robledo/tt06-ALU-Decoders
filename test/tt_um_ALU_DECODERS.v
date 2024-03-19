/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_ALU_DECODERS (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
    
  // Wire auxiliary variables signals for concatenation.
    wire [13:0] MUX_out; // General vector for the exit of our proyect.
    
  // Instantiation of the main module
    Proyecto_Final P_TOP (.Num_A_in(ui_in[7:5]), .Num_B_in(ui_in[4:2]), .Sel_A_in(ui_in[1:0]), .Sel_M_in(uio_in[7]), .Disp_out(MUX_out));

    // Assigning the auxiliary wire to the corresponding outputs.
    assign {uo_out,uio_out[6:1]} = MUX_out;

  // Configuration of the in/out ports for the proyect.
    assign uio_oe = 8'b01111111; //uio_in[7] and uio_out[6:0].
    assign uio_out[7] = 1'b0;    //We used uio_in[7] as input.
    assign uio_out[0] = 1'b0;    //We didn't used this output.
endmodule
