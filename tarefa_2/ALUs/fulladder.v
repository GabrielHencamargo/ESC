`include "../ALUs/halfadder.v"

module fulladder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);

    wire s1, c1, c2;

    halfadder uut1(.a(a), .b(b), .soma(s1), .carry(c1));
    halfadder uut2(.a(s1), .b(carry_in), .soma(sum), .carry(c2));
    assign carry_out = c1 | c2;
endmodule