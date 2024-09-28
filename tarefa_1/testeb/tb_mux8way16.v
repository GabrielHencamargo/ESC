`include "../portas/mux8way16.v"

module tb_mux8way16;
    // Inputs
    reg [15:0] in_a;
    reg [15:0] in_b;
    reg [15:0] in_c;
    reg [15:0] in_d;
    reg [15:0] in_e;
    reg [15:0] in_f;
    reg [15:0] in_g;
    reg [15:0] in_h;
    reg [4:0] sel;
    
    // Output
    wire [15:0] out_y;

    // Instantiate the 16-bit 8-way mux
    mux8way16 uut(.a(in_a), .b(in_b), .c(in_c), .d(in_d), .e(in_e), .f(in_f), .g(in_g), .h(in_h), .sel(sel), .y(out_y));

    // Simulation
    initial begin
        $display("Testbench for the 16-bit MUX8way");
        $dumpfile("signals.vcd");
        $dumpvars(0, tb_mux8way16);

        in_a = 0; in_b = 0; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 0; sel = 3'b000;
        #10;
        
        in_a = 1; in_b = 0; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 0; sel = 3'b000;
        #10;

        in_a = 0; in_b = 1; in_c = 0; in_d = 0; in_e = 0; in_f = 0; in_g = 0; in_h = 0; sel = 3'b001;
        #10;

        in_a = 1; in_b = 0; in_c = 1; in_d = 1; in_e = 1; in_f = 1; in_g = 1; in_h = 1; sel = 3'b001;
        #10;

        in_a = 1; in_b = 1; in_c = 0; in_d = 1; in_e = 0; in_f = 1; in_g = 0; in_h = 1; sel = 3'b010;
        #10;

        in_a = 0; in_b = 0; in_c = 1; in_d = 0; in_e = 1; in_f = 0; in_g = 1; in_h = 0; sel = 3'b010;
        #10;

        in_a = 1; in_b = 1; in_c = 1; in_d = 0; in_e = 1; in_f = 0; in_g = 1; in_h = 0; sel = 3'b011;
        #10;

        in_a = 0; in_b = 0; in_c = 0; in_d = 1; in_e = 0; in_f = 1; in_g = 0; in_h = 1; sel = 3'b011;
        #10;

        in_a = 1; in_b = 1; in_c = 0; in_d = 1; in_e = 1; in_f = 0; in_g = 1; in_h = 0; sel = 3'b100;
        #10;

        in_a = 0; in_b = 0; in_c = 1; in_d = 0; in_e = 1; in_f = 0; in_g = 1; in_h = 0; sel = 3'b100;
        #10;

        in_a = 1; in_b = 1; in_c = 1; in_d = 1; in_e = 0; in_f = 0; in_g = 0; in_h = 0; sel = 3'b101;
        #10;

        in_a = 0; in_b = 0; in_c = 0; in_d = 0; in_e = 1; in_f = 1; in_g = 1; in_h = 1; sel = 3'b101;
        #10;

        in_a = 1; in_b = 1; in_c = 0; in_d = 1; in_e = 0; in_f = 1; in_g = 0; in_h = 1; sel = 3'b110;
        #10;

        in_a = 0; in_b = 0; in_c = 1; in_d = 0; in_e = 1; in_f = 0; in_g = 1; in_h = 0; sel = 3'b110;
        #10;

        in_a = 1; in_b = 1; in_c = 1; in_d = 0; in_e = 1; in_f = 0; in_g = 1; in_h = 0; sel = 3'b111;
        #10;

        in_a = 0; in_b = 0; in_c = 0; in_d = 1; in_e = 0; in_f = 1; in_g = 0; in_h = 1; sel = 3'b111;
        #10;

        $finish;
    end
endmodule