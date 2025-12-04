module ModuloCompare(
    input [2:0] count,
    output reg reset,
    output reg toggle
);
    always @(*) begin
        if (count == 3'b101) begin // 5 in binary, counts 0-5
            reset = 1;
            toggle = 1;
        end else begin
            reset = 0;
            toggle = 0;
        end
    end
endmodule
