LOCATION[00] ADD  $s0  $zero  $zero  // int num_1 = 0;
LOCATION[01] ADDI $s0  $zero  0x0024 // num_1 = 36;

LOCATION[02] ADD  $s1  $zero  $zero  // int num_2 = 0;
LOCATION[03] ADDI $s1  $zero  0x003C // num_2 = 60;

LOCATION[04] ADD  $s2  $zero  $zero  // int result = 0;

LOCATION[05] BEQ  $s0  $s1    0x0006 // PC <- PC + 0x0006
LOCATION[06] SLT  $t1  $s0    $s1    // $s0 < $s1 --> $t1 -> 1
LOCATION[07] BEQ  $t1  $zero  0x0002 // PC <- PC + 0x0002
LOCATION[08] SUB  $s1  $s1    $s0  
LOCATION[09] J 0x0000005             // jump to address 5
LOCATION[10] SUB  $s0  $s0    $s1
LOCATION[11] J 0x0000005             // jump to address 5
LOCATION[12] ADD  $s2  $zero  $s0
LOCATION[13] SW   $s2  0x0000 $zero  // [sign_extend(offset) + GPR[base]] -< $s2
