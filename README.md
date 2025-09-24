[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD?labpath=figure1.ipynb)

# Demonstration of a (file) repository for reproducibility

Purpose: we image that the file `figure1.pdf` is used in a publication, and this repository is made available
with the publication to allow others to *reproduce* the figure (and *re-use* the work that has led to the figure).

## Files in this repository:

- [`figure1.pdf`](figure1.pdf): The main result
- [`figure1.ipynb`](figure1.ipynb): A jupyter notebook to create the `figure1.pdf` file from the raw data
- [`requirements.txt`](requirements.txt): software specification for Python libraries needed in the notebook
- [`runtime.txt`](runtime.txt): specify which Python version to use
- [`time_series_covid19_deaths_global.csv`](time_series_covid19_deaths_global.csv): the raw data
- [`README.md`](README.md) -- this file

## No-install reproduction of `figure1.pdf`

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD?labpath=figure1.ipynb)


Using Binder, it is possible to re-execute this notebook on a cloud resource. This can be tested by following this link:

- https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD - Jupyter lab, can open files in this repository
- https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD?labpath=figure1.ipynb - Jupyter Lab, open notebook figure1.ipynb immediately

It may take a few minutes for this link to redirect to a Notebook in the browser. Once this has arrived, one can reproduce
the figure by re-executing all cells in the notebook `figure1.ipynb` by pressing `SHIFT-RETURN` once for each cell.

## Software dependencies and installation

Given Python3 (tested on python3.12.11), one needs to install the
packages listed in [`requirements.txt`](requirements.txt). For example:

```console
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

To re-create the [`figure.pdf`](figure1.pdf) file, one needs to run the notebook interactively 
using `jupyter-notebook figure1.ipynb`, or execute as a script using 
`jupyter-nbconvert --to html --execute figure1.ipynb`.

Alternatively, explore the notebook using the cloud-hosted Binder option mentioned above.  

## Data source and license

The data file [`time_series_covid19_deaths_global.csv`](time_series_covid19_deaths_global.csv) is obtained as is from 
the "COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University" (https://github.com/CSSEGISandData/COVID-19) and licensed there under the [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

All other files are made availble under the [BSD 3-Clause "New" or "Revised" License](LICENSE).

## Clone of this repository at Max Planck Compute and Data Facility (MPCDF)

Useful if mybinder.org is overloaded.

- https://gitlab.mpcdf.mpg.de/hafan/reproducibility-repository-example

- Binder at MPCDF: [![Binder](https://mybinder.org/badge_logo.svg)](https://notebooks.mpcdf.mpg.de/binder/v2/git/https%3A%2F%2Fgitlab.mpcdf.mpg.de%2Fhafan%2Freproducibility-repository-example/HEAD)

- Binder at mybinder.org: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/fangohr/reproducibility-repository-example/HEAD)

