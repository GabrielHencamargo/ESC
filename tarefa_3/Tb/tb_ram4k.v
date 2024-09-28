`include "../componentes/RAM4K.v"

module tb_ram4k;
  
  // clock simulado
  reg clk;
  reg rst;

  // sinais
  reg [11:0] address;
  reg [15:0] data_in;
  reg write_enable;
  wire [15:0] data_out;

  // Instancia da UUT (Unit Under Test)
  RAM4K uut (address, data_in, write_enable, clk, data_out);

  // Como os sinais irao variar durante a simulacao
  initial begin
    $display("RAM4K");
    $dumpfile("signals.vcd");
    $dumpvars(0,tb_ram4k);
    clk = 0;
    rst = 0;
    address = 0;
    data_in = 0;
    write_enable = 0;

    #1 rst = 1;
    #1 rst = 0;
    #2 address = 0;
    #2 data_in = 1234;
    #2 write_enable = 1;
    #2 address = 1;
    #2 data_in = 5678;
    #2 write_enable = 1;
    #2 address = 2;
    #2 data_in = 9012;
    #2 write_enable = 1;
    #2 address = 3;
    #2 data_in = 3456;
    #2 write_enable = 1;
    #2 address = 0;
    #2 write_enable = 0;

    #5 $finish;
  end

  // Monitora os sinais
  initial begin
    $monitor(rst, clk, address, data_in, write_enable, data_out);
  end

  // gerador de clock com bloco always de unica linha
  always #1 clk = ~clk;

endmodule