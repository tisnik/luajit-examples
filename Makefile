SRC_DIR=src
ASM_DIR=asm

LUAJIT_EXE=luajit
LUAJIT_FLAGS=-bl

all:	build

clean:
	rm -f $(ASM_DIR)/*

build:	${ASM_DIR}/test01.asm \
	${ASM_DIR}/test02.asm \
	${ASM_DIR}/test03.asm \
	${ASM_DIR}/test04.asm \
	${ASM_DIR}/test05.asm \
	${ASM_DIR}/test06.asm \
	${ASM_DIR}/test07.asm \
	${ASM_DIR}/test08.asm \
	${ASM_DIR}/test09.asm \
	${ASM_DIR}/test10.asm \
	${ASM_DIR}/test11.asm \
	${ASM_DIR}/test12.asm \
	${ASM_DIR}/test13.asm \
	${ASM_DIR}/test14.asm \
	${ASM_DIR}/test15.asm \
	${ASM_DIR}/test16.asm \
	${ASM_DIR}/test17.asm \
	${ASM_DIR}/test18.asm \
	${ASM_DIR}/test19.asm \
	${ASM_DIR}/test20.asm \
	${ASM_DIR}/test21.asm \
	${ASM_DIR}/test22.asm \
	${ASM_DIR}/test23.asm \
	${ASM_DIR}/test24.asm \
	${ASM_DIR}/test25.asm \
	${ASM_DIR}/test26.asm \
	${ASM_DIR}/test27.asm \
	${ASM_DIR}/test28.asm \
	${ASM_DIR}/test29.asm \
	${ASM_DIR}/test30.asm \
	${ASM_DIR}/test31.asm \
	${ASM_DIR}/test32.asm \
	${ASM_DIR}/test33.asm \
	${ASM_DIR}/test34.asm

${ASM_DIR}/%.asm:	${SRC_DIR}/%.lua
	${LUAJIT_EXE} ${LUAJIT_FLAGS} $< $@

