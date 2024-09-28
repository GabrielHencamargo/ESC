`include "../portas/gnot16.v"

module tb_gnot16;

    //inputs
    reg [15:0]in_a;
    //output
    wire [15:0]out_y;

    //instancia da UUT( Unit Under Test)
    gnot16 uut(.a(in_a), .y(out_y));

    //como os sinais irao variar durante a simulaçao
    initial begin
        $display("Testbench para o gate NOT combinacional");
        $dumpfile("signals.vcd");
        $dumpvars(0,tb_gnot16);

        # 0 in_a = 0;
        # 10 in_a = 1;

        # 10 $finish;
    end

    // Monitora os sinais
    initial begin
        $monitor("t=%03d: \t a=%d, y = %d \n", $time, in_a,out_y);
    end

endmodule