# CS701 Reactive CoProcessor Re-COP
# How to start
Instructions are to be entered in the .asm file found in recop/assembler. Run assembler.py to generate .mif file. Instruction format is identical to that of the given instruction set.

# Running Testbench
1. Open recop/recop.qpf and run analysis and synthesis. 
2. Go to _Processing -> update memory initialization file._ Whenever instructions are updated this is a necessary step to ensure the correct file version has been uploaded.
3. Set Recop.bdf as the top level entity and perform analysis and synthesis. 
4. Open _recopWaveform.vwf_ and press simulation, run functional simulation to see testbench. 
5. Simulation can be run for longer to see more instructions, clock is at 10ns.


### Note
* In case there is an error or you are unable to run the simulation, ensure you create a testbench first and copy the files over to the qsim.
* Additionally, ensure that going to _simulation -> simulation settings_ and restoring defualt settings has occurred to reset any versions of file path.

# Demoing FPGA Implementation
To demo, set top level entity to _top_level_block_, update Memory Initialisation File if necessary and compile and program. Inputs and outputs are shown below; 

## Outputs
- SOP will be indicated by LEDs. 
- SOP_WR will be indicated by an LED.
- DPCR_WR will be indicated by an LED.
- DPCR[19..0] will be indicated via display

## Inputs
- KEY0 acts as a reset, will reset PC, DPCR and SOP to 0.
- SIP[9..0] can be configured via SW[9..0].

