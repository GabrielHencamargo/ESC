`include "../ALUs/add16.v"

module hack_alu(
    input [15:0] X,
    input [15:0] Y,
    input zX, nX, zY, nY, f, no,
    output [15:0] out,
    output carry_out
);

reg [15:0] X_reg;
reg [15:0] Y_reg;
reg [15:0] out_reg;

always @(zX or nX or zY or nY or f or no) begin
    if(zX) begin
        X_reg = 0;
    end else begin
        X_reg = X;
    end
    if(nX) begin
        X_reg = ~X;
    end
    if(zY) begin
        Y_reg = 16'h0000;
    end else begin
        Y_reg = Y;
    end
    if(nY) begin
        Y_reg = ~Y;
    end
    if(no) begin
        out_reg = X_reg & Y_reg;
    end
    if(f) begin
        out_reg = X_reg + Y_reg;
    end
end

assign out = out_reg;

endmodule