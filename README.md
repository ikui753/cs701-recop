# CS701 Reactive CoProcessor Re-COP
# How to start
- Navigate to recop/assembler for assembler. 
- Instructions are to be entered in the .asm file found in recop/assembler. Run assembler.py to generate .mif, output.mif. 

- Format is the same as given RECOP ISA, however only LSIP should entered in as _LSIP Rz Rz_.

# Running Testbench
1. Open recop/recop.qpf. Set recopTest as top level entity (this version has multiple outputs used for testing, and is incompatible with the FPGA) and run analysis and synthesis. 
2. Go to _Processing -> update memory initialization file._ Whenever instructions are updated this is a necessary step to ensure the correct file version has been uploaded.
3. Open _recopTestWaveform.vwf_ and press simulation, run functional simulation to see testbench. 
4. Simulation can be run for longer to see more instructions, clock is 10ns.

Notes:
* In case there is an error or you are unable to run the simulation, ensure you generate a testbench and script (_simulation -> generate modelsim testbench and script_).
* Additionally, ensure that going to _simulation -> simulation settings_ and restoring defualt settings has occurred to reset any versions of file path.

# Demoing FPGA Implementation
To run the demo on FPGA, select _recop.bdf_ as top level entity. Update memory initialisation file and compile. FPGA can be programmed afterwards. 
### Input
- SIP[9..0] can be configured via SW[9..0].
### Output
- SOP[9..0] will be indicated by LEDR[9..0] in binary. 



