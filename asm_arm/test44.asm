---- TRACE 1 start test44.lua:13
---- TRACE 1 mcode 64
00397fc0  ldr   r11, [r9, #56]
00397fc4  ldrd  r4, [r9, #16]
00397fc8  cmn   r5, #14
00397fcc  blne  0x00390018	->0
00397fd0  adds  r4, r4, #1
00397fd4  blvs  0x00390018	->0
00397fd8  add   r11, r11, #1
00397fdc  cmp   r11, #10
00397fe0  blgt  0x0039001c	->1
->LOOP:
00397fe4  mov   r10, r4
00397fe8  adds  r4, r10, #1
00397fec  blvs  0x00390020	->2
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #10
00397ff8  ble   0x00397fe4	->LOOP
00397ffc  bl    0x00390024	->3
---- TRACE 1 stop -> loop

