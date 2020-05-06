test_that("Parking meters has not changed", {
  expect_equal_to_reference(parking_meters, "parking_meters.rds")
})
