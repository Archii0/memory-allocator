flags=-fPIC -shared
ldflags=

.PHONY: all clean

all: clean memalloc.so

memalloc.so: Memory-Allocator.c
	cc $(flags) -o memalloc.so Memory-Allocator.c

clean:
	rm -f *.o Memory-Allocator