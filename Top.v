module ClockDividerTop(
    input btnC,   // clock
    input btnU,   // reset
    output [6:0] led
);
    // Ripple counter LEDs
    RippleCounter ripple (
        .clk(btnC),
        .reset(btnU),
        .led0(led[0]),
        .led1(led[1]),
        .led2(led[2])
    );

    // Modulo counter
    ModuloCounter modulo (
        .clk(btnC),
        .reset(btnU),
        .state(led[3:5]),
        .out(led[6])
    );
endmodule
