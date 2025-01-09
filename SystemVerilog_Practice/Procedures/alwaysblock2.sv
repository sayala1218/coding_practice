module alwaysblock2(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );

    assign out_assign = a ^ b;
    
    always_comb begin 
        
    end begin
       out_always_comb = a ^ b; 
    end
    
    always_ff @(posedge clk) begin
        out_always_ff <= a^b;
    end
    
endmodule

// // synthesis verilog_input_version verilog_2001
// module alwaysblock2(
//     input clk,
//     input a,
//     input b,
//     output wire out_assign,
//     output reg out_always_comb,
//     output reg out_always_ff   );

//     assign out_assign = a ^ b;
    
//     always @(*) begin
//        out_always_comb = a ^ b; 
//     end
    
//     always @ (posedge clk) begin
//         out_always_ff <= a^b;
//     end
    
// endmodule