test_that("compare_words counts exact matches", {

  words <- c("happy", "sad", "happy")

  expect_equal(compare_words(words, c("happy")), 2)
})


test_that("compare_words supports wildcard matching", {

  words <- c("nauseous", "nauseated", "happy")

  expect_equal(compare_words(words, c("nause*")), 2)
})


test_that("compare_words returns zero when there are no matches", {

  words <- c("happy", "great")

  expect_equal(compare_words(words, c("sad")), 0)
})
