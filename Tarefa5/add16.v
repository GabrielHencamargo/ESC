`include "../Tarefa5/fulladder.v"

module add16bits(
    input wire [15:0] a,
    input wire [15:0] b,
    input carry_in,
    output [15:0] sum,
    output carry_out
);
    wire [15:0] carry;
    wire [15:0] sum_temp;

    fulladder fa0(.a(a[0]), .b(b[0]), .carry_in(carry_in), .sum(sum_temp[0]), .carry_out(carry[0]));
    fulladder fa1(.a(a[1]), .b(b[1]), .carry_in(carry[0]), .sum(sum_temp[1]), .carry_out(carry[1]));
    fulladder fa2(.a(a[2]), .b(b[2]), .carry_in(carry[1]), .sum(sum_temp[2]), .carry_out(carry[2]));
    fulladder fa3(.a(a[3]), .b(b[3]), .carry_in(carry[2]), .sum(sum_temp[3]), .carry_out(carry[3]));
    fulladder fa4(.a(a[4]), .b(b[4]), .carry_in(carry[3]), .sum(sum_temp[4]), .carry_out(carry[4]));
    fulladder fa5(.a(a[5]), .b(b[5]), .carry_in(carry[4]), .sum(sum_temp[5]), .carry_out(carry[5]));
    fulladder fa6(.a(a[6]), .b(b[6]), .carry_in(carry[5]), .sum(sum_temp[6]), .carry_out(carry[6]));
    fulladder fa7(.a(a[7]), .b(b[7]), .carry_in(carry[6]), .sum(sum_temp[7]), .carry_out(carry[7]));
    fulladder fa8(.a(a[8]), .b(b[8]), .carry_in(carry[7]), .sum(sum_temp[8]), .carry_out(carry[8]));
    fulladder fa9(.a(a[9]), .b(b[9]), .carry_in(carry[8]), .sum(sum_temp[9]), .carry_out(carry[9]));
    fulladder fa10(.a(a[10]), .b(b[10]), .carry_in(carry[9]), .sum(sum_temp[10]), .carry_out(carry[10]));
    fulladder fa11(.a(a[11]), .b(b[11]), .carry_in(carry[10]), .sum(sum_temp[11]), .carry_out(carry[11]));
    fulladder fa12(.a(a[12]), .b(b[12]), .carry_in(carry[11]), .sum(sum_temp[12]), .carry_out(carry[12]));
    fulladder fa13(.a(a[13]), .b(b[13]), .carry_in(carry[12]), .sum(sum_temp[13]), .carry_out(carry[13]));
    fulladder fa14(.a(a[14]), .b(b[14]), .carry_in(carry[13]), .sum(sum_temp[14]), .carry_out(carry[14]));
    fulladder fa15(.a(a[15]), .b(b[15]), .carry_in(carry[14]), .sum(sum_temp[15]), .carry_out(carry[15]));

    assign sum = sum_temp;
    assign carry_out = carry[15];
endmodule