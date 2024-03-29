
<!-- README.md is generated from README.Rmd. Please edit that file -->

# intergrowth: An R Implementation of the INTERGROWTH-21st Standards and Tools <img src="man/figures/logo.png" width="200px" align="right" />

<!-- badges: start -->

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/nutriverse/intergrowth/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nutriverse/intergrowth/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/nutriverse/intergrowth/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/nutriverse/intergrowth/actions/workflows/test-coverage.yaml)
[![Codecov test
coverage](https://codecov.io/gh/nutriverse/intergrowth/branch/main/graph/badge.svg)](https://app.codecov.io/gh/nutriverse/intergrowth?branch=main)
[![CodeFactor](https://www.codefactor.io/repository/github/nutriverse/intergrowth/badge)](https://www.codefactor.io/repository/github/nutriverse/intergrowth)
[![DOI](https://zenodo.org/badge/134933889.svg)](https://zenodo.org/badge/latestdoi/134933889)
<!-- badges: end -->

The INTERGROWTH-21st Project is a multi-centre, multi-ethnic,
population-based project, conducted between 2009 and 2014, in eight
demarcated urban areas: Pelotas, Brazil; Shunyi County, Beijing, China;
Central Nagpur, India; Turin, Italy; Parklands Suburb, Nairobi, Kenya;
Muscat, Oman; Oxford, UK, and Seattle, USA. Its primary aim was to study
growth, health, nutrition and neuro-development from less than 14 weeks
of gestation to 2 years of age, using the same conceptual framework as
the WHO Multicentre Growth Reference Study, so as to produce
international prescriptive standards for pregnancy dating, maternal
weight gain, fetal growth, newborn size, the postnatal growth of preterm
infants and cognitive development at 2 years of age. These
scientifically robust clinical tools may be used to monitor and evaluate
maternal and fetal well-being, as well as infant health and nutrition at
an individual and population level.

## Installation

<!---
You can install the released version of intergrowth from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("intergrowth")
```
--->

The `intergrowth` package is in active development and is not yet on
[CRAN](https://CRAN.R-project.org).

You can install the development version from
[GitHub](https://github.com/) with:

``` r
if(!require(remotes)) install.packages("remotes")
remotes::install_github("nutriverse/intergrowth")
```

## What does `intergrowth` do?

The `intergrowth` package provides functions to calculate various
anthropometric indices for very young children (from less than 14 weeks
up to 2 years old) based on calculations prescribed by the
INTERGROWTH-21st Project.

## Citation

If you find the `intergrowth` package useful, please cite using the
suggested citation provided by a call to the `citation` function as
follows:

``` r
citation("intergrowth")
#> 
#> To cite intergrowth in publications use:
#> 
#>   Ernest Guevarra (2023). intergrowth: An R Implementation of the
#>   INTERGROWTH-21st Standards and Tools R package version 0.0.0.9001 URL
#>   https://nutriverse.io/intergrowth/ DOI 10.5281/zenodo.7504870
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {intergrowth: An R Implementation of the INTERGROWTH-21st Standards and Tools},
#>     author = {{Ernest Guevarra}},
#>     year = {2023},
#>     note = {R package version 0.0.0.9001},
#>     url = {https://nutriverse.io/intergrowth/},
#>     doi = {10.5281/zenodo.7504870},
#>   }
```

## Community guidelines

Feedback, bug reports, and feature requests are welcome; file issues or
seek support [here](https://github.com/nutriverse/intergrowth/issues).
If you would like to contribute to the package, please see our
[contributing
guidelines](https://nutriverse.io/intergrowth/CONTRIBUTING.html).

This project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
