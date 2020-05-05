test_that("Building pernits has not changed", {
  expect_equal_to_reference(building_permits, "building_permits.rds")
})
