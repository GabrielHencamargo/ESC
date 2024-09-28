module mux (
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    input [15:0] d,
    input [3:0] sel,
    output reg [15:0] y
);
    always @(*) begin
        case (sel)
            4'b0000: y = a;
            4'b0001: y = b;
            4'b0010: y = c;
            4'b0011: y = d;
            default: y = 16'b0;
        endcase
    end
endmodule
