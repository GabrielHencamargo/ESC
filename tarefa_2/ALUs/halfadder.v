module halfadder(
    input a,
    input b,
    output soma,
    output carry
);

    assign soma = a ^ b; // XOR entre a e b é a soma entre os dois numeros
    assign carry = a & b; // o carry é a operação AND entre a e b
endmodule