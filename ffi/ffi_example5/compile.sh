gcc -fPIC -c -o ffi_example5.o ffi_example5.c
gcc -shared -Wl,-soname,libffi_example5.so -o libffi_example5.so ffi_example5.o

