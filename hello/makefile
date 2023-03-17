#-*- Makefile -*-

# VARIABLES DEFINITION:`
DEBUGFLAGS := -s
EXEC := a.out
OBJS := main.o exit.o write.o

# RULES:
default: build run

build: $(EXEC)

$(EXEC): $(OBJS) 
	ld -o $(EXEC) $(OBJS) 

# implicit rules (pattern rules)
# @ is name of the current target
# < is name of dependency
%.o: %.s
	as -g -o $@ $<

dump: $(EXEC)
	objdump -s -d $(EXEC)

clean:
	rm -f *.out *.o

run:
	./$(EXEC)