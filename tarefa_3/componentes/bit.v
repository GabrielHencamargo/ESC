module bit_register (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire data_in,
    output wire data_out
);

    reg data;

    always @(posedge clk or posedge reset) begin
        if (reset)
            data <= 1'b0;
        else if (enable)
            data <= data_in;
    end

    assign data_out = data;

endmodule