// The testbench code to simulate the designed code.
//_________________________________________________

module test_pipeline;
  
  wire [8:0] H;
  reg [8:0] A, B, C, D, E;
  reg clk;
 // instantiation of the code 
  pipeline MYpip(.A(A),.B(B),.C(C),.D(D),.E(E),.clk(clk),.H(H));
  
  // generation of clock
  initial clk=0;
  always #10 clk=~clk;
  
  initial 
    begin
      // inputs for the designed code with some delay with expected outputs
      
      #5 A=5; B=10; C=2; D=5; E=2; // output H= 80 and in hex (50)
      #20 A=10; B=2; C=5; D=2; E=2;// output H=100  and in hex (64)
      #20 A=9; B=10; C=2; D=1; E=0;// output H= 0 and in hex (0)
      #20 A=5; B=0; C=2; D=0; E=2;// output H= 30 and in hex (1E)
          
    end
  initial
    begin
      $dumpfile("pipeline.vcd");
      $dumpvars(1);
      $monitor("time=%d, H=%d",$time, H);// monitoring output H with time
      #200 $finish; 
    end
endmodule
