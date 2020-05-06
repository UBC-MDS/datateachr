library(tidyverse)

src <-
  "https://ckan0.cf.opendata.inter.prod-toronto.ca/download_resource/3ad76a8c-0518-4df2-b94e-8c747d62f8c1?format=csv"

raw <- read_csv(src)

# removes all-NA columns
raw_no_na_cols <- raw[, !map_lgl(raw, ~ all(is.na(.))), drop = FALSE]

apt_buildings <- raw_no_na_cols %>%
  rename(id = `_id`,
         air_conditioning = AIR_CONDITIONING_TYPE,
         amenities = AMENITIES_AVAILABLE,
         emergency_power = `IS_THERE_EMERGENCY_POWER?`,
         cooling_room = `IS_THERE_A_COOLING_ROOM?`,
         separate_gas_meters = SEPARATE_GAS_METERS_EACH_UNIT,
         separate_hydro_meters = SEPARATE_HYDRO_METER_EACH_UNIT,
         separate_water_meters = SEPARATE_WATER_METERS_EA_UNIT,
         no_of_accessible_parking_spaces = NO_OF_ACCESSIBLEPARKING_SPACES,
         no_barrier_free_accessible_units = NO_BARRIERFREE_ACCESSBLE_UNITS) %>%
  rename_all(~str_replace_all(., "\\?", "")) %>%
  rename_all(tolower)

save(apt_buildings, file = "data/apt_buildings.rda", compress='bzip2')
saveRDS(apt_buildings, "tests/testthat/apt_buildings.rds")
