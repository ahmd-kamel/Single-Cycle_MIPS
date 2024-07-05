LOCATION[00] ADD  $s0  $zero  $zero  // int R0 = 0;
LOCATION[01] ADDI $s0  $zero  0xFFFF // R0 = 65535;

LOCATION[02] ADD  $s1  $zero  $zero  // int R1 = 0;

LOCATION[03] ADD  $s2  $zero  $zero  // int R2 = 0;
LOCATION[04] ADDI $s2  $zero  0x0001 // R2 = 1;

LOCATION[05] SW   $s1  0x0000 $zero
LOCATION[06] SW   $s2  0x0000 $zero

LOCATION[07] ADD  $s3  $zero  $zero // int R3 = 0;
LOCATION[08] ADD  $s3  $s1    $s2   // R3 = R1 + R2;

LOCATION[09] SLT  $t1  $s3    $s0

LOCATION[10] BEQ  $t1  $zero  0x0005
LOCATION[11] SW   $s3  0x0000 $zero

LOCATION[12] ADD  $s1  $zero  $s2  // R1 = R2;
LOCATION[13] ADD  $s2  $zero  $s3  // R2 = R3;

LOCATION[14] ADD  $s3  $s1    $s2  // R3 = R1 + R2;
LOCATION[15] J 0x0000009





