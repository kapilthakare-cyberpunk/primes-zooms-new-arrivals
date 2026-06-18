.PHONY: all strips poster clean help

all: strips
	@echo "Building all deliverables..."

strips:
	@echo "Generating notice board strips PDF..."
	python3 generate-pdf.py

poster:
	@echo "Opening poster template in browser..."
	@open poster.html || xdg-open poster.html

help:
	@echo "Available targets:"
	@echo "  all    - Build all deliverables (default)"
	@echo "  strips - Generate notice board strips PDF"
	@echo "  poster - Open poster template in browser"
	@echo ""
	@echo "To add new items, edit items.json and run 'make strips'"

clean:
	find . -name "*.pdf" -delete
	rm -rf __pycache__ .pytest_cache