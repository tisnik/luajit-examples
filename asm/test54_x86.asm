---- TRACE 1 start test54.lua:13
0008  DIVNV    7   2   0  ; 1
0009  ADDVV    1   1   7
0010  MULVN    2   2   1  ; 2
0011  FORL     3 => 0008
---- TRACE 1 IR
0001    int SLOAD  #4    CI
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
---- TRACE 1 mcode 118
0bceff89  mov dword [0x41f9e4a0], 0x1
0bceff94  movsd xmm0, [0x400d9090]
0bceff9d  cvtsd2si ebp, [rdx+0x18]
0bceffa2  cmp dword [rdx+0x14], 0xfffeffff
0bceffa9  jnb 0x0bce0010	->0
0bceffaf  movsd xmm6, [rdx+0x10]
0bceffb4  movaps xmm7, xmm0
0bceffb7  divsd xmm7, xmm6
0bceffbb  cmp dword [rdx+0xc], 0xfffeffff
0bceffc2  jnb 0x0bce0010	->0
0bceffc8  addsd xmm7, [rdx+0x8]
0bceffcd  addsd xmm6, xmm6
0bceffd1  add ebp, +0x01
0bceffd4  cmp ebp, 0x3e8
0bceffda  jg 0x0bce0014	->1
->LOOP:
0bceffe0  movaps xmm5, xmm0
0bceffe3  divsd xmm5, xmm6
0bceffe7  addsd xmm7, xmm5
0bceffeb  addsd xmm6, xmm6
0bceffef  add ebp, +0x01
0bcefff2  cmp ebp, 0x3e8
0bcefff8  jle 0x0bceffe0	->LOOP
0bcefffa  jmp 0x0bce001c	->3
---- TRACE 1 stop -> loop

2
