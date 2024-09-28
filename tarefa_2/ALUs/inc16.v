`include "../ALUs/add16.v"

module inc16(
    input [15:0] entrada,
    input carry_in,
    output [15:0] saida
);
    add16bits uut (.a(entrada),.b(16'h0001),.carry_in(carry_in),.sum(saida));

endmodule
