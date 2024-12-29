module add16 (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);
    logic [16:0] total_logic;
    
    assign total_logic = a + b + cin;

    assign sum = total_logic[15:0];
    assign cout = total_logic[16];

endmodule
