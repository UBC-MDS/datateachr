test_that("Apt buildings has not changed", {
  expect_equal_to_reference(apt_buildings, "apt_buildings.rds")
})
