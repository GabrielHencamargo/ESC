module ram16384(
    input [13:0] address,
    input [15:0] data_in,
    input write_enable,
    input clk,
    output [15:0] data_out
);
    reg [15:0] memory [0:16383];
    
    always @(posedge clk) begin
        if (write_enable)
            memory[address] <= data_in;
    end
    
    assign data_out = memory[address];
endmodule