# NOTE: needs 3.82, on Mac use gmake installed via brew

# run multiple lines in a recipe in the same shell, so I don't have to chain commands together with semicolon
.ONESHELL:


NB_NAME = options-exploration-analysis.ipynb


publish: nbqa nbconvert pip-export

nbconvert:
	poetry run jupyter nbconvert --execute --to notebook --inplace  ${NB_NAME} 
	poetry run jupyter nbconvert --no-input --to html ${NB_NAME} 

nbqa:
	nbqa isort .
	nbqa black .
	nbqa flake8 .

pip-export:
	poetry export --dev --output requirements-dev.txt --without-hashes

lint: isort black flake8 mypy

isort:
	isort .

black:
	black . --extend-exclude=.*stub

flake8:
	flake8 .
	
mypy:
	mypy . 

clean:
	rm -rf __pycache__ .pytest_cache .mypy_cache

install:
	poetry install
