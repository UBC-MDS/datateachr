test_that("Cancer sample data has not changed", {
  expect_equal_to_reference(cancer_sample, "cancer_sample.rds")
})
