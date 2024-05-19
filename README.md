# CS701 Reactive CoProcessor Re-COP
# How to start
Instructions are to be entered in the .asm file found in recop/assembler. Run assembler.py to generate .mif file. Format is the same as given RECOP ISA.

# Running Testbench
1. Open recop/recop.qpf and run analysis and synthesis. 
2. Go to _Processing -> update memory initialization file._ Whenever instructions are updated this is a necessary step to ensure the correct file version has been uploaded.
3. Open _controlUnitWaveform.vwf_ and press simulation, run functional simulation to see testbench. 
4. Simulation can be run for longer to see more instructions, clock is at 10ns.
Notes:
* In case there is an error or you are unable to run the simulation, ensure you create a testbench first and copy the files over to the qsim.
* Additionally, ensure that going to _simulation -> simulation settings_ and restoring defualt settings has occurred to reset any versions of file path.

# Demoing FPGA Implementation
## Outputs
- SOP will be indicated by LEDs. 

- DPCR[19..0] will be indicated via display

## Inputs
- KEY0 acts as a reset, will reset PC, DPCR and SOP to 0.
- SIP[9..0] can be configured via SW[9..0].

