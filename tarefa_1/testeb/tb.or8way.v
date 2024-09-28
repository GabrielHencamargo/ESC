`include "../portas/or8way.v"
module tb_or8way;
//inputs
reg  in_a, in_b, in_c, in_d, in_e, in_f, in_g, in_h;
//output
wire out_y;

//instancia da UUT( Unit Under Test)
or8way uut(.a(in_a), .b(in_b), .c(in_c), .d(in_d), .e(in_e), .f(in_f), .g(in_g), .h(in_h), .y(out_y));

//como os sinais irao variar durante a simulaçao
initial begin
    $display("Testbench para o gate OR combinacional de 8 entradas");
    $dumpfile("signals.vcd");
    $dumpvars(0,tb_or8way);

    // Testa cada bit individualmente
    #10;
    in_a = 1; in_b = 0; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 0;
    #10;
    in_a = 0; in_b = 1; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 0;
    #10;
    in_a = 0; in_b = 0; in_c = 1; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 0;
    #10;
    in_a = 0; in_b = 0; in_c = 0; in_d = 1; in_e = 0; in_f = 0; in_g = 0; in_h = 0;
    #10;
    in_a = 0; in_b = 0; in_c = 0; in_d = 0; in_e = 1; in_f = 0; in_g = 0; in_h = 0;
    #10;
    in_a = 0; in_b = 0; in_c = 0; in_d = 0; in_e = 0; in_f = 1; in_g = 0; in_h = 0;
    #10;
    in_a = 0; in_b = 0; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 1; in_h = 0;
    #10;
    in_a = 0; in_b = 0; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 1;

    #10 $finish;
end

    // Monitora os sinais
    initial begin
        $monitor("t=%03d: \tin = %b, out_y = %b \n", $time, in, out_y);
    end

endmodule