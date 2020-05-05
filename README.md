
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datateachr

<!-- badges: start -->

<img src="logo.png" width="200" align="right" /> <!-- badges: end -->

*Pronounced “Data Teacher”*

The goal of datateachr is to provide an easy way to access open source
data for the purpose of teaching. This is semi-tidied data obtained from
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

This Package contains (currently) 1 dataset :

  - `vancouver_trees`: This dataset is currently still being updated by
    the city as it’s still the current year. It currently has 146611
    rows.

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

or find out the summary statistics of the data:

``` r
summary(vancouver_trees)
#>     tree_id        civic_number    std_street         genus_name       
#>  Min.   :    12   Min.   :    0   Length:146611      Length:146611     
#>  1st Qu.: 65464   1st Qu.: 1306   Class :character   Class :character  
#>  Median :134903   Median : 2604   Mode  :character   Mode  :character  
#>  Mean   :131892   Mean   : 2937                                        
#>  3rd Qu.:194450   3rd Qu.: 4005                                        
#>  Max.   :266203   Max.   :17888                                        
#>                                                                        
#>  species_name       cultivar_name      common_name          assigned        
#>  Length:146611      Length:146611      Length:146611      Length:146611     
#>  Class :character   Class :character   Class :character   Class :character  
#>  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
#>                                                                             
#>                                                                             
#>                                                                             
#>                                                                             
#>  root_barrier        plant_area        on_street_block  on_street        
#>  Length:146611      Length:146611      Min.   :   0    Length:146611     
#>  Class :character   Class :character   1st Qu.:1300    Class :character  
#>  Mode  :character   Mode  :character   Median :2600    Mode  :character  
#>                                        Mean   :2909                      
#>                                        3rd Qu.:4000                      
#>                                        Max.   :9900                      
#>                                                                          
#>  neighbourhood_name street_side_name   height_range_id    diameter        
#>  Length:146611      Length:146611      Min.   : 0.000   Length:146611     
#>  Class :character   Class :character   1st Qu.: 1.000   Class :character  
#>  Mode  :character   Mode  :character   Median : 2.000   Mode  :character  
#>                                        Mean   : 2.627                     
#>                                        3rd Qu.: 4.000                     
#>                                        Max.   :10.000                     
#>                                                                           
#>      curb            date_planted          longitude         latitude    
#>  Length:146611      Min.   :1989-10-27   Min.   :-123.2   Min.   :49.20  
#>  Class :character   1st Qu.:1998-02-23   1st Qu.:-123.1   1st Qu.:49.23  
#>  Mode  :character   Median :2004-01-28   Median :-123.1   Median :49.25  
#>                     Mean   :2004-04-07   Mean   :-123.1   Mean   :49.25  
#>                     3rd Qu.:2010-03-02   3rd Qu.:-123.1   3rd Qu.:49.26  
#>                     Max.   :2019-07-03   Max.   :-123.0   Max.   :49.29  
#>                     NA's   :76548        NA's   :22771    NA's   :22771
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
