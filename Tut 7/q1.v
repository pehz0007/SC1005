// A traffic light for a toy car track has a 3‐bit one‐hot vector input, with MSB corresponding to red
// and the LSB to green. However, the controller delivered with the track has only a 2‐bit output for
// the lights, encoded as:  red = “00”, yellow = “01” and green = “10”. The controller outputs “11”
// when there are no lights active.
// Design a Verilog interface (using assign statements) to go between the controller and the lights.

module trafficlight (
    input [1:0] in,
    output [2:0] out
);
    assign out[0] = in[0] & ~in[1];
    assign out[1] = ~in[0] & in[1];
    assign out[2] = ~in[0] & ~in[1];
endmodule