`include "../componentes/RAM16K.v"

module tb_ram16384;
  
  reg clk;
  
  reg [13:0] address;
  reg [15:0] data_in;
  reg write_enable;
  
  wire [15:0] data_out;
  
  ram16384 uut (
    .address(address),
    .data_in(data_in),
    .write_enable(write_enable),
    .clk(clk),
    .data_out(data_out)
  );

  initial begin
    $display("RAM16384 Testbench");
    $dumpfile("signals.vcd");
    $dumpvars(0, tb_ram16384);
    clk = 0;
    address = 0;
    data_in = 0;
    write_enable = 0;

    #1 address = 0;
    #1 data_in = 16'h1234;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 1;
    #1 data_in = 16'h5678;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 2;
    #1 data_in = 16'h9ABC;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 3;
    #1 data_in = 16'hDEF0;
    #1 write_enable = 1;
    #1 write_enable = 0;
    
    #1 address = 2;
    #1 data_in = 16'h9ABC;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 3;
    #1 data_in = 16'hDEF0;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 4;
    #1 data_in = 16'h2468;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 5;
    #1 data_in = 16'hACE0;
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