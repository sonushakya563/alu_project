`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: xavier planet
// Engineer: sonu shakya
// Email : sonushakyaa563@gmail.com
// Create Date: 21.01.2023 21:54:38
// Create Date: 21.01.2023 22:11:42
// Design Name: 
// Module Name: tb_16_bit_alu
// Project Name: 
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


module tb_16_bit_alu();
reg [3:0]opcode;
reg [15:0] a,b;
reg en;

wire [15:0] result;

alu_16_bit dut (result,a,b,opcode,en);

initial
    begin
        
        
        
          en=1'b1;                      // it isis enable 1 otherwise it is disable it is 
          a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
         #10 opcode = 4'b0000;
         
         en=1'b1;                     // it is enable 
         a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0001;
        
        
        en=1'b1;
        a = 16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0010;
                
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0011;
        
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0100;
        
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0101;
        
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0110;
        
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b0111;
        
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1000;

        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1001;

         en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1010;

        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1011;
        
        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1100;

        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1101;

        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1110;

        en=1'b1;
        a=16'b1000111; b=16'b1001;   ///if you write here 16 bit number  in decibal number like a=16'd49; b=16'b 9
        #10 opcode = 4'b1111;

       
                        
        
    end
endmodule
