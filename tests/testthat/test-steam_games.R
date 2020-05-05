test_that("Steam games has not changed", {

  expect_equal_to_reference(steam_games, "steam_games.rds")

})
