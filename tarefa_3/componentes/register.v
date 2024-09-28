module register (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire [15:0] data_in,
    output wire [15:0] data_out
);

    reg [15:0] reg_data;

    always @(posedge clk or posedge reset) begin
        if (reset)
            reg_data <= 16'b0;
        else if (enable)
            reg_data <= data_in;
    end

    assign data_out = reg_data;

endmodule