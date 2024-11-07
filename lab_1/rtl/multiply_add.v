module multiply_add #(
    parameter dataSize = 8,
    localparam outputSize = dataSize*2+1
) (
    input clk, nrst,
    input [dataSize-1:0] a,
    input [dataSize-1:0] b,
    input [dataSize-1:0] constant,
    output reg [outputSize-1:0] o
);

reg [dataSize-1:0] a_q;
reg [dataSize-1:0] b_q;
reg [dataSize-1:0] d_q;

always @ (posedge clk or negedge nrst) begin
    if(!nrst) begin
        a_q <= 0;
        b_q <= 0;
    end else begin
        a_q <= a;
        b_q <= b;
        d_q <= constant;
        o <= a_q * b_q + {{dataSize{1'b0}},d_q};
    end
end

endmodule
