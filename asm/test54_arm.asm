---- TRACE 1 start test54.lua:13
0008  DIVNV    7   2   0  ; 1
0009  ADDVV    1   1   7
0010  MULVN    2   2   1  ; 2
0011  FORL     3 => 0008
---- TRACE 1 IR
0001    int SLOAD  #4    I
0002 >  num SLOAD  #3    T
0003    num DIV    +1    0002
0004 >  num SLOAD  #2    T
0005  + num ADD    0004  0003
0006  + num ADD    0002  0002
0007  + int ADD    0001  +1  
0008 >  int LE     0007  +1000
0009 ------ LOOP ------------
0010    num DIV    +1    0006
0011  + num ADD    0010  0005
0012  + num ADD    0006  0006
0013  + int ADD    0007  +1  
0014 >  int LE     0013  +1000
0015    int PHI    0007  0013
0016    num PHI    0006  0012
0017    num PHI    0005  0011
---- TRACE 1 mcode 104
00397f98  mov   r0, #-1342177280
00397f9c  orr   r0, r0, #114294784
00397fa0  orr   r0, r0, #97280
00397fa4  vldr  d0, [r0, #424]
00397fa8  ldr   r11, [r9, #24]
00397fac  ldr   lr, [r9, #20]
00397fb0  vldr  d1, [r9, #16]
00397fb4  cmn   lr, #15
00397fb8  blhs  0x00390018	->0
00397fbc  vdiv.f64 d3, d0, d1
00397fc0  ldr   lr, [r9, #12]
00397fc4  vldr  d2, [r9, #8]
00397fc8  cmn   lr, #15
00397fcc  blhs  0x00390018	->0
00397fd0  vadd.f64 d15, d2, d3
00397fd4  vadd.f64 d14, d1, d1
00397fd8  add   r11, r11, #1
00397fdc  cmp   r11, #1000
00397fe0  blgt  0x0039001c	->1
->LOOP:
00397fe4  vdiv.f64 d13, d0, d14
00397fe8  vadd.f64 d15, d13, d15
00397fec  vadd.f64 d14, d14, d14
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #1000
00397ff8  ble   0x00397fe4	->LOOP
00397ffc  bl    0x00390024	->3
---- TRACE 1 stop -> loop

2
