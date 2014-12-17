---- TRACE 1 start test50.lua:18
---- TRACE 1 mcode 80
00397fb0  ldr   r11, [r9, #32]
00397fb4  cmp   r11, #100
00397fb8  blgt  0x0039001c	->1
00397fbc  cmp   r11, #200
00397fc0  blgt  0x00390020	->2
00397fc4  cmp   r11, #300
00397fc8  blgt  0x00390024	->3
00397fcc  add   r11, r11, #1
00397fd0  cmp   r11, #1000
00397fd4  blgt  0x00390028	->4
->LOOP:
00397fd8  cmp   r11, #100
00397fdc  blgt  0x00390030	->6
00397fe0  cmp   r11, #200
00397fe4  blgt  0x00390034	->7
00397fe8  cmp   r11, #300
00397fec  blgt  0x00390038	->8
00397ff0  add   r11, r11, #1
00397ff4  cmp   r11, #1000
00397ff8  ble   0x00397fd8	->LOOP
00397ffc  bl    0x0039003c	->9
---- TRACE 1 stop -> loop

---- TRACE 2 start 1/1 test50.lua:20
---- TRACE 2 mcode 80
00397f5c  mvn   r5, #13
00397f60  ldr   lr, [r9, #12]
00397f64  ldr   r4, [r9, #8]
00397f68  cmn   lr, #14
00397f6c  blne  0x00390018	->0
00397f70  adds  r4, r4, #1
00397f74  blvs  0x00390018	->0
00397f78  cmp   r11, #200
00397f7c  blgt  0x0039001c	->1
00397f80  cmp   r11, #300
00397f84  blgt  0x00390020	->2
00397f88  add   r10, r11, #1
00397f8c  cmp   r10, #1000
00397f90  blgt  0x00390024	->3
00397f94  str   r5, [r9, #60]
00397f98  str   r10, [r9, #56]
00397f9c  str   r5, [r9, #36]
00397fa0  str   r10, [r9, #32]
00397fa4  strd  r4, [r9, #8]
00397fa8  b     0x00397fb0
---- TRACE 2 stop -> 1

---- TRACE 3 start 2/1 test50.lua:23
---- TRACE 3 mcode 80
00397f08  mvn   r5, #13
00397f0c  ldr   lr, [r9, #20]
00397f10  ldr   r10, [r9, #16]
00397f14  cmn   lr, #14
00397f18  blne  0x00390018	->0
00397f1c  adds  r10, r10, #1
00397f20  blvs  0x00390018	->0
00397f24  cmp   r11, #300
00397f28  blgt  0x0039001c	->1
00397f2c  add   r8, r11, #1
00397f30  cmp   r8, #1000
00397f34  blgt  0x00390020	->2
00397f38  str   r5, [r9, #60]
00397f3c  str   r8, [r9, #56]
00397f40  str   r5, [r9, #36]
00397f44  str   r8, [r9, #32]
00397f48  str   r5, [r9, #20]
00397f4c  str   r10, [r9, #16]
00397f50  strd  r4, [r9, #8]
00397f54  b     0x00397fb0
---- TRACE 3 stop -> 1

---- TRACE 4 start 3/1 test50.lua:26
---- TRACE 4 mcode 80
00397eb4  mvn   r5, #13
00397eb8  ldr   lr, [r9, #28]
00397ebc  ldr   r8, [r9, #24]
00397ec0  cmn   lr, #14
00397ec4  blne  0x00390018	->0
00397ec8  adds  r8, r8, #1
00397ecc  blvs  0x00390018	->0
00397ed0  add   r6, r11, #1
00397ed4  cmp   r6, #1000
00397ed8  blgt  0x0039001c	->1
00397edc  str   r5, [r9, #60]
00397ee0  str   r6, [r9, #56]
00397ee4  str   r5, [r9, #36]
00397ee8  str   r6, [r9, #32]
00397eec  str   r5, [r9, #28]
00397ef0  str   r8, [r9, #24]
00397ef4  str   r5, [r9, #20]
00397ef8  str   r10, [r9, #16]
00397efc  strd  r4, [r9, #8]
00397f00  b     0x00397fb0
---- TRACE 4 stop -> 1

