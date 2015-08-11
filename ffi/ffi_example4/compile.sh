gcc -fPIC -c -o ffi_example4.o ffi_example4.c
gcc -shared -Wl,-soname,libffi_example4.so -o libffi_example4.so ffi_example4.o

