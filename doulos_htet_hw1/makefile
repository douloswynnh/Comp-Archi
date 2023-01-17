CC = gcc
CFLAGS = -g -Wall
OBJS = main.o
DEPS = 
LIBS =
EXE = main

all: $(OBJS)
	$(CC) $(OBJS) -o $(EXE) $(LIBS) $(CFLAGS)

main.o: main.c
	$(CC) -c main.c

clean:
	rm $(OBJS) $(EXE)