module ModuloCounter(
    input clk,
    input reset,
    output [2:0] state,
    output reg out
);
    wire [2:0] next_count;
    wire cmp_reset, cmp_toggle;
    reg [2:0] count;

    // Increment logic using FullAdder
    assign next_count = count + 1;

    // Comparator
    ModuloCompare cmp (.count(count), .reset(cmp_reset), .toggle(cmp_toggle));

    // State D-FFs
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (cmp_reset)
            count <= 0;
        else
            count <= next_count;
    end

    // Output toggle
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 0;
        else if (cmp_toggle)
            out <= ~out;
    end

    assign state = count;

endmodule
