gcc -fPIC -c -o ffi_example3.o ffi_example3.c
gcc -shared -Wl,-soname,libffi_example3.so -o libffi_example3.so ffi_example3.o

