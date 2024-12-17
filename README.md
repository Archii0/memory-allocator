# memory-allocator
A simple memory allocator library in C for learning purposes.

This builds as a shared library, with implementations of `malloc`, `free`, `calloc` and `realloc`. The heap is implemented as a linked list of type `header_t` with data associated to it.

To use the library rather than the built in memory allocation functions, after building the library using `make`, run the command:
```bash
export LD_PRELOAD=$PWD/memalloc.so
```

As this references the path of a shared object, the library will be loaded before any other library. You can now run other commands in your shell environment that will use the custom library (i.e. 'ls').

To test this is actually using the library, you can add debugging statements in the code. Use the syscall `write` rather than `printf` as it relies on memory allocation functions, and will cause segmentation faults due to recursive malloc calling.

```C
write(STDOUT_FILENO, "test!", sizeof("test!"));
```
