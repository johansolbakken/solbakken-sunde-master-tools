# solbakken-sunde-master-tools

## Graphviz Diagrams

This repository contains query optimization diagrams represented as relational algebra trees using Graphviz. All diagram source files are stored in the `graphviz/` folder with the `.dot` extension.

### Installing Graphviz on macOS

To work with Graphviz on a Mac, you can install it via Homebrew:

```bash
brew install graphviz
```

### Generating Diagrams

The source code for each diagram is stored as .dot files in the graphviz/ folder. To generate the diagram files (e.g., PNG or PDF), you can run the Makefile provided in the repository. This will convert all .dot files into image formats.

```bash
make
```

This will process all .dot files in the graphviz/ folder and generate corresponding PNG files.
