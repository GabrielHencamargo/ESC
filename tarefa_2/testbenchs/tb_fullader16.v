`include "../ALUs/add16.v"

module tb_add16bits;
    reg [15:0] a;
    reg [15:0] b;
    reg carry_in;
    wire [15:0] soma;
    wire carry_out;

    add16bits uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(soma), 
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        // Caso de teste 1
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        carry_in = 0;
        #10;
        $display("Caso de teste 1: a = %b, b = %b, carry_in = %b, soma = %b, carry_out = %b", a, b, carry_in, soma, carry_out);

        // Caso de teste 2
        a = 16'b1111111111111111;
        b = 16'b0000000000000001;
        carry_in = 0;
        #10;
        $display("Caso de teste 2: a = %b, b = %b, carry_in = %b, soma = %b, carry_out = %b", a, b, carry_in, soma, carry_out);

        // Caso de teste 3
        a = 16'b1111111111111111;
        b = 16'b1111111111111111;
        carry_in = 1;
        #10;
        $display("Caso de teste 3: a = %b, b = %b, carry_in = %b, soma = %b, carry_out = %b", a, b, carry_in, soma, carry_out);

        $finish;
    end
endmodule