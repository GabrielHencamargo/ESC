`include "../ALUs/fulladder.v"

module tb_fadder;
    reg A, B, C;           // Declara as entradas como registros (reg)
    wire Sum, Carry;    // Declara as saídas como fios (wire)

    // Instancia a uut
    fulladder uut(.a(A), .b(B), .carry_in(C), .sum(Sum), .carry_out(Carry));

    initial begin
        $display("Testbench para full adder estrutural");
        $dumpfile("signals.vcd");
        $dumpvars(0);
        
        # 0 A = 0; B = 0; C = 0;
        # 10 A = 0; B = 0; C = 1;
        # 10 A = 0; B = 1; C = 0;
        # 10 A = 0; B = 1; C = 1;
        # 10 A = 1; B = 0; C = 0;
        # 10 A = 1; B = 0; C = 1;
        # 10 A = 1; B = 1; C = 0;
        # 10 A = 1; B = 1; C = 1;
        
        # 10 $finish;
    end
      // Monitora os sinais
    initial begin
    $monitor("t=%03d: \ta=%d,b=%d,s=%d,c=%d",$time,A,B,Sum,Carry);
    end
endmodule