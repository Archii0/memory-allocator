flags=-O2 -Wall -std=c2x
ldflags=

.PHONY: all clean

all: clean Memory-Allocator

Memory-Allocator: Memory-Allocator.o
	cc $(flags) $^ -o $@ $(ldflags)

Memory-Allocator.o: Memory-Allocator.c Memory-Allocator.h
	cc $(flags) -c $<

clean:
	rm -f *.o Memory-Allocator