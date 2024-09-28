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

    #1 address = 4;
    #1 data_in = 16'h2468;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 5;
    #1 data_in = 16'hACE0;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 6;
    #1 data_in = 16'hBEEF;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 7;
    #1 data_in = 16'hC0DE;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 8;
    #1 data_in = 16'hF00D;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 9;
    #1 data_in = 16'hCAFE;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 10;
    #1 data_in = 16'hBEEB;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 11;
    #1 data_in = 16'hABCD;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 12;
    #1 data_in = 16'h1234;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 13;
    #1 data_in = 16'h5678;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 14;
    #1 data_in = 16'h9ABC;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 15;
    #1 data_in = 16'hDEF0;
    #1 write_enable = 1;
    #1 write_enable = 0;

    #1 address = 0;
    #1 write_enable = 0;

    #1 address = 1;
    #1 write_enable = 0;

    #1 address = 2;
    #1 write_enable = 0;

    #1 address = 3;
    #1 write_enable = 0;

    #1 address = 4;
    #1 write_enable = 0;

    #1 address = 5;
    #1 write_enable = 0;

    #1 address = 6;
    #1 write_enable = 0;

    #1 address = 7;
    #1 write_enable = 0;

    #1 address = 8;
    #1 write_enable = 0;

    #1 address = 9;
    #1 write_enable = 0;

    #1 address = 10;
    #1 write_enable = 0;

    #1 address = 11;
    #1 write_enable = 0;

    #1 address = 12;
    #1 write_enable = 0;

    #1 address = 13;
    #1 write_enable = 0;

    #1 address = 14;
    #1 write_enable = 0;

    #1 address = 15;
    #1 write_enable = 0;

    #5 $finish;
end