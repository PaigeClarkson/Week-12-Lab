module RippleCounter(
    input clk,
    input reset,
    output led0,
    output led1,
    output led2
);
    wire q0, q1;

 
    TFF tff0 (.clk(clk), .reset(reset), .q(q0));
  
    TFF tff1 (.clk(q0), .reset(reset), .q(q1));
   
    TFF tff2 (.clk(q1), .reset(reset), .q(led2));

    assign led0 = q0;
    assign led1 = q1;

endmodule
