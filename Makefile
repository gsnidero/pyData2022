# NOTE: needs 3.82, on Mac use gmake installed via brew

# run multiple lines in a recipe in the same shell, so I don't have to chain commands together with semicolon
.ONESHELL:


nbcovert:
	jupyter nbconvert --no-input --to html options-exploration-analysis.ipynb 

lint: isort black flake8 mypy

clean:
	rm -rf __pycache__ .pytest_cache .mypy_cache

isort:
	isort .

black:
	black . --extend-exclude=.*stub

flake8:
	flake8 .
	
mypy:
	mypy . 

nbqa:
	nbqa isort .
	nbqa black .
	nbqa flake8 .

# ENV_NAME = pydata2022
# install:
# 	poetry install
# 	# poetry run ipython kernel install --user --name $(ENV_NAME)	


pip-export:
	poetry export --dev --output requirements-dev.txt --without-hashes

