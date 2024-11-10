`timescale 1ns/1ps

`define CLK_PERIOD 20

module tb_div ();
    reg         clk;
    reg         nrst;
    reg  [31:0] opA;
    reg  [31:0] opB;
    reg         en;
    wire [31:0] res;
    wire        done;

    div UUT (
        .clk  (clk),
        .nrst (nrst),
        .opA  (opA),
        .opB  (opB),
        .en   (en),
        .res  (res),
        .done (done)
    );

    always begin
        #(`CLK_PERIOD/2) clk = ~clk;
    end

    initial begin
        clk = 1'b0;
        nrst = 1'b0;
        opA = 32'd0;
        opB = 32'd0;
        en = 1'b0;
        #(20*`CLK_PERIOD)
        nrst = 1'b1;
        #(10*`CLK_PERIOD)

        opA = 32'hFFF0_BDC0;
        opB = 32'd168;
        en = 1'b1;
        #(`CLK_PERIOD)
        en = 1'b0;
        while (!done) begin
            #(`CLK_PERIOD);
        end
        #(5*`CLK_PERIOD);

        opA = 32'h0000_550B;
        opB = 32'hFFFF_FFFF;
        en = 1'b1;
        #(`CLK_PERIOD)
        en = 1'b0;
        while (!done) begin
            #(`CLK_PERIOD);
        end
        #(5*`CLK_PERIOD);

        $finish;
    end

endmodule