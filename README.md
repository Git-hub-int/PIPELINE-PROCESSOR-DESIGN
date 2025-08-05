1️⃣ # PIPELINE-PROCESSOR-DESIGN

COMPANY:- CODTECH IT SOLUTIONS 

NAME:- GARIMA VERMA

INTERN ID:- CT04DH2092

DOMAIN:- VLSI

DURATION:- 4 WEEKS 

MENTOR:- NEELA SANTOSH 

This Verilog project demonstrates pipeline modeling through a 4-stage arithmetic expression. The design uses registers (latches) to hold intermediate results between stages, improving throughput and allowing multiple operations to be overlapped in time.

▶️A typical 4-stage pipeline includes:

▪️Instruction Fetch (IF): Fetches the instruction from memory.

▪️Instruction Decode (ID): Decodes the instruction and reads operands from the register file. 

▪️Execute (EX): Performs the arithmetic or logical operation using the ALU.

▪️Memory Access (MA) / Write Back (WB): Accesses memory for load/store operations or writes the result back to the register file. 
(Sometimes MA and WB are combined or separated into distinct stages depending on the specific design.)

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

| Time (ns) | A  | B  | C | D | E | Expected H |
| --------- | -- | -- | - | - | - | ---------- |
| 5         | 5  | 10 | 2 | 5 | 2 | 80 (0x50)  |
| 25        | 10 | 2  | 5 | 2 | 2 | 100 (0x64) |
| 45        | 9  | 10 | 2 | 1 | 0 | 0 (0x00)   |
| 65        | 5  | 0  | 2 | 0 | 2 | 30 (0x1E)  |

🔸️ Expression Evaluated:

▪️ H = [ (A + B) - (C + D) ] × E × A

OUTPUT:-

![Image](https://github.com/user-attachments/assets/227f3327-5dc1-4e95-957d-0ec35e594f67)
