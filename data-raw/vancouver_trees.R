library(dplyr)
library(readr)
library(tidyverse)


raw <-
  read_csv2(
    "https://opendata.vancouver.ca/explore/dataset/street-trees/download/?format=csv&timezone=America/Los_Angeles&lang=en&use_labels_for_header=true&csv_separator=%3B"
  )

trees <- raw %>%
  rename_all(tolower)


# obtain the latitude and longitude of the column (tried replace and gsub without success)
trees <- trees %>% separate(geom, c("junk","needed"), sep = "\\[")
trees <- trees %>% separate(needed, c("needed2","morejunk"), sep = "\\]")
trees <- trees %>% separate(needed2, c("longitude","latitude"), sep = "\\,")
trees <- trees %>%  select(-junk, -morejunk) %>%
                mutate(longitude = as.numeric(longitude),
                       latitude = as.numeric(latitude))
vancouver_trees <- trees

#write_csv(vancouver_trees, "data-raw/vancouver_trees.csv")
save(vancouver_trees, file = "data/vancouver_trees.rda", compress='bzip2')
saveRDS(vancouver_trees, "tests/testthat/vancouver_trees.rds")

