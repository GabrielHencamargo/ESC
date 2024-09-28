`include "../componentes/DFF.v"
module tb_DFF;
    reg D, CLK;
    wire Q;

    DFF DUT (.D(D), .CLK(CLK), .Q(Q));

    initial begin
        CLK = 0;
        forever #1 CLK = ~CLK;
    end

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        D = 0;
        #5;
        D = 1;
        #10;
        D = 0;
        #15;
        $finish;
    end

endmodule