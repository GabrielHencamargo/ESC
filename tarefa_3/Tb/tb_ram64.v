`include "../componentes/RAM64.v"

module tb_ram64;
  
  reg clk;
  reg rst;

  reg [5:0] addr;
  reg [15:0] data_in;
  wire [15:0] data_out;

  ram64 uut (
    .address(addr),
    .data_in(data_in),
    .write_enable(1'b1),
    .clk(clk),
    .data_out(data_out)
  );

  initial begin
    $display("RAM64 Testbench");
    $dumpfile("signals.vcd");
    $dumpvars(0, tb_ram64);
    clk = 0;
    rst = 0;
    addr = 0;
    data_in = 0;

    #1 rst = 1;
    #1 rst = 0;
    #1 addr = 2;
    #1 data_in = 8;
    #1 addr = 4;
    #1 data_in = 16;
    #1 addr = 6;
    #1 data_in = 32;
    #1 addr = 2;
    #1 data_in = 64;
    #1 addr = 4;
    #1 data_in = 128;
    #1 addr = 6;
    #1 data_in = 255;
    #1 addr = 2;
    #1 addr = 4;
    #1 addr = 6;

    #5 $finish;
  end

  initial begin
    $monitor(rst, clk, addr, data_in, data_out);
  end

  always #1 clk = ~clk;

endmodule
