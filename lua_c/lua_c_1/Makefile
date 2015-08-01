CC=gcc
COPTIONS=-ansi -Wall
INCLUDEPATH=/usr/include/lua5.1
LIBS=lua5.1

all:	lua_c_1

clean:
	rm -f *.o
	rm -f lua_c_1

lua_c_1:	lua_c_1.o
	$(CC) -o $@ $< -l$(LIBS)

%.o: %.c
	$(CC) $(COPTIONS) -c -I$(INCLUDEPATH) $<

