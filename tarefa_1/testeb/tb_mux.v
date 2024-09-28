`include "../portas/mux.v"
module tb_mux;

    // Inputs
    reg in_a;
    reg in_b;
    reg sel;
    
    // Output
    wire out_y;

    // inicia a UUT (Unit Under Test)
    mux uut(.a(in_a), .b(in_b), .sel(sel), .y(out_y));

    // Simulação
    initial begin
        $display("Testbench for the MUX");
        $dumpfile("signals.vcd");
        $dumpvars(0, tb_mux);

        in_a = 0; in_b = 0; sel = 0;
        #10;
        
        in_a = 0; in_b = 1; sel = 0;
        #10;
        
        in_a = 1; in_b = 0; sel = 0;
        #10;
        
        in_a = 1; in_b = 1; sel = 0;
        #10;
        
        in_a = 0; in_b = 0; sel = 1;
        #10;
        
        in_a = 0; in_b = 1; sel = 1;
        #10;
        
        in_a = 1; in_b = 0; sel = 1;
        #10;
        
        in_a = 1; in_b = 1; sel = 1;
        #10;
        
        $finish;
    end

    // Monitor the signals
    initial begin
        $monitor("t=%03d: \ta=%d, b=%d, sel=%d, y=%d\n", $time, in_a, in_b, sel, out_y);
    end

endmodule