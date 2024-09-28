`include "../ALUs/halfadder.v"
module half_adder;
    reg A, B;           // Declara as entradas como registros (reg)
    wire Sum, Carry;    // Declara as saídas como fios (wire)

    // Instancia o módulo half_adder
    halfadder uut(.a(A), .b(B), .soma(Sum), .carry(Carry));

    // Processo de simulação
    initial begin
        // Exibe cabeçalho
        $display("A B | Sum Carry");
        $display("------------");
        $dumpfile("signals.vcd");
        $dumpvars(0);

        // Testa todos os casos possíveis
        A = 0; B = 0; #10; $display("%b %b |  %b   %b", A, B, Sum, Carry);
        A = 0; B = 1; #10; $display("%b %b |  %b   %b", A, B, Sum, Carry);
        A = 1; B = 0; #10; $display("%b %b |  %b   %b", A, B, Sum, Carry);
        A = 1; B = 1; #10; $display("%b %b |  %b   %b", A, B, Sum, Carry);

        $finish;
    end
    initial begin
    $monitor("t=%03d: \ta=%d,b=%d,s=%d,c=%d \n",$time,A,B,Sum,Carry);
  end
endmodule
