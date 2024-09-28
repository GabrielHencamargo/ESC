`include "../portas/mux16.v"
module tb_mux16;

    // Inputs
    reg [15:0] in_a;
    reg [15:0] in_b;
    reg sel;
    
    // Output
    wire [15:0] out_y;

    // Instantiate the 16-bit mux
    mux uut(.a(in_a), .b(in_b), .sel(sel), .y(out_y));

    // Simulation
    initial begin
        $display("Testbench for the 16-bit MUX");
        $dumpfile("signals.vcd");
        $dumpvars(0, tb_mux16);

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
        $monitor("t=%03d: \ta=%b, b=%b, sel=%b, y=%b\n", $time, in_a, in_b, sel, out_y);
    end

endmodule