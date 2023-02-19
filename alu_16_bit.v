`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: xavier planet
// Engineer: sonu shakya
// Email : sonushakyaa563@gmail.com
// Create Date: 21.01.2023 21:54:38
// Design Name: 
// Module Name: alu_16_bit
// Project Name: 16 bit alu
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_16_bit(result,a,b,opcode,en);
    output [15:0]result;   //16 bit output
    input [15:0] a,b;  /// input data 16 bit for this alu
    input [3:0]opcode;     //3 bit input type opcode
    input en;             //enable pin is 1 bit data
    
    reg [15:0] result;
    always @*
        begin
            if (en==1)
                begin 
                    case (opcode)
                    4'b0000 : result = a + b;    //addition of input 
                    4'b0001 : result = a - b;    //substraction
                    4'b0010 : result =  a*b;     // multiplication
                    4'b0011 : result= a + 1;     // incriment by 1
                    
                    4'b0100 : result = a - 1;    // dcreament by 1
                    4'b0101 : result = ~a;        // not operation input a
                    4'b0110 : result = ~b;        // not operation input b
                    4'b0111 : result = b-a ;   //
                   
                                      
                                      
                                      
                    4'b1000 : result = a|b;    // or gate operation
                    4'b1001 : result = ~(a|b);  //nor operation
                    4'b1010 : result = a^b;   //xor operation
                    4'b1011 : result = ~(a^b);  //xnor operation
                    
                    4'b1100 : result = a&b;     // and operation
                    4'b1101 : result = ~(a&b);    //nand operation
                    4'b1110 : result = a<<b;  // left shift
                    4'b1111 : result = a>>b;   //right shift

                     
                     default : result = 16'b0;
                     
                     endcase
                end
              else 
                result = 16'bz;    
                    
           end
endmodule
