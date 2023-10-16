module thingamajig (
    input [3:0] a, b, c,
    input [1:0] sel,
    output reg [5:0] result);

    always @ * begin
        result = 6'd0;
        case (sel)
            2'b00 : result = {2'd0, a};
            2'b01 : result = {2'd0, b};
            2'b10 : result = {2'd0, c};
        endcase
    end

endmodule;

module thingamajig2 (
    input [3:0] a, b, c,
    input [1:0] sel,
    output [5:0] result);

    assign result = (sel==2'b00) ? a : 
                    (sel==2'b01) ? b : c;

endmodule;