---- TRACE 1 start test47.lua:15
---- TRACE 1 mcode 72
00397fb8  mov   r0, #-1275068416
00397fbc  orr   r0, r0, #47448064
00397fc0  orr   r0, r0, #17408
00397fc4  vldr  d0, [r0, #224]
00397fc8  ldr   r11, [r9, #96]
00397fcc  ldr   lr, [r9, #28]
00397fd0  vldr  d1, [r9, #24]
00397fd4  cmn   lr, #15
00397fd8  blhs  0x00390018	->0
00397fdc  vadd.f64 d15, d1, d0
00397fe0  add   r11, r11, #1
00397fe4  cmp   r11, #100
00397fe8  blgt  0x0039001c	->1
->LOOP:
00397fec  vadd.f64 d15, d15, d0
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #100
00397ff8  ble   0x00397fec	->LOOP
00397ffc  bl    0x00390024	->3
---- TRACE 1 stop -> loop

---- TRACE 2 start test47.lua:13
---- TRACE 2 mcode 64
00397f74  mvn   r11, #13
00397f78  mov   r8, #1
00397f7c  mov   r6, #100
00397f80  ldr   r10, [r9, #64]
00397f84  cmp   r10, #50
00397f88  bllt  0x0039001c	->1
00397f8c  str   r11, [r9, #124]
00397f90  str   r8, [r9, #120]
00397f94  str   r11, [r9, #116]
00397f98  str   r8, [r9, #112]
00397f9c  str   r11, [r9, #108]
00397fa0  str   r6, [r9, #104]
00397fa4  str   r11, [r9, #100]
00397fa8  str   r8, [r9, #96]
00397fac  strd  r10, [r9, #88]
00397fb0  b     0x00397fb8
---- TRACE 2 stop -> 1

---- TRACE 3 start 1/3 test47.lua:17
---- TRACE 3 mcode 36
00397f4c  mvn   r11, #13
00397f50  ldr   r10, [r9, #64]
00397f54  add   r10, r10, #1
00397f58  cmp   r10, #100
00397f5c  blgt  0x0039001c	->1
00397f60  strd  r10, [r9, #88]
00397f64  strd  r10, [r9, #64]
00397f68  vstr  d15, [r9, #24]
00397f6c  b     0x00397f74
---- TRACE 3 stop -> 2

---- TRACE 4 start 2/1 test47.lua:19
---- TRACE 4 mcode 68
00397f04  mvn   r11, #13
00397f08  mov   r0, #-1275068416
00397f0c  orr   r0, r0, #47448064
00397f10  orr   r0, r0, #17408
00397f14  vldr  d14, [r0, #232]
00397f18  ldr   lr, [r9, #28]
00397f1c  vldr  d15, [r9, #24]
00397f20  cmn   lr, #15
00397f24  blhs  0x00390018	->0
00397f28  vdiv.f64 d15, d15, d14
00397f2c  add   r10, r10, #1
00397f30  cmp   r10, #100
00397f34  blgt  0x0039001c	->1
00397f38  strd  r10, [r9, #88]
00397f3c  strd  r10, [r9, #64]
00397f40  vstr  d15, [r9, #24]
00397f44  b     0x00397f74
---- TRACE 4 stop -> 2

---- TRACE 5 start 3/1 test47.lua:12
---- TRACE 5 mcode 76
00397eb4  mvn   r11, #13
00397eb8  mov   r8, #1
00397ebc  mov   r6, #100
00397ec0  ldr   r10, [r9, #32]
00397ec4  add   r10, r10, r8
00397ec8  cmp   r10, r6
00397ecc  blgt  0x0039001c	->1
00397ed0  str   r11, [r9, #92]
00397ed4  str   r8, [r9, #88]
00397ed8  str   r11, [r9, #84]
00397edc  str   r8, [r9, #80]
00397ee0  str   r11, [r9, #76]
00397ee4  str   r6, [r9, #72]
00397ee8  str   r11, [r9, #68]
00397eec  str   r8, [r9, #64]
00397ef0  strd  r10, [r9, #56]
00397ef4  strd  r10, [r9, #32]
00397ef8  vstr  d15, [r9, #24]
00397efc  b     0x00397f74
---- TRACE 5 stop -> 2

