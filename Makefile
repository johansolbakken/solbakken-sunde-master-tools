GRAPHVIZ_SOURCES = $(wildcard graphviz/*.dot)

GRAPHVIZ_TARGETS = $(GRAPHVIZ_SOURCES:.dot=.png)

all: $(GRAPHVIZ_TARGETS)

graphviz/cardinality_estimation.png: graphviz/cardinality_estimation_subgraph.png

graphviz/%.png: graphviz/%.dot
	@echo "Generating $@"
	dot -Tpng -Gdpi=600 -o $@ $<


clean:
	@echo "Cleaning up generated files..."
	rm -f graphviz/*.png
