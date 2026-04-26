module top (
    input  [7:0] a, b, c, d, // As 4 entradas de 1 byte
    input  [1:0] sel,        // Seletor de 2 bits
    output [7:0] out         // Saída de 1 byte
);
    wire [7:0] w_ab, w_cd;
    
    mux2byte mux_semi1 (a, b, sel[0], w_ab);
    mux2byte mux_semi2 (c, d, sel[0], w_cd);
    mux2byte mux_final (w_ab, w_cd, sel[1], out);

endmodule

module mux2byte (
    input  [7:0] a, b, 
    input        sel, 
    output [7:0] out
);
    assign out = sel ? b : a;
endmodule
