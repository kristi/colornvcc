NVCC   = ~/bin/nvcc -g
CXX    = $(NVCC)
LINK   = $(CXX)

# Program-specific
TARGET= hello_world
SRC = hello_world.cu
OBJ = hello_world.cu.o

# Build Rules
.SUFFIXES: .cu

$(TARGET): $(OBJ) 
	$(LINK) -o $(TARGET) $(OBJ)

$(OBJ): $(SRC)
	$(NVCC) $(NVCCFLAGS) $(INCLUDES) -o $(OBJ) -c $< 

clean:
	rm -f $(OBJ) $(TARGET)
