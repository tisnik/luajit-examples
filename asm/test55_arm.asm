---- TRACE 1 start test53.lua:13
0008  ADDVN    0   0   0  ; 1
0009  MULVN    1   1   1  ; 3
0010  MULVN    2   2   2  ; 5
0011  JMP      3 => 0004
0004  KSHORT   3 100
0005  ISGE     0   3
0006  JMP      3 => 0012
0007  LOOP     3 => 0012
---- TRACE 1 IR
0001 >  int SLOAD  #1    T
0002 >+ int ADDOV  0001  +1  
0003 >  num SLOAD  #2    T
0004  + num MUL    0003  +3  
0005 >  num SLOAD  #3    T
0006  + num MUL    0005  +5  
0007 >  int LT     0002  +100
0008 ------ LOOP ------------
0009 >+ int ADDOV  0002  +1  
0010  + num MUL    0004  +3  
0011  + num MUL    0006  +5  
0012 >  int LT     0009  +100
0013    int PHI    0002  0009
0014    num PHI    0004  0010
0015    num PHI    0006  0011
---- TRACE 1 mcode 120
00397f88  mov   r0, #-1275068416
00397f8c  orr   r0, r0, #47710208
00397f90  orr   r0, r0, #23552
00397f94  vldr  d1, [r0, #424]
00397f98  vldr  d0, [r0, #432]
00397f9c  ldrd  r4, [r9]
00397fa0  cmn   r5, #14
00397fa4  blne  0x00390018	->0
00397fa8  adds  r4, r4, #1
00397fac  blvs  0x00390018	->0
00397fb0  ldr   lr, [r9, #12]
00397fb4  vldr  d3, [r9, #8]
00397fb8  cmn   lr, #15
00397fbc  blhs  0x00390018	->0
00397fc0  vmul.f64 d14, d3, d1
00397fc4  ldr   lr, [r9, #20]
00397fc8  vldr  d2, [r9, #16]
00397fcc  cmn   lr, #15
00397fd0  blhs  0x00390018	->0
00397fd4  vmul.f64 d15, d2, d0
00397fd8  cmp   r4, #100
00397fdc  blge  0x0039001c	->1
->LOOP:
00397fe0  mov   r11, r4
00397fe4  adds  r4, r11, #1
00397fe8  blvs  0x00390020	->2
00397fec  vmul.f64 d14, d14, d1
00397ff0  vmul.f64 d15, d15, d0
00397ff4  cmp   r4, #100
00397ff8  blt   0x00397fe0	->LOOP
00397ffc  bl    0x00390024	->3
---- TRACE 1 stop -> loop

100
5.1537752073201e+47
7.8886090522101e+69
