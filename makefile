
image:image.c image.h
	gcc -g image.c -o image -lm

pthread: image_pthr.c image.h
	gcc image_pthr.c -o pthrimage -pthread -lm

openmp:
	gcc image_omp.c -o openimage -fopenmp -lm

clean:
	rm -f image output.png
