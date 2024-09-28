module pc(
    input clk,
    input load,
    input increment,
    output reg [15:0] count
);

    always @(posedge clk) begin
        if (load) begin
            count <= load;
        end else if (increment) begin
            count <= count + 1;
        end
    end

endmodule
