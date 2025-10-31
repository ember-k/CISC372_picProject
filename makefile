CC = gcc
CFLAGS = -O2
PTHREAD_FLAGS = -pthread
OPENMP_FLAGS = -fopenmp

all: image_original image_pthreads image_omp

image_original: image_original.c image.h
	$(CC) $(CFLAGS) image_original.c -o image_original -lm

image_pthreads: image.c image.h
	$(CC) $(CFLAGS) $(PTHREAD_FLAGS) image.c -o image_pthreads -lm

image_omp: image_omp.c image.h
	$(CC) $(CFLAGS) $(OPENMP_FLAGS) image_omp.c -o image_omp -lm

clean:
	rm -f image_original image_pthreads image_omp *.o output.png
