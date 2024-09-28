`include "../ALUs/hack_alu.v"

module tb_hack;
    reg [15:0] X;
    reg [15:0] Y;
    reg zX, nX, zY, nY, f, no;
    wire [15:0] out;
    wire carry_out;

    hack_alu uut (
        .X(X),
        .Y(Y),
        .zX(zX),
        .nX(nX),
        .zY(zY),
        .nY(nY),
        .f(f),
        .no(no),
        .out(out),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("signals.vcd");
        $dumpvars(0);

        // Test case 1
        X = 16'h1234;
        Y = 16'h5678;
        zX = 0;
        nX = 0;
        zY = 0;
        nY = 0;
        f = 0;
        no = 1;
        #10;
        // caso de teste 2
        X = 16'h1234;
        Y = 16'h5678;
        zX = 0;
        nX = 0;
        zY = 0;
        nY = 0;
        f = 1;
        no = 0;
        #10;
        // caso de teste 3
        X = 16'h1234;
        Y = 16'h5678;
        zX = 0;
        nX = 0;
        zY = 1;
        nY = 0;
        f = 1;
        no = 0;
        #10;

        $finish;
    end
endmodule