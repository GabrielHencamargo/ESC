module mux(input wire [15:0] a,input wire [15:0] b,input wire sel, output wire [15:0] y );
    assign y = sel ? b : a;
endmodule