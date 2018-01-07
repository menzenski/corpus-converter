help:
	@echo "Usage:"
	@echo "    make help        								 show this message"
	@echo "    make setup       								 create virtual environment and install dependencies"
	@echo "    make activate    								 enter virtual environment"
	@echo "    CORPUS_FILE=~/path/to/corpus/file make convert    convert corpus file from XML to XLSX"
	@echo "    make test          								 run the test suite"
	@echo "    exit              								 leave virtual environment"

setup:
	pip install pipenv
	pipenv install --dev --three

activate:
	pipenv shell -c

convert:
	echo "python3 setup.py develop && corpus-converter $(CORPUS_FILE)"

test:
	pipenv run py.test tests

.PHONY: help activate test

