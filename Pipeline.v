// This is shows the concept of pipiline modelling

//---------------------------------------------------------------------

module pipeline(clk,
          A,
          B,
          C,
          D,
          E,
          H);
  
  //Declaration of input and ouput variables
  input clk;
  input [8:0] A, B, C, D, E;
  output reg [9:0] H;
  
  // Using latches to store intermidiate inputs for next stage 
  reg [8:0] L_a1 , L_a2, L_a3, L_x1 , L_x2, L_e1, L_e2,L_f,L_H,L_G;
  
  
  // using clock 
  always @(posedge clk)
    begin
      
      L_x1<= #2 A+B; 
      L_x2<= #2 C+D;
      L_a1 <= A;
      L_e1 <= E;// stage 1 complete
      
      L_a2 <= L_a1;
      L_f <= #3 L_x1 - L_x2;
      L_e2 <= L_e1; // stage 2 complete
      
      L_a3 <= L_a2;
      L_G <= #3 L_e2*L_f;// stage 3 complete
      
      L_H <= #3 L_a3*L_G;// stage 4 complete
    
    end
  assign H= L_H;// final output in H variable 
endmodule
