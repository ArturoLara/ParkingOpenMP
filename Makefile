#comment
CC=mpiCC
#CFLAGS=-DDEBUG -O0123
CFLAGS=-g -DDEBUG
LDLIBS=
INCLUDE=-I. -I./include
EXEC=prueba
OBJS=car.o plaza.o parking.o main.o

all: $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDE) $(LDLIBS) $(OBJS) main.cpp -o $(EXEC)
#para cualquier .o que falte, busco sus cpp
%.o: %.cpp
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@
