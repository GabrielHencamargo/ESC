`include "../portas/gnot.v"

module tb_gnot;

    //inputs
    reg in_a;
    //output
    wire out_y;

    //instancia da UUT( Unit Under Test)
    gnot uut(.a(in_a), .y(out_y));

    //como os sinais irao variar durante a simulaçao
    initial begin
        $display("Testbench para o gate NOT combinacional");
        $dumpfile("signals.vcd");
        $dumpvars(0,tb_gnot);

        # 0 in_a = 0;
        # 10 in_a = 1;

        # 10 $finish;
    end

    // Monitora os sinais
    initial begin
        $monitor("t=%03d: \t a=%d, y = %d \n", $time, in_a,out_y);
    end

endmodule