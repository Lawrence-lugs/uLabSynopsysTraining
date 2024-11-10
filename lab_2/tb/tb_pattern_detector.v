`timescale 1ns/1ps

module tb_pattern_detector ();
    reg        clk;
    reg        nrst;
    reg        serial_in;
    wire [3:0] parallel_out;
    wire       match;

    pattern_detector uut (
        .clk          (clk),
        .nrst         (nrst),
        .serial_in    (serial_in),
        .parallel_out (parallel_out),
        .match        (match)
    );

    always
        #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        nrst = 1'b0;
        serial_in = 1'b0;
        #20
        nrst = 1'b1;
        #200
        serial_in = 1'b1;
        #10
        serial_in = 1'b0;
        #10
        serial_in = 1'b1;
        #10
        serial_in = 1'b0;
        #10
        serial_in = 1'b1;
        #10
        serial_in = 1'b0;
        #10
        serial_in = 1'b1;
        #20
        serial_in = 1'b0;
        #20
        serial_in = 1'b1;
        #10
        serial_in = 1'b0;
        #10
        serial_in = 1'b1;
        #10
        serial_in = 1'b0;
        #10
        serial_in = 1'b1;
        #10
        serial_in = 1'b0;
        #10
        $finish;
    end
    

endmodule