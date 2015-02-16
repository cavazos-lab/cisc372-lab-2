
all: clean vectadd vectadd-openmp

check: check-vectadd

clean: clean-vectadd

%.o: %.c
	gcc -c $< -o $@

vectadd: vectadd.o
	gcc vectadd.o -o vectadd

check-vectadd: vectadd
	./vectadd 100

clean-vectadd:
	rm -rf vectadd *.o vectadd-openmp

vectadd-openmp:
	gcc -fopenmp vectadd-openmp.c -o vectadd-openmp

