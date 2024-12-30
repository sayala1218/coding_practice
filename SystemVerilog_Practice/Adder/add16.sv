module add16 (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);
    logic unsigned [16:0] total_logic;
    
    assign total_logic = a + b + cin;

    assign sum = total_logic[15:0];
    assign cout = total_logic[16];

endmodule

module add16_testbench();
    logic [15:0] a;
    logic [15:0] b;
    logic cin;
    logic [15:0] sum;
    logic cout;

    add16 dut (.*);

    initial begin
        a = 16'd0;  b = 16'd4;  cin = 1;    #10;
        a = 16'd5;  b = 16'd5;              #10;
        a = 16'd10; b = 16'd1;  cin = 0;    #10;
        a = '1;     b = '0;                 #10;
        a = '1;     b = '0;     cin = 1;    #10;

    end
endmodule