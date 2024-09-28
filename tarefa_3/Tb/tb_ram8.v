`include "../componentes/RAM8.v"

module tb_ram8;

    reg [2:0] endereco;
    reg [15:0] dados_entrada;
    reg enable;
    reg clk;

    wire [15:0] dados_saida;

    RAM8 uut (
        .endereco(endereco),
        .dados_entrada(dados_entrada),
        .enable(enable),
        .clk(clk),
        .dados_saida(dados_saida)
    );

    always #1 clk = ~clk;

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        endereco = 0;
        dados_entrada = 16'b0000000000000000;
        enable = 0;
        clk = 0;

        #1 endereco = 2'b00;
        #1 dados_entrada = 16'b1010101010101010;
        #1 enable = 1;

        #1 endereco = 2'b00;
        #1 enable = 0;

        #1 endereco = 2'b01;
        #1 dados_entrada = 16'b1000000000000000;
        #1 enable = 1;

        #1 endereco = 2'b01;
        #1 enable = 0;

        #10 $finish;
    end

    always @(posedge clk) begin
        $display("Endereço: %b, Dados de Entrada: %b, Habilitar Escrita: %b, Clock: %b, Dados de Saída: %b", endereco, dados_entrada, enable, clk, dados_saida);
    end

endmodule
