`include "../portas/gor16.v"

module tb_gor16;

    //inputs
    reg [15:0] in_a;
    reg [15:0] in_b;
    //output
    wire [15:0] out_y;

    //instancia da UUT( Unit Under Test)
    gor16 uut(.a(in_a), .b(in_b), .y(out_y));

    //como os sinais irao variar durante a simulaçao
    initial begin
        $display("Testbench para o gate OR16 combinacional");
        $dumpfile("signals.vcd");
        $dumpvars(0,tb_gor16);

        # 0 in_a = 0; in_b = 0;
        # 10 in_a = 0; in_b = 1;
        # 10 in_a = 1; in_b = 0;
        # 10 in_a = 1; in_b = 1;

        # 10 $finish;
    end

    // Monitora os sinais
    initial begin
        $monitor("t=%03d: \ta=%d, b = %d, y = %d \n", $time, in_a,in_b,out_y);
    end

endmodule