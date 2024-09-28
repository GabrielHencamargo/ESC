`include "gnand.v"

module tb_nand;

    //inputs
    reg in_a;
    reg in_b;
    //output
    wire out_y;

    //instancia da UUT( Unit Under Test)
    gnand uut(.a(in_a), .b(in_b), .y(out_y));

    //como os sinais irao variar durante a simulaçao
    initial begin
        $display("Testbench para o gate NAND combinacional");
        $dumpfile("signals.vcd");
        $dumpvars(0,tb_gnand);

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