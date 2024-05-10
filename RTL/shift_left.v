module SHIFT_LEFT
#(
    parameter DATA_WIDTH = 32
) (
    input wire[DATA_WIDTH - 1 : 0] in,
    output wire[DATA_WIDTH - 1 : 0] out
);

    assign out = (in << 2);

endmodule