---- TRACE 1 start test43.lua:12
---- TRACE 1 mcode 84
00397fac  ldrd  r4, [r9, #8]
00397fb0  cmn   r5, #14
00397fb4  blne  0x00390018	->0
00397fb8  adds  r4, r4, #1
00397fbc  blvs  0x00390018	->0
00397fc0  ldrd  r6, [r9]
00397fc4  cmn   r7, #14
00397fc8  blne  0x00390018	->0
00397fcc  adds  r6, r6, #1
00397fd0  blvs  0x00390018	->0
00397fd4  cmp   r6, #100
00397fd8  blge  0x0039001c	->1
->LOOP:
00397fdc  mov   r11, r6
00397fe0  mov   r10, r4
00397fe4  adds  r4, r10, #1
00397fe8  blvs  0x00390020	->2
00397fec  adds  r6, r11, #1
00397ff0  blvs  0x00390020	->2
00397ff4  cmp   r6, #100
00397ff8  blt   0x00397fdc	->LOOP
00397ffc  bl    0x00390024	->3
---- TRACE 1 stop -> loop

