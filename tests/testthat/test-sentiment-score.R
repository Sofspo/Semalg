test_that("sentiment_score calculates positive and negative counts", {

  words <- c("happy", "great", "sad", "happy")
  positive <- c("happy", "great")
  negative <- c("sad")

  result <- sentiment_score(words, positive, negative)

  expect_equal(result$positive_count, 3)
  expect_equal(result$negative_count, 1)
  expect_equal(result$positive_negative_ratio, 3)
})


test_that("sentiment_score returns NA when there are no negative matches", {

  words <- c("happy", "great")
  positive <- c("happy", "great")
  negative <- c("sad")

  result <- sentiment_score(words, positive, negative)

  expect_true(is.na(result$positive_negative_ratio))
})
