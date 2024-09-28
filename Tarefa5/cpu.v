`include "../Tarefa5/hack_alu.v"

module CPU (
    input wire [15:0] inM,
    input wire [15:0] instruction,
    input wire reset,
    input wire clk,
    output reg [15:0] outM,
    output reg writeM,
    output reg [14:0] addressM,
    output reg [14:0] pc
);

    reg [15:0] A;
    reg [15:0] D;
    reg [14:0] nextPC;

    wire isCInstruction;
    wire isAInstruction;
    wire [15:0] aluOut;
    wire aluZero, aluNeg;

    assign isAInstruction = ~instruction[15];
    assign isCInstruction = instruction[15];

    hack_alu alu (
        .X(D),
        .Y(instruction[12] ? inM : A),
        .zX(instruction[11]),
        .nX(instruction[10]),
        .zY(instruction[9]),
        .nY(instruction[8]),
        .f(instruction[7]),
        .no(instruction[6]),
        .out(aluOut),
        .carry_out(aluZero)
    );

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 15'd0;
        else
            pc <= nextPC;
    end

    always @(posedge clk) begin
        if (isAInstruction) begin
            A <= instruction;
        end else if (isCInstruction) begin
            if (instruction[5]) D <= aluOut;
            if (instruction[4]) A <= aluOut;
            if (instruction[3]) outM <= aluOut;
            writeM <= instruction[3];
            addressM <= A[14:0];
            if ((instruction[2] && aluNeg) ||
                (instruction[1] && aluZero) ||
                (instruction[0] && !aluNeg && !aluZero))
                nextPC <= A[14:0];
            else
                nextPC <= pc + 15'd1;
        end
    end
endmodule
