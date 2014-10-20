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
	${ASM_DIR}/test12.asm

${ASM_DIR}/%.asm:	${SRC_DIR}/%.lua
	${LUAJIT_EXE} ${LUAJIT_FLAGS} $< $@

