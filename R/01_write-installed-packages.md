01\_write-installed-packages.R
================
morrism
Thu Oct 04 14:36:13 2018

``` r
## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

library(tidyverse)
```

    ## -- Attaching packages --------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.0.0     v purrr   0.2.5
    ## v tibble  1.4.2     v dplyr   0.7.5
    ## v tidyr   0.8.1     v stringr 1.3.1
    ## v readr   1.1.1     v forcats 0.3.0

    ## -- Conflicts ------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
ipt_part <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built)

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

library(here)
```

    ## here() starts at F:/Work/RWTF/explore-libraries

``` r
library(readr)
readr::write_csv(ipt_part, here("data", "mminstalled-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that came from me (Jenny)
## it an example of what yours should look like and where it should go
```
