gcc -fPIC -c -o ffi_example6.o ffi_example6.c
gcc -shared -Wl,-soname,libffi_example6.so -o libffi_example6.so ffi_example6.o

