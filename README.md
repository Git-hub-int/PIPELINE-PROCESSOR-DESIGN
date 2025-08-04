1️⃣ # PIPELINE-PROCESSOR-DESIGN

This Verilog project demonstrates pipeline modeling through a 4-stage arithmetic expression. The design uses registers (latches) to hold intermediate results between stages, improving throughput and allowing multiple operations to be overlapped in time.

2️⃣ Testbench Features:

➡️ Simulates input values with time delays.

➡️ Generates a clock (clk) with 20ns period.

➡️ Outputs monitored using $monitor.

➡️ Waveform generated via $dumpfile and $dumpvars.

◾️Simulation Commands:

▶️ Compile with Icarus Verilog:

▪️iverilog -o pipeline pipeline.v

▶️Run the simulation:

▪️vvp pipeline

▶️View waveform in GTKWave:

▪️gtkwave pipeline.vcd

3️⃣ terminal Outputs:

Time(ns)                A	   B	  C	  D	  E    Expected H

5                     	5	   10	  2 	5	  2	   80 (0x50)

25	                    10	 2	  5	  2	  2	   100 (0x64)

45	                    9	   10	  2	  1	  0	   0 (0x00)

65	                    5	   0	  2	  0	  2	   30 (0x1E)

🔸️ Expression Evaluated:

▪️ H = [ (A + B) - (C + D) ] × E × A
