`include "cpu.v"

module CPU_tb;
    reg [15:0] inM;
    reg [15:0] instruction;
    reg clk;
    reg reset;
    wire [15:0] outM;
    wire writeM;
    wire [14:0] addressM;
    wire [14:0] pc;

    CPU cpu(.inM(inM), .instruction(instruction), .clk(clk), .reset(reset),
            .outM(outM), .writeM(writeM), .addressM(addressM), .pc(pc));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        clk = 0;
        reset = 1;
        #10 reset = 0;

        instruction = 16'b0000000000001111;
        #10;

        instruction = 16'b1110110000010000;
        #10;

        instruction = 16'b0000000000000001;
        #10;

        instruction = 16'b1110001100001000;
        inM = 16'hABCD;
        #10;

        instruction = 16'b1110000010000000;
        inM = 16'h1234;
        instruction = 16'h5678;
        #10;

        instruction = 16'b1111000000010000;
        inM = 16'hABCD;
        instruction = 16'h1234;
        #10;

        instruction = 16'b1111000000001000;
        instruction = 16'h0001;
        #10;

        instruction = 16'b1110000010001000;
        instruction = 16'h0001;
        #10;

        #50 $finish;
    end
endmodule

