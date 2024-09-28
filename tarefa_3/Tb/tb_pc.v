`include "../componentes/pc.v"

module tb_pc;

    reg clk;
    reg load;
    reg increment;
    wire [15:0] count;

    pc uut (
        .clk(clk),
        .load(load),
        .increment(increment),
        .count(count)
    );

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);
        clk = 0;
        load = 0;
        increment = 0;

        #1 load = 1;
        #1 increment = 1;
        #1 load = 0;
        #1 increment = 0;
        #1 increment = 1 ;
        #10;

        $finish;

    end

    always #1 clk = ~clk;

endmodule