[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD)

# Demonstration of a (file) repository for reproducibility

Purpose: we image that the file `figure1.pdf` is used in a publication, and this repository is made available
with the publication to allow others to *reproduce* the figure (and *re-use* the work that has led to the figure).

## Files in this repository:

- [`figure1.ipynb`](figure1.ipynb): A jupyter notebook to create the `figure1.pdf` file from the raw data
- [`requirements.txt`](requirements.txt): software specification for Python libraries needed in the notebook
- [`time_series_covid19_deaths_global.csv`](time_series_covid19_deaths_global.csv): the raw data
- [`README.md`](README.md) -- this file

## No-install reproduction of `figure1.pdf`

Using Binder, it is possible to re-execute this notebook on a cloud resource. This can be tested by following this link:

https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD?labpath=figure1.ipynb

It may take a few minutes for this link to redirect to a Notebook in the browser. Once this has arrived, one can reproduce
the figure by re-executing all cells in the notebook by pressing `SHIFT-RETURN` once for each cell.

## Software dependencies and installation

Given Python3 (tested on python3.11), one needs to install the packages listed in [`requirements.txt`](requirements.txt). For example:

```console
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```
To be able to execute the notebooks (to recreate `figure1.pdf`), one also needs to install 
the Jupyter notebook (for example `pip install notebook==7.0.2`). Run the notebook interactively 
using `jupyter-notebook figure1.ipynb`, or execute as a script using 
`jupyter-nbconvert --to html --execute figure1.ipynb`.

Alternatively, explore the notebook using the cloud-hosted [Binder service](https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD): [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD).
