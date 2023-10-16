module test;

  /* Make a reset that pulses once. */
  reg [1:0] controller = 0;
  initial begin
     #0 controller = 2'b00;
     #10 controller = 2'b01;
     #20 controller = 2'b10;
     #30 controller = 2'b11;
     #100 $finish;
  end


  wire [2:0] value;
  trafficlight t (controller, value);

  initial
     $monitor("At time %t, value = %h (%0d) (%2b)",
              $time, value, value, value);
endmodule // test