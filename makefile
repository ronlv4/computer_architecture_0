target: all


all: asmAssignment0.o mainAssignment0.o


asmAssignment0.o: asmAssignment0.s
	nasm -f elf32 asmAssignment0.s -o asmAssignment0.o

mainAssignment0.o: asmAssignment0.o
	gcc -m32 mainAssignment0.c asmAssignment0.o -o asmAssignment0.out


clean:
	rm *.o asmAssignment0.out
