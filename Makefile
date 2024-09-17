# Makefile for generating diagrams from Graphviz .dot files

# Directory containing Graphviz .dot files
GRAPHVIZ_DIR = graphviz

# File extension for the Graphviz source files
EXT = dot

# Target format for output images (you can change to pdf if needed)
OUTPUT_FORMAT = png

# Find all .dot files in the graphviz directory
SOURCES = $(wildcard $(GRAPHVIZ_DIR)/*.$(EXT))

# Generate the corresponding output file names
TARGETS = $(SOURCES:.$(EXT)=.$(OUTPUT_FORMAT))

# Default target: generate all diagrams
all: $(TARGETS)

# Rule to convert .dot to .png using Graphviz
$(GRAPHVIZ_DIR)/%.$(OUTPUT_FORMAT): $(GRAPHVIZ_DIR)/%.$(EXT)
	@echo "Generating $@"
	dot -T$(OUTPUT_FORMAT) -o $@ $<

# Clean target: remove generated diagrams
clean:
	@echo "Cleaning up generated files..."
	rm -f $(GRAPHVIZ_DIR)/*.$(OUTPUT_FORMAT)
