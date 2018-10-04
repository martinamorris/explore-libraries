#' ---
#' output: github_document
#' ---

## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

library(readr)
library(here)
apt_freqtable <- readr::read_csv(here("Data", "mmapt-table.csv"))

## if you use ggplot2, code like this will work:
library(ggplot2)
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now
## that came from me (Jenny)
