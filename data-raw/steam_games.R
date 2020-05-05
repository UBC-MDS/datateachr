library(dplyr)
library(readr)
library(tidyverse)


raw <-
  read_csv("data-raw/steam_games.csv.gz")

raw %>% distinct(original_price)

games <- raw %>% mutate(original_price= tolower(original_price))
games <- games %>% mutate(original_price =
                            ifelse(grepl("free", original_price) |
                                   grepl("demo", original_price) |
                                   grepl("trial", original_price),
                            0.00, original_price)) %>%
  rename(id = X1)

games$original_price = as.numeric(gsub("\\$", "", games$original_price))
games$discount_price = as.numeric(gsub("\\$", "", games$discount_price))

steam_games <- games

#write_csv(steam_games, "data-raw/steam_games.csv")
save(steam_games, file = "data/steam_games.rda", compress='bzip2')
saveRDS(steam_games, "tests/testthat/steam_games.rds")

