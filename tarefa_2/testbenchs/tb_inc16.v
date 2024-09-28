`include "../ALUs/inc16.v"

module tb_inc16;

    reg [15:0] entrada;
    reg carry_in;
    wire [15:0] saida;

    inc16 uut (
        .entrada(entrada),
        .carry_in(carry_in),
        .saida(saida)
    );

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        entrada = 16'h0000;
        carry_in = 0;

        #10;

        // Test case 1
        entrada = 16'h0001;
        carry_in = 0;
        #10;

        // Test case 2
        entrada = 16'hFFFF;
        carry_in = 0;
        #10;

        // Test case 3
        entrada = 16'hFFFF;
        carry_in = 1;
        #10;

        // Add more test cases here if needed

        $finish;
    end

endmodule
