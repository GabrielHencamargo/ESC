`include "../componentes/bit.v"

module tb_bit_register;

reg clk;
reg reset;
reg enable;
reg data_in;

wire data_out;

bit_register uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .data_in(data_in),
    .data_out(data_out)
);

always begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
end

initial begin
    $dumpfile("signals.vcd");
    $dumpvars(0);  
    reset = 1'b1;
    enable = 1'b0;
    data_in = 1'b1;

    #10;
    reset = 1'b0;

    #10;
    enable = 1'b1;
    data_in = 1'b1;

    #20;

    enable = 1'b0;

    #20;

    $finish;
end

endmodule
