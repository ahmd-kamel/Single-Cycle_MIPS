module ADDER 
#(
    parameter DATA_WIDTH = 32
) (
    input  wire [DATA_WIDTH - 1 : 0] in1,
    input  wire [DATA_WIDTH - 1 : 0] in2,
    output wire  [DATA_WIDTH - 1 : 0] out
);


        assign out = in1 + in2;


endmodule
