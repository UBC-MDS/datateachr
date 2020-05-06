library(tidyverse)

src <-
  "https://opendata.vancouver.ca/explore/dataset/parking-meters/download/?format=csv&timezone=America/Los_Angeles&lang=en&use_labels_for_header=true&csv_separator=%3B"

raw <- read_delim(src, delim = ";")

parking_meters <- raw %>%
  rename(
    meter_head = METERHEAD,
    time_in_effect = TIMEINEFFE,
    credit_card = CREDITCARD,
    meter_id = METERID,
    geo_local_area = `Geo Local Area`
  ) %>%
  rename_all(tolower) %>%
  mutate(geom = str_replace_all(geom, ".*\\[| |\\].*", "")) %>%
  separate(geom, c("longitude", "latitude"), sep = ",") %>%
  mutate(longitude = as.numeric(longitude)) %>%
  mutate(latitude = as.numeric(latitude))

save(parking_meters, file = "data/parking_meters.rda", compress='bzip2')
saveRDS(parking_meters, "tests/testthat/parking_meters.rds")
