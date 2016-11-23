#format is target-name: target dependencies
#{-tab-}actions

# Executable "task1c" depends on the file task1c.o.
task1c: task1c.o
	gcc -m32 -g -Wall -o task1c task1c.o

# Depends on "task1c" source file
task1c.o: task1c.c
	gcc -g -Wall -m32 -ansi -c -o task1c.o task1c.c
	
#tell make that "clean" is not a file name!
.PHONY: clean

#Clean the build directory
clean: 
	rm -f *.o task1c

