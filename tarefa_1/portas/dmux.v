module dmux(input wire x, input wire sel, output wire a, output wire b);
    assign sel ? b : a = x;
endmodule