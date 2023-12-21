include .packrc
RELMODE=release
VERSION=0.0.0

clean:
	@find . -name '*~' -delete
	@find . -name '__pycache__' -type d | xargs rm -fr
	@find . -name '*.egg-info' -type d | xargs rm -fr

cleandist:
	@rm -rf dist/*.*

cleanall:clean cleandist

#Example: make release RELMODE=release VERSION=0.2.0.2 
release:
	@echo "Releasing a new version..."
	@sh release.sh $(RELMODE) $(VERSION)

install:
	@echo "Installing locally..."
	@sudo $(PYTHON) -m pip install -e .
