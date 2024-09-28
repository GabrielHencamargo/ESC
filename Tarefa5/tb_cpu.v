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

    // Instancia o módulo CPU
    CPU cpu(.inM(inM), .instruction(instruction), .clk(clk), .reset(reset),
            .outM(outM), .writeM(writeM), .addressM(addressM), .pc(pc));

    // Gera o clock
    always #5 clk = ~clk;

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        // Inicializa variáveis
        clk = 0;
        reset = 1;
        #10 reset = 0;

        // Teste de uma instrução A: @15
        instruction = 16'b0000000000001111;
        #10;

        // Teste de uma instrução C: D=A
        instruction = 16'b1110110000010000;
        #10;

        // Teste de uma instrução A: @1
        instruction = 16'b0000000000000001;
        #10;

        // Teste de uma instrução C: M=D
        instruction = 16'b1110001100001000;
        inM = 16'hABCD;
        #10;

        // Finaliza a simulação
        #50 $finish;
    end
endmodule
