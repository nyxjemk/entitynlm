CC=CC
LIBS=-/appl/math/dynet -ldynet -lstdc++ -lm -lboost_serialization -lboost_filesystem -lboost_system -lboost_random -lboost_program_options
CFLAGS=-I/appl/math/dynet -I/appl/math/dynet/include/eigen3 -I./easyloggingpp/src -std=gnu++11 -Wall # -O3 -Wunused -Wreturn-type
CPATH=/appl/math/dynet/include
OBJ=main.o util.o

all: entitynlm

%.o: %.cc
	$(CC) $(CFLAGS) -c -o $@ $< 

entitynlm: main.o util.o
	$(CC) $(LIBS) $^ -o $@

clean:
	rm -rf *.o *.*~ entitynlm

