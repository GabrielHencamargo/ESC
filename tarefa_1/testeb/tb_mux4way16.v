`include "../portas/mux4way16.v"
module tb_mux4way16;

    // Inputs
    reg [15:0] in_a;
    reg [15:0] in_b;
    reg [15:0] in_c;
    reg [15:0] in_d;
    reg [3:0] sel;
    
    // Output
    wire [15:0] out_y;

    // Instantiate the 16-bit mux
    mux uut(.a(in_a), .b(in_b), .c(in_c), .d(in_d), .sel(sel), .y(out_y));

    // Simulation
    initial begin
        $display("Testbench for the 16-bit MUX4way");
        $dumpfile("signals.vcd");
        $dumpvars(0, tb_mux4way16);

        in_a = 0; in_b = 0;in_c = 0 ; in_d = 0; sel = 2'b00;
        #10;
        
        in_a = 1; in_b = 0;in_c = 0 ; in_d = 0; sel = 2'b00;
        #10;

        in_a = 0; in_b = 1;in_c = 0 ; in_d = 0; sel = 2'b01;
        #10;

        in_a = 1; in_b = 0;in_c = 1 ; in_d = 1; sel = 2'b01;
        #10;

        in_a = 1; in_b = 1;in_c = 0 ; in_d = 1; sel = 2'b10;
        #10;

        in_a = 0; in_b = 0;in_c = 1; in_d = 0; sel = 2'b10;
        #10;

        in_a = 1; in_b = 1;in_c = 1 ; in_d = 0; sel = 2'b11;
        #10;
        in_a = 0; in_b = 0;in_c = 0 ; in_d = 1; sel = 2'b11;
        #10;
        $finish;
    end

    // Monitor the signals
    initial begin
        $monitor("t=%03d: \ta=%b, b=%b, c =%b, d= %b, sel=%b, y=%b\n", $time, in_a, in_b,in_c,in_d, sel, out_y);
    end

endmodule