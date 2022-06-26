# Man Group PyData 2022

The Man Group PyData 2022 Jupyter Notebook Plotting Competition is explained [here](https://github.com/man-group/pydata2022)

## Exploration Analysis

View the [notebook](https://gsnidero.github.io/pyData2022/options-exploration-analysis.html). This is a html file hosted by GitHub Pages.

## Code and Further Analysis

To run the code create the environnement with `pip install -r requirements-dev.txt` or with Poetry `poetry install`, with Python 3.9. Note that this installs also development dependencies such as formatting/linting libraries (`black`, `isort`, `flake8`, `nbqa`, ...).

The exploration analysis code is in `options-exploration-analysis.ipynb`, and can be converted to html for GitHub Pages using `jupyter nbconvert --no-input --to html options-exploration-analysis.ipynb` (see also the `Makefile` for details).

One can use the Man Group [d-tale](https://github.com/man-group/dtale) library to explore the dataset further; to start the server `python start_dtale.py`.
