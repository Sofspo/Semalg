test_that("read_text prepares text correctly", {

  file <- tempfile(fileext = ".txt")
  writeLines("I feel HAPPY, today.", file)

  words <- read_text(file)

  expect_equal(words, c("i", "feel", "happy", "today"))
})
