#-*- Makefile -*-

EXEC := a.out
OBJS := main.o _print.o

default: build run
build: $(EXEC)
compile: $(OBJS)
link: $(EXEC)
dump:
	objdump -s -d $(EXEC)
clean:
	rm -f *.out *.o
run: 
	./$(EXEC)

$(EXEC): $(OBJS) 
	gcc -v -o $(EXEC) $(OBJS)
%.o: %.[s|c]
	gcc -g -o $@ -c $<
