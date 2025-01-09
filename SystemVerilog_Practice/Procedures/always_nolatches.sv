module always_nolatches (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 

    always_comb begin
        up = 0;
        down = 0;
        left = 0;
        right = 0;
        case(scancode)
            16'he06b : left = 1;
            16'he072 : down = 1;
            16'he074 : right = 1; 
            16'he075 : up = 1;
        endcase
    end
endmodule

// // synthesis verilog_input_version verilog_2001
// module always_nolatches (
//     input [15:0] scancode,
//     output reg left,
//     output reg down,
//     output reg right,
//     output reg up  ); 

//     always @(*) begin
//         up = 0;
//         down = 0;
//         left = 0;
//         right = 0;
//         case(scancode)
//             16'he06b : left = 1;
//             16'he072 : down = 1;
//             16'he074 : right = 1; 
//             16'he075 : up = 1;
//         endcase
//     end
// endmodule