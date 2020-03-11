all: run

SmithWaterman_test: SmithWaterman_test.c
	gcc -Wall -c SmithWaterman_test.c

SmithWaterman: SmithWaterman.o
	gcc -Wall -c SmithWaterman.c

run: SmithWaterman_test.o SmithWaterman.o
	gcc -Wall SmithWaterman_test.o SmithWaterman.o -o run

clean:
	rm -f *.o
