CXX = g++
MAIN = main
PROG_NAME = HelloWorld
FLAGS = -g -Wall -lGL -lGLU `/opt/SDL2/SDL/sdl2-config --cflags --libs`
BIN_DIR = bin/
OBJ_DIR = objects/

$(PROG_NAME): main.o
	mkdir $(BIN_DIR)
	$(CXX) $(OBJ_DIR)main.o -o $(BIN_DIR)$(PROG_NAME) $(FLAGS)

main.o: main.cpp
	mkdir $(OBJ_DIR)
	$(CXX) $(FLAGS) -c main.cpp -o $(OBJ_DIR)main.o

clean:
	@echo Cleaning up...
	@echo Removing file $(BIN_DIR)$(PROG_NAME)
	@rm $(BIN_DIR)$(PROG_NAME)
	@echo Removing directory $(BIN_DIR)
	@rm -r $(BIN_DIR)
	@echo Removing file $(OBJ_DIR)$(MAIN).o
	@rm $(OBJ_DIR)$(MAIN).o
	@echo Removing directory $(OBJ_DIR)
	@rm -r $(OBJ_DIR)
	@echo Done.
