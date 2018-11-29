rcstring: rcstring.o
	g++ -g -Wall -pedantic $^ -o $@
	valgrind --leak-check=full --show-leak-kinds=all ./rcstring

rcstring.o: rcstring.cpp rcstring.h
	g++ -g -c -Wall -pedantic $< -o $@

.PHONY: clean

clean:
	-rm rcstring.o rcstring
