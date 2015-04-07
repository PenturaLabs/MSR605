all: msr

msr: MSR605.cpp msr605.o libmsr605.so
	g++ -Wall -L. -lstdc++ MSR605.cpp -lmsr605 -o msr605

msr605.o: MSR605.cpp libmsr605.so
	g++ -Wall -L. -lstdc++ MSR605.cpp -lmsr605 -o msr605.o

libmsr605.so: libmsr605.cpp
	g++ -Wall -fPIC -shared libmsr605.cpp -o libmsr605.so

clean:
	rm -rf libmsr605.so test msr605.o msr605
