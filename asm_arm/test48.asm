---- TRACE 1 start test48.lua:17
---- TRACE 1 mcode 120
00397f88  sub   sp, sp, #8
00397f8c  str   r9, [sp, #8]
00397f90  ldr   r11, [r9, #24]
00397f94  ldrd  r4, [r9, #8]
00397f98  cmn   r5, #14
00397f9c  blne  0x00390018	->0
00397fa0  adds  r4, r4, #1
00397fa4  blvs  0x00390018	->0
00397fa8  cmp   r11, #50
00397fac  blle  0x0039001c	->1
00397fb0  ldrd  r6, [r9, #16]
00397fb4  cmn   r7, #14
00397fb8  blne  0x00390020	->2
00397fbc  adds  r6, r6, #1
00397fc0  blvs  0x00390020	->2
00397fc4  add   r11, r11, #1
00397fc8  cmp   r11, #100
00397fcc  blgt  0x00390024	->3
->LOOP:
00397fd0  mov   r10, r6
00397fd4  mov   r9, r4
00397fd8  adds  r4, r9, #1
00397fdc  blvs  0x00390028	->4
00397fe0  cmp   r11, #50
00397fe4  blle  0x0039002c	->5
00397fe8  adds  r6, r10, #1
00397fec  blvs  0x00390030	->6
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #100
00397ff8  ble   0x00397fd0	->LOOP
00397ffc  bl    0x00390034	->7
---- TRACE 1 stop -> loop

