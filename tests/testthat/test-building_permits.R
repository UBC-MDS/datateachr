test_that("Building permits has not changed", {
  expect_equal_to_reference(building_permits, "building_permits.rds")
})
