02\_wrangle-packages.R
================
morrism
Thu Oct 04 14:55:35 2018

``` r
## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

library(here)
```

    ## here() starts at F:/Work/RWTF/explore-libraries

``` r
ipt <- readr::read_csv(here("Data","mminstalled-packages.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Package = col_character(),
    ##   LibPath = col_character(),
    ##   Version = col_character(),
    ##   Priority = col_character(),
    ##   Built = col_character()
    ## )

``` r
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:

library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
apt <- ipt %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

readr::write_csv(apt, here("Data", "apt.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

readr::write_csv(apt_freqtable, here("Data", "mmapt-table.csv"))
## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
```
