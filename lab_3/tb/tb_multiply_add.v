`timescale 1ns/1ps

module multiply_add_tb;

// Parameters
parameter dataSize = 8;
localparam outputSize = dataSize*2+1;
localparam CLK_PERIOD = 10;

// Signals
reg clk;
reg nrst;
reg [dataSize-1:0] a;
reg [dataSize-1:0] b;
reg [dataSize-1:0] c;
wire [outputSize-1:0] o;

// Instance of module under test
multiply_add #(
    .dataSize(dataSize)
) dut (
    .clk(clk),
    .nrst(nrst),
    .a(a),
    .b(b),
    .constant(c),
    .o(o)
);

// Clock generation
initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

integer ans;

// Test stimulus
initial begin
    // Initialize waveform dumping
    $dumpfile("multiply_add_tb.vcd");
    $dumpvars(0, multiply_add_tb);
    
    // Initial values
    nrst = 1;
    a = 0;
    b = 0;
    c = 0;
    
    // Reset sequence
    #(CLK_PERIOD*2);
    nrst = 0;
    #(CLK_PERIOD*2);
    nrst = 1;
    #(CLK_PERIOD*2);
    
    repeat(10) begin
        a = $random[7:0];
        b = $random[7:0];
        c = $random[7:0];
        #(CLK_PERIOD);
        $display("Random values - a=%d, b=%d, c=%d, o=%d, %d", a, b, c, o, ans);
    end
    
    // End simulation
    #(CLK_PERIOD*5);
    $display("Simulation completed successfully");
    $finish;
end

endmodule
