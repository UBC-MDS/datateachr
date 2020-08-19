library(dplyr)
library(tidyverse)

flow_raw <- read_csv("data-raw/AnnualExtremes__Aug-19-2020_08_38_37PM.csv", skip = 1) %>%
  filter(PARAM == 1) %>%
  select(-PARAM) %>%
  separate(`MM--DD`, c("max_month", "max_day"), "--") %>%
  mutate(
    max_month = as.numeric(max_month),
    max_day = as.numeric(max_day)
  ) %>%
  separate(`MM--DD_1`, c("min_month", "min_day"), "--") %>%
  mutate(
    min_month = as.numeric(min_month),
    min_day = as.numeric(min_day)
  ) %>%
  rename(station_id = ID, year = Year, max_sym = SYM, min_sym = SYM_1, max_flow = MAX, min_flow = MIN)

flow_sample_max <- flow_raw %>%
  select(!starts_with("min")) %>%
  rename_all(~ gsub("max_", "", .x)) %>%
  mutate(extreme_type = "maximum") %>%
  relocate(extreme_type, .after = year)

flow_sample_min <- flow_raw %>%
  select(!starts_with("max")) %>%
  rename_all(~ gsub("min_", "", .x)) %>%
  mutate(extreme_type = "minimum") %>%
  relocate(extreme_type, .after = year)

flow_sample <- rbind(flow_sample_max, flow_sample_min)

save(flow_sample, file = "data/flow_sample.rda", compress = "bzip2")
saveRDS(flow_sample, "tests/testthat/flow_sample.rds")
