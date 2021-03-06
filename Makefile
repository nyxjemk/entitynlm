CC=CC
LIBS=-L/homeappl/home/jkunz/appl_taito/dynet/build/dynet/ -ldynet -lstdc++ -lm -lboost_serialization -lboost_filesystem -lboost_system -lboost_random -lboost_program_options
CFLAGS=-I/homeappl/home/jkunz/appl_taito/dynet/ -I/appl/math/dynet/include/eigen3 -I./easyloggingpp/src -std=gnu++11 -Wall # -O3 -Wunused -Wreturn-type
CPATH=/homeappl/home/jkunz/appl_taito/dynet/
OBJ=main.o util.o

all: entitynlm

%.o: %.cc
	$(CC) $(CFLAGS) -c -o $@ $< 

entitynlm: main.o util.o
	$(CC) $(LIBS) $^ -o $@

clean:
	rm -rf *.o *.*~ entitynlm

