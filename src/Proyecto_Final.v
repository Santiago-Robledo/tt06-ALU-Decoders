module Proyecto_Final (
    input CLK_in,                         //Por defecto son wire
    input [2:0] Num_A_in,                 //Por defecto son wire  (3 bits Entrada)
    input [2:0] Num_B_in,                 //Por defecto son wire  (3 bits Entrada)
    input [1:0] Sel_A_in,                 //Por defecto son wire  (2 bits Entrada)
    input       Sel_M_in,                 //Por defecto son wire  (1 bit Entrada)
    output [13:0] Disp_out,               //Por defecto son wire  (14 bits Salida)
    output     Disp_on_out                //Por defecto son wire  (1 bit Salida)
);
    //Variables de apoyo de señales tipo Wire
    wire [3:0] ALU_out; //Salida del ALU
    wire [6:0] Dec_Iz_O, Dec_Der_O;   //Salidas decodificador Octal.
    wire [6:0] Dec_Iz_G, Dec_Der_G;   //Salidas decodificador Octal.
    wire [13:0] C_Octal, C_Gray;      //Variables para la concatenación.
    //Concatenación de las salidas de los decodificadores
    assign C_Octal = {Dec_Iz_O,Dec_Der_O};
    assign C_Gray = {Dec_Iz_G, Dec_Der_G};
    //Instanciaciones de los componentes
    ALU3B ALU_U1 (.A_in(Num_A_in), .B_in(Num_B_in), .SEL_in(Sel_A_in), .ALU_out(ALU_out));
    Decod_Octal Octal_U2 (.num_in(ALU_out), .Dec_Iz(Dec_Iz_O), .Dec_Der(Dec_Der_O));
    Decod_Gray Gray_U3 (.num_in(ALU_out), .Dec_Iz(Dec_Iz_G), .Dec_Der(Dec_Der_G));
    Mux2_1_14b MUX_U4 (.a(C_Octal), .b(C_Gray), .sel(Sel_M_in), .y(Disp_out));

    //Conección del CLK a la salida
    assign Disp_on_out = CLK_in;
endmodule