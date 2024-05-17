# CS701 Reactive CoProcessor RECOP
# How to start
Instructions are to be entered in the .asm file found in recop/assembler. Run assembler.py to generate .mif file.

## Instruction Format

    INSTRUCTION                                               IMMEDIATE            DIRECT               REGISTER
    "AND": 0b001000,                                          AND RZ RZ #Op                            AND RZ RZ RX
    "OR" : 0b001100,                                          OR RZ RX #Op                             OR RZ RZ RX
    "ADD": 0b111000,                                          ADD RZ RX #Op                            ADD RZ RZ RX
    "SUBV": 0b000011,                                         SUBV RZ RX #Op 
    "SUB": 0b000100,                                          SUBR RZ #Op
    "LDR": 0b000000,                                          LDR RZ RZ #Op     LDR RZ RZ RX           LDR RZ RZ $Op
    "STR": 0b000010,                                          STR RZ RZ #Op     STR RX RX $Op          STR RZ RZ RX
    "JMP" : 0b011000,                                         JMP #Op                                  JMP RX 
    "PRESENT" : 0b011100,                                     PRESENT RZ RZ #Op 
    "DCALL1" : 0b101000,    (DPCR Rx & R7)                    DCALL1 RX         
    "DCALL2" : 0b101001,    (DPCR Rx & Operand)               DCALL2 #Op        
    "SZ" : 0b010100,                                          SZ #Op            
    "CLFZ" : 0b0100000,                                       CLFZ
    "LSIP" : 0b110111,                                        LSIP RZ RZ
    "SSOP" : 0b111010,                                        SOP RX
    "NOOP" : 0b110100,                                        NOOP
    "MAX" : 0b011110,                                         MAX RZ RZ #Op
    "STRPC" : 0b011101                                        STRPC $Op

# Running Testbench
1. Open recop/recop.qpf and run analysis and synthesis. 
2. Processing, update memory initialization file. This can be used to update instructions whenever necessary.
3. Open controlUnitWaveform.vwf and press simulation, run functional simulation to see testbench. 
4. Simulation can be run for longer to see more instructions, clock is at 10ns.

# Demoing FPGA Implementation
## Outputs
- SOP will be indicated by LEDs. 
- SOP_WR will be indicated by an LED.
- DPCR_WR will be indicated by an LED.
- DPCR[19..0] will be indicated via display

## Inputs
- KEY0 acts as a reset, will reset PC to 0 and DPCR
- SIP[9..0] can be configured via SW[9..0]

