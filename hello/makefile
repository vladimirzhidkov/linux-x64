#-*- Makefile -*-

EXEC := a.out
OBJS := main.o exit.o write.o 

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
	ld -e main -o $(EXEC) $(OBJS)
%.o: %.[s|c]
	as -g -o $@ -c $<
