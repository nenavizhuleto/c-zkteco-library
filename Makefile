CC=gcc
CFLAGS=-c -std=c99 -g
LDFLAGS= -g
SOURCES=${wildcard src/*.c}
HEADERS=${wildcard include/*.h}
OBJECTS=${SOURCES:.c=.o}
EXEC = czkteco

all: ${SOURCES} ${OBJECTS} ${EXEC}

${EXEC}: ${OBJECTS}
	${CC} ${LDFLAGS} $^ -o $@

%.o: %.c ${HEADERS}
	${CC} ${CFLAGS} $< -o $@

clean:
	rm src/*.o ${EXEC}