library(dplyr)
library(tidyverse)

src <-
  "https://opendata.vancouver.ca/explore/dataset/issued-building-permits/download/?format=csv&timezone=America/Los_Angeles&lang=en&use_labels_for_header=true&csv_separator=%3B"

raw <-
  read_delim(src,
             delim = ";",
             col_types = cols(ProjectDescription = col_character()))

building_permits <- raw %>%
  rename(
    permit_number = PermitNumber,
    issue_date = IssueDate,
    project_value = ProjectValue,
    type_of_work = TypeOfWork,
    address = Address,
    project_description = ProjectDescription,
    building_contractor = BuildingContractor,
    building_contractor_address = BuildingContractorAddress,
    applicant = Applicant,
    applicant_address = ApplicantAddress,
    property_use = PropertyUse,
    specific_use_category = SpecificUseCategory,
    year = Year,
    bi_id = BI_ID
  )

save(building_permits, file = "data/building_permits.rda", compress='bzip2')
saveRDS(building_permits, "tests/testthat/building_permits.rds")
