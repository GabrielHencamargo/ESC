module gnot16( input wire [15:0] a, input wire [15:0] b, output wire [15:0] y1, output wire [15:0] y2);
    assign y1 = ~a;
    assign y2 = ~b;
endmodule