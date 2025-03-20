CC=gcc
CFLAGS=-Wall -Wextra -Werror
LDFLAGS=-L/usr/local/lib/
LDLIBS=-ltss2-esys
TARGET=standalone-example
OBJS=standalone-example.o


$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

standalone-example.o : standalone-example.c
	$(CC) -c -o standalone-example.o standalone-example.c

clean:
	rm $(OBJS) $(TARGET)
