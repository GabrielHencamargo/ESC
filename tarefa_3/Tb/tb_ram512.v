`include "../componentes/RAM512.v"

module tb_ram512;
  
  reg clk;
  
  reg [8:0] address;
  reg [15:0] data_in;
  reg write_enable;
  
  wire [15:0] data_out;
  
  ram512 uut (
  .address(address),
  .data_in(data_in),
  .write_enable(write_enable),
  .clk(clk),
  .data_out(data_out)
  );

  initial begin
  $display("RAM512 Testbench");
  $dumpfile("signals.vcd");
  $dumpvars(0, tb_ram512);
  clk = 0;
  address = 0;
  data_in = 0;
  write_enable = 0;

  #1 address = 0;
  #1 data_in = 16'h1234;
  #1 write_enable = 1;
  #1 write_enable = 0;
  
  #1 address = 0;
  #1 write_enable = 0;
  
  #5 $finish;
  end

  always #1 clk = ~clk;

  initial begin
  $monitor(clk, address, data_in, write_enable, data_out);
  end

endmodule
