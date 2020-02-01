CFLAGS = -Wall
#target exe
all: main.o myfunc.o
	g++ $(CFALGS) -o myexe main.o myfunc.o

#rebuild if either of the files bwlow change
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

#rebuild if either of the files below change
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp


#type 'makeclean' to remove following
clean:
	rm -f *.o myexe.exe


