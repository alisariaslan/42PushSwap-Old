PROGRAM = push_swap
MAINFILE = $(PROGRAM).c
HEADER = $(PROGRAM).h
HELPERS = helpers/*.c
CHECKERS = checkers/*.c
MOVES = moves/*.c
RENAMER = -o $(PROGRAM)
GCC = gcc $(MAINFILE) $(HEADER) $(HELPERS) $(CHECKERS) $(MOVES) $(RENAMER)

make:
	clear
	@$(GCC)

debug:
	make
	./$(PROGRAM) 12 -12 -24 -435 123433

d:
	make
	./$(PROGRAM) 1 123 24 -435 123433
w:
	make
	./$(PROGRAM) 1 -12 -24 -435 -

n:
	clear
	norminette
