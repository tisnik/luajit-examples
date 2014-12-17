---- TRACE 1 start test49.lua:17
---- TRACE 1 mcode 80
00397fb0  ldr   r11, [r9, #24]
00397fb4  ldrd  r4, [r9, #8]
00397fb8  cmn   r5, #14
00397fbc  blne  0x00390018	->0
00397fc0  adds  r4, r4, #1
00397fc4  blvs  0x00390018	->0
00397fc8  cmp   r11, #500
00397fcc  blgt  0x0039001c	->1
00397fd0  add   r11, r11, #1
00397fd4  cmp   r11, #1000
00397fd8  blgt  0x00390020	->2
->LOOP:
00397fdc  mov   r10, r4
00397fe0  adds  r4, r10, #1
00397fe4  blvs  0x00390024	->3
00397fe8  cmp   r11, #500
00397fec  blgt  0x00390028	->4
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #1000
00397ff8  ble   0x00397fdc	->LOOP
00397ffc  bl    0x0039002c	->5
---- TRACE 1 stop -> loop

---- TRACE 2 start 1/1 test49.lua:20
---- TRACE 2 mcode 72
00397f64  mvn   r5, #13
00397f68  ldr   lr, [r9, #20]
00397f6c  ldr   r10, [r9, #16]
00397f70  cmn   lr, #14
00397f74  blne  0x00390018	->0
00397f78  adds  r10, r10, #1
00397f7c  blvs  0x00390018	->0
00397f80  add   r8, r11, #1
00397f84  cmp   r8, #1000
00397f88  blgt  0x0039001c	->1
00397f8c  str   r5, [r9, #52]
00397f90  str   r8, [r9, #48]
00397f94  str   r5, [r9, #28]
00397f98  str   r8, [r9, #24]
00397f9c  str   r5, [r9, #20]
00397fa0  str   r10, [r9, #16]
00397fa4  strd  r4, [r9, #8]
00397fa8  b     0x00397fb0
---- TRACE 2 stop -> 1

