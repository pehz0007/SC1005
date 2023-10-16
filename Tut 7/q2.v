// A digital thermostat has two 8‐bit unsigned binary inputs representing the target temperature
// and the actual temperature in degrees centigrade (°C). The thermostat has two outputs: one to
// turn a heater on when the actual temperature is 4°C below the target, and one to turn a cooler on
// when the actual temperature is 4°C above the target
// (a) Design a Verilog module, thermo, with two 8‐bit inputs, Tset and Tact and two 1‐bit outputs
// Hon and Con. Use a parameter statement to specify the 8‐bit width.
// (b) The module designed in part (a) is instantiated in another module. Write the Verilog
// statement to instantiate the thermo module with identifier U1 using the same signal names
// in the upper module.
// (c) Part way through the design process, the design team finds out that the temperature sensor
// and the target set‐point both have 12‐bit outputs. Describe a simple change to the Verilog
// statement to instantiate the thermo module so that this will not affect the operation.
module thermo #(parameter SIZE = 8) (
    input [SIZE-1:0] Tset,
    input [SIZE-1:0] Tact,
    output Hon,
    output Con,
);
    assign Hon = (Tact + 4) < Tset;
    assign Con = Tact > (Tset + 4);
endmodule

// (b) To instantiate
// thermo U1 (.Tset(Tset), .Tact(Tact), .Hon(Hon), .Con(Con));

// (c)
// thermo  #(.SIZE(12)) U1 (.Tset(Tset), .Tact(Tact), .Hon(Hon), .Con(Con));