
# datateachr

<!-- badges: start -->

<img src="static/logo.png" width="200" align="right" />

[![R build
status](https://github.com/UBC-MDS/datateachr/workflows/R-CMD-check/badge.svg)](https://github.com/UBC-MDS/datateachr/actions)

[![Codecov test
coverage](https://codecov.io/gh/UBC-MDS/datateachr/branch/master/graph/badge.svg)](https://codecov.io/gh/UBC-MDS/datateachr?branch=master)
<!-- badges: end -->

*Pronounced “Data Teacher”*

The goal of `datateachr` is to provide an easy way to access open source
data for educational purposes. This is semi-tidied data obtained from
multiple sources included the City of Vancouver’s Open Data Portal.

## Installation

You can install the development version from
[GitHub](https://github.com/UBC-MDS/datateachr) with:

``` r
install.packages("devtools")
devtools::install_github("UBC-MDS/datateachr")
```

### Vignette

You may also access this information through our vignette. First use
this command for installation:

``` r
install.packages("devtools")
devtools::install_github("UBC-MDS/datateachr", build_vignettes = TRUE)
```

And to read the vignette use:

``` r
library(datateachr)
browseVignettes("datateachr")
```

This package contains (currently) 5 datasets :

  - `apt_buildings` : Acquired courtesy of [The City of Toronto’s Open
    Data Portal](https://open.toronto.ca/). It currently has 3455 rows.
  - `building_permits` : Acquired courtesy of [The City of Vancouver’s
    Open Data Portal](https://opendata.vancouver.ca/pages/home/). It
    currently has 20680 rows.
  - `parking_meters` : Acquired courtesy of [The City of Vancouver’s
    Open Data Portal](https://opendata.vancouver.ca/pages/home/). It
    currently has 10032 rows.
  - `steam_games`: Acquired courtesy of
    [Kaggle](https://www.kaggle.com/trolukovich/steam-games-complete-dataset%202019-06-16).
    It currently has 40833 rows.
  - `vancouver_trees`: Acquired courtesy of [The City of Vancouver’s
    Open Data Portal](https://opendata.vancouver.ca/pages/home/). It
    currently has 146611 rows.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dplyr)
library(datateachr)


vancouver_trees %>% filter(genus_name == "ACER") %>% 
  arrange(desc(diameter)) %>% head()
#> # A tibble: 6 x 20
#>   tree_id civic_number std_street genus_name species_name cultivar_name
#>     <dbl>        <dbl> <chr>      <chr>      <chr>        <chr>        
#> 1  149285         1906 W 14TH AV  ACER       SPECIES      <NA>         
#> 2   51001          849 W 60TH AV  ACER       SACCHARINUM  <NA>         
#> 3   84751         8250 HUDSON ST  ACER       PLATANOIDES  <NA>         
#> 4   54498         6611 ADERA ST   ACER       PLATANOIDES  SCHWEDLERI   
#> 5   78588         1333 W GEORGIA… ACER       RUBRUM       <NA>         
#> 6  220644         1438 RICHARDS … ACER       PLATANOIDES  EMERALD QUEEN
#> # … with 14 more variables: common_name <chr>, assigned <chr>,
#> #   root_barrier <chr>, plant_area <chr>, on_street_block <dbl>,
#> #   on_street <chr>, neighbourhood_name <chr>, street_side_name <chr>,
#> #   height_range_id <dbl>, diameter <dbl>, curb <chr>, date_planted <date>,
#> #   longitude <dbl>, latitude <dbl>
```

## License

`datateachr`’s data is curated from multiple sources with many of the
datasets aquired from the City of Vancouver Open Data Portal that uses
the Open Government Licence - Vancouver license. See their [terms of
use](https://opendata.vancouver.ca/pages/licence/).

## Citation

Run this command to get info on how to cite this package.

``` r
citation("datateachr")
#> 
#> To cite package 'datateachr' in publications use:
#> 
#>   Hayley Boyce and Jordan Bourak (2020). datateachr: Data collected to
#>   use for teaching at the University of British Columbia. R package
#>   version 0.0.0.1. https://github.com/UBC-MDS/datateachr
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {datateachr: Data collected to use for teaching at the University of British
#> Columbia},
#>     author = {Hayley Boyce and Jordan Bourak},
#>     year = {2020},
#>     note = {R package version 0.0.0.1},
#>     url = {https://github.com/UBC-MDS/datateachr},
#>   }
```
