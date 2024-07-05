LOCATION[00] ADD  $s0  $zero  $zero  // int R0 = 0;
LOCATION[01] ADDI $s0  $zero  0x0005 // R0 = 5;

LOCATION[02] ADD  $s1  $zero  $zero  // int R1 = 0;
LOCATION[03] ADDI $s1  $zero  0x0001 // R1 = 1;

LOCATION[04] BEQ  $s0  $zero  0x0003 // PC <- PC + 0x0003

LOCATION[05] MULT $s1 $s0            // R1 = R1 * R0;

LOCATION[06] ADDI $s0 $s0 0xFFFF    // num_1 = num_1 + 0xFFFF(-1);

LOCATION[07] J 0x0000004            // jump to loc 4
LOCATION[08] SW $s1 0x0000 $zero   // store s1 -> mem[0]

