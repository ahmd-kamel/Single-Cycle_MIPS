module SIGN_EXTEND
#(
    parameter OUTPUT_WIDTH = 32,
    parameter INPUT_WIDTH = 16
) (
    input wire [INPUT_WIDTH - 1 : 0] data_in,
    output wire [OUTPUT_WIDTH - 1 : 0] data_out
);

assign data_out = {{(OUTPUT_WIDTH - INPUT_WIDTH) {data_in[INPUT_WIDTH - 1]}}, data_in[INPUT_WIDTH - 1 : 0]};

endmodule