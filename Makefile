# Compiler and flags
CXX := g++
CXXFLAGS := -std=c++11 -Wall -Wextra -O2

# Output directory
OUT_DIR := out

# Usage example:
#   make run FILE=src/main.cpp
#
# If FILE is not provided, it will print a help message.

# Default target
all:
	@echo "Usage: make run FILE=path/to/file.cpp"

# Build target (depends on FILE)
$(OUT_DIR)/program: $(FILE) | $(OUT_DIR)
	@if [ -z "$(FILE)" ]; then \
		echo "Error: No FILE specified. Use 'make run FILE=yourfile.cpp'"; \
		exit 1; \
	fi
	@echo "Building $(FILE)..."
	$(CXX) $(CXXFLAGS) $(FILE) -o $(OUT_DIR)/program

# Create output directory if missing
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# Run target
run: $(OUT_DIR)/program
	@echo "Running program..."
	@./$(OUT_DIR)/program

# Clean build artifacts
clean:
	rm -rf $(OUT_DIR)

.PHONY: all run clean
