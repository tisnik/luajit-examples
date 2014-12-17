---- TRACE 1 start test46.lua:14
---- TRACE 1 mcode 64
00397fc0  ldr   r11, [r9, #96]
00397fc4  ldrd  r4, [r9, #24]
00397fc8  cmn   r5, #14
00397fcc  blne  0x00390018	->0
00397fd0  adds  r4, r4, #1
00397fd4  blvs  0x00390018	->0
00397fd8  add   r11, r11, #1
00397fdc  cmp   r11, #100
00397fe0  blgt  0x0039001c	->1
->LOOP:
00397fe4  mov   r10, r4
00397fe8  adds  r4, r10, #1
00397fec  blvs  0x00390020	->2
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #100
00397ff8  ble   0x00397fe4	->LOOP
00397ffc  bl    0x00390024	->3
---- TRACE 1 stop -> loop

---- TRACE 2 start 1/3 test46.lua:13
---- TRACE 2 mcode 84
00397f68  mov   r8, #1
00397f6c  mov   r6, #100
00397f70  mvn   r5, #13
00397f74  ldr   r10, [r9, #64]
00397f78  add   r10, r10, r8
00397f7c  cmp   r10, r6
00397f80  blgt  0x0039001c	->1
00397f84  str   r5, [r9, #124]
00397f88  str   r8, [r9, #120]
00397f8c  str   r5, [r9, #116]
00397f90  str   r8, [r9, #112]
00397f94  str   r5, [r9, #108]
00397f98  str   r6, [r9, #104]
00397f9c  str   r5, [r9, #100]
00397fa0  str   r8, [r9, #96]
00397fa4  str   r5, [r9, #92]
00397fa8  str   r10, [r9, #88]
00397fac  str   r5, [r9, #68]
00397fb0  str   r10, [r9, #64]
00397fb4  strd  r4, [r9, #24]
00397fb8  b     0x00397fc0
---- TRACE 2 stop -> 1

---- TRACE 3 start 2/1 test46.lua:12
---- TRACE 3 mcode 116
00397ef0  mov   r8, #1
00397ef4  mov   r6, #100
00397ef8  mvn   r5, #13
00397efc  ldr   r10, [r9, #32]
00397f00  add   r10, r10, r8
00397f04  cmp   r10, r6
00397f08  blgt  0x0039001c	->1
00397f0c  str   r5, [r9, #124]
00397f10  str   r8, [r9, #120]
00397f14  str   r5, [r9, #116]
00397f18  str   r8, [r9, #112]
00397f1c  str   r5, [r9, #108]
00397f20  str   r6, [r9, #104]
00397f24  str   r5, [r9, #100]
00397f28  str   r8, [r9, #96]
00397f2c  str   r5, [r9, #92]
00397f30  str   r8, [r9, #88]
00397f34  str   r5, [r9, #84]
00397f38  str   r8, [r9, #80]
00397f3c  str   r5, [r9, #76]
00397f40  str   r6, [r9, #72]
00397f44  str   r5, [r9, #68]
00397f48  str   r8, [r9, #64]
00397f4c  str   r5, [r9, #60]
00397f50  str   r10, [r9, #56]
00397f54  str   r5, [r9, #36]
00397f58  str   r10, [r9, #32]
00397f5c  strd  r4, [r9, #24]
00397f60  b     0x00397fc0
---- TRACE 3 stop -> 1

