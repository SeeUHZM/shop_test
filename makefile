SOURCE_DIR = ./src
OBJ_DIR = ./obj
INC_DIR = ./inc

rely_src =$(wildcard $(SOURCE_DIR)/*.c)
obj = $(patsubst $(SOURCE_DIR)/%.c, $(OBJ_DIR)/%.o, $(rely_src))
debug_args=-Wall -g

all:hello.exe

$(OBJ_DIR)/%.o:$(SOURCE_DIR)/%.c
	gcc -c $< -o $@ $(debug_args) -I $(INC_DIR)


hello.exe:$(obj)   
	gcc $^ -o $@ $(debug_args) 

clean:
	rm -rf $(obj)  hello.exe
.PHONY: all clean 
