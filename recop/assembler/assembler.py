from typing import List

ASMInstruction = tuple[int, str]
MAX_REGISTER = 16

Opcodes = {
    "AND": 0b001000,
    "OR" : 0b001100,
    "ADD": 0b111000,
    "SUBV": 0b000011,
    "SUB": 0b000100,
    "LDR": 0b000000,
    "STR": 0b000010,
    "JMP" : 0b011000,
    "PRESENT" : 0b011100,
    "DCALL1" : 0b101000,
    "DCALL2" : 0b101001,
    "SZ" : 0b010100,
    "CLFZ" : 0b0100000,
    "LSIP" : 0b110111,
    "SSOP" : 0b111010,
    "NOOP" : 0b110100,
    "MAX" : 0b011110,
    "STRPC" : 0b011101
}


class AddressingMode:
    INHERENT = 0
    IMMEDIATE = 1
    DIRECT = 2
    REGISTER = 3

def read_file(file : str) -> List[ASMInstruction]:
    # Read the file and return a list of instructions
    # Remove comments and empty lines
    instructions = []
    with open(file, "r") as f:
        instructions = [(line_num + 1, line.split(';')[0].strip().upper()) for line_num, line in enumerate(f.readlines()) if line.strip()]
    return instructions

def generate_mif(output_file, hex_instructions):
    with open(output_file, "w") as f:
        f.write("DEPTH = 1024;\n")
        f.write("WIDTH = 32;\n\n")
        f.write("ADDRESS_RADIX = HEX;\n")
        f.write("DATA_RADIX = HEX;\n\n")
        f.write("CONTENT\n")
        f.write("BEGIN\n")
        for i, instr in enumerate(hex_instructions):
            f.write(f"{i:02X} : {instr[0]:08X}; -- {instr[1]}\n")
        f.write("END;\n")

def get_register(register : str) -> int:
    register_map = {'R0': 0, 'R1': 1, 'R2': 2, 'R3': 3, 'R4': 4, 'R5': 5, 'R6': 6, 'R7': 7,
                    'R8': 8, 'R9': 9, 'R10': 10, 'R11': 11, 'R12': 12, 'R13': 13, 'R14': 14, 'R15': 15}
    if register in register_map:
        return register_map[register]
    else:
        raise ValueError(f"Error: Invalid register '{register}'")
    
def compile(instructions: List[ASMInstruction]) -> List[tuple[int, str]]:
    hex_instructions: List[tuple[int, str]] = []
    for (line, instruction) in instructions:
        print(f'{line}: {instruction}')
        parts = instruction.split()

        am = 0
        opcode = 0
        rz = 0
        rx = 0
        operand = 0

        # Determine addressing mode and operands and rx
        parts_len = len(parts)
        try:
            # check last input for addressing method
            match parts[parts_len - 1][0]:
                case "#":
                    am = AddressingMode.IMMEDIATE
                    operand = int(parts[parts_len - 1][1:], 0)
                    rx = get_register(parts[parts_len - 2])
                case "$":
                    am = AddressingMode.DIRECT
                    operand = int(parts[parts_len - 1][1:], 0)
                    rx = get_register(parts[parts_len - 2])
                case "R":
                    am = AddressingMode.REGISTER
                    rx = get_register(parts[parts_len - 1])
        except ValueError:
            raise ValueError(f"Error: Invalid operand '{parts[parts_len - 1]}' on line {line}")

        # Determine rz
        if (parts_len > 2):
            rz = get_register(parts[1])

        # Determine opcode
        if parts[0] in Opcodes:
            opcode = Opcodes[parts[0]]
        else:
            raise ValueError(f"Error: Invalid opcode '{parts[0]}' on line {line}")

        # print(f'AM: {am}, OPCODE: {opcode}, RZ: {rz}, RX: {rx}, OPERAND: {operand}')
        hex_instruction = (am << 30) | (opcode << 24) | (rz << 20) | (rx << 16) | operand
        hex_instructions.append((hex_instruction, instruction))
        # print(f"HEX: {hex_instruction:08X}")
    return hex_instructions

    



if __name__ == "__main__":
    input_file = "./assembler/program.asm"
    output_file = "./assembler/output.mif"
    
    instructions = read_file(input_file)
    hex_instructions = compile(instructions)
    generate_mif(output_file, hex_instructions)

    
    print(f"MIF file '{output_file}' generated successfully.")