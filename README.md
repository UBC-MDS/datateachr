
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datateachr

<!-- badges: start -->

<img src="static/logo.png" width="200" align="right" />
<!-- badges: end -->

*Pronounced “Data Teacher”*

The goal of datateachr is to provide an easy way to access open source
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

This data was acquired courtesy of [The city of Vancouver’s Open Data
Portal](https://opendata.vancouver.ca/pages/home/).

This package contains (currently) 2 dataset :

  - `vancouver_trees`: This dataset is currently still being updated by
    the city. It currently has 146611 rows.
  - `steam_games`: This dataset contains all the games available for
    download on Steam from 2019-06-16. It currently has 40833 rows.

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
#> 1  221478         3673 MAIN ST    ACER       FREEMANI   X AUTUMN BLAZE 
#> 2  129179         2859 TRIUMPH ST ACER       FREEMANI   X MORGAN       
#> 3  121664         2850 YUKON ST   ACER       PSEUDOPLATA… <NA>         
#> 4  149686         5007 WINDSOR ST ACER       CAMPESTRE    <NA>         
#> 5  156993         1596 E 49TH AV  ACER       PLATANOIDES  COLUMNARE    
#> 6  161193         2797 GRANT ST   ACER       CAMPESTRE    <NA>         
#> # … with 14 more variables: common_name <chr>, assigned <chr>,
#> #   root_barrier <chr>, plant_area <chr>, on_street_block <dbl>,
#> #   on_street <chr>, neighbourhood_name <chr>, street_side_name <chr>,
#> #   height_range_id <dbl>, diameter <chr>, curb <chr>, date_planted <date>,
#> #   longitude <dbl>, latitude <dbl>
```
