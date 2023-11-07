# Nombre del archivo de salida
TARGET = analizador

# Archivo fuente de Flex
FLEX_SOURCE = p2.l

# Archivo de salida de Flex
FLEX_OUTPUT = lex.yy.c

# Compilador
CC = gcc

# Opciones del compilador
CFLAGS = -lfl

all: $(TARGET)

$(TARGET): $(FLEX_OUTPUT)
	$(CC) -o $@ $^ $(CFLAGS)

$(FLEX_OUTPUT): $(FLEX_SOURCE)
	flex -o $@ $^

clean:
	rm -f $(FLEX_OUTPUT) $(TARGET)
