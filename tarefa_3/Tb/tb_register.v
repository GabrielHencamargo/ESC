`include "../componentes/register.v"

module tb_register;

    reg clk;
    reg reset;
    reg enable;
    reg [15:0] data_in;
    wire [15:0] data_out;

    register uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .data_in(data_in),
        .data_out(data_out)
    );

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        clk = 0;
        reset = 1;
        enable = 0;
        data_in = 16'b0;

        #10 reset = 0;

        #10 enable = 1;
        data_in = 16'b1010101010101010;

        #10 enable = 0;
        data_in = 16'b1111000011110000;

        #10 enable = 1;
        data_in = 16'b0101010101010101;

        #10 enable = 0;
        data_in = 16'b0000111100001111;

        #10 $finish;
    end

    always #5 clk = ~clk;

endmodule