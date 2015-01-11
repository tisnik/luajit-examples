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
0001 >  num SLOAD  #1    T
0002  + num ADD    0001  +1  
0003 >  num SLOAD  #2    T
0004  + num MUL    0003  +3  
0005 >  num SLOAD  #3    T
0006  + num MUL    0005  +5  
0007 >  num LT     0002  +100
0008 ------ LOOP ------------
0009  + num ADD    0002  +1  
0010  + num MUL    0004  +3  
0011  + num MUL    0006  +5  
0012 >  num LT     0009  +100
0013    num PHI    0002  0009
0014    num PHI    0004  0010
0015    num PHI    0006  0011
---- TRACE 1 mcode 145
0bceff66  mov dword [0x406bc4a0], 0x1
0bceff71  movsd xmm3, [0x406c8bf0]
0bceff7a  movsd xmm2, [0x406c8bf8]
0bceff83  movsd xmm1, [0x406c8c00]
0bceff8c  movsd xmm0, [0x406c8c08]
0bceff95  cmp dword [rdx+0x4], 0xfffeffff
0bceff9c  jnb 0x0bce0010	->0
0bceffa2  movsd xmm5, [rdx]
0bceffa6  addsd xmm5, xmm3
0bceffaa  cmp dword [rdx+0xc], 0xfffeffff
0bceffb1  jnb 0x0bce0010	->0
0bceffb7  movsd xmm6, [rdx+0x8]
0bceffbc  mulsd xmm6, xmm2
0bceffc0  cmp dword [rdx+0x14], 0xfffeffff
0bceffc7  jnb 0x0bce0010	->0
0bceffcd  movsd xmm7, [rdx+0x10]
0bceffd2  mulsd xmm7, xmm1
0bceffd6  ucomisd xmm0, xmm5
0bceffda  jbe 0x0bce0014	->1
->LOOP:
0bceffe0  addsd xmm5, xmm3
0bceffe4  mulsd xmm6, xmm2
0bceffe8  mulsd xmm7, xmm1
0bceffec  ucomisd xmm0, xmm5
0bcefff0  ja 0x0bceffe0	->LOOP
0bcefff2  jmp 0x0bce001c	->3
---- TRACE 1 stop -> loop

100
5.1537752073201e+47
7.8886090522101e+69
