library(dplyr)
library(readr)
library(tidyverse)

src <-
  "https://opendata.vancouver.ca/explore/dataset/street-trees/download/?format=csv&timezone=America/Los_Angeles&lang=en&use_labels_for_header=true&csv_separator=%3B"

raw <- read_delim(src, delim = ";")

vancouver_trees <- raw %>%
  rename_all(tolower) %>%
  mutate(geom = str_replace_all(geom, ".*\\[| |\\].*", "")) %>%
  separate(geom, c("longitude", "latitude"), sep = ",") %>%
  mutate(longitude = as.numeric(longitude)) %>%
  mutate(latitude = as.numeric(latitude))

save(vancouver_trees, file = "data/vancouver_trees.rda", compress = 'bzip2')
saveRDS(vancouver_trees, "tests/testthat/vancouver_trees.rds")
