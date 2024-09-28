module RAM8(input [2:0] endereco, input [15:0] dados_entrada, input enable, input clk, output [15:0] dados_saida);
    reg [15:0] memoria [0:7];
    
    always @(posedge clk) begin
        if (enable)
            memoria[endereco] <= dados_entrada;
    end
    
    assign dados_saida = memoria[endereco];
    
endmodule