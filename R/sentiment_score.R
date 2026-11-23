
#' Sentiment score
#'
#' Counts the number of positive and negative word matches in a document
#' and calculates the ratio between positive and negative words.
#'
#' @param document_words A character vector containing the words from a document.
#' @param positive_words A character vector containing positive words to search for.
#' @param negative_words A character vector containing negative words to search for.
#'
#' @returns The positive-to-negative ratio is below 1 when there are more negative
#' matches, equal to 1 when the counts are equal, and above 1 when there
#' are more positive matches. If there are no negative matches, the ratio
#' is returned as NA.
#'
#' @export
#'
#' @examples words <- c("happy", "great", "sad", "happy")
#' positive_words <- c("happy", "great")
#' negative_words <- c("sad")
#' sentiment_score(words, positive, negative)
#'
sentiment_score <- function(document_words, positive_words, negative_words) {

  positive_count <- compare_words(document_words, positive_words)

  negative_count <- compare_words(document_words, negative_words)

  ratio <- if (negative_count == 0) {
    NA_real_
  } else {
    positive_count / negative_count
  }

  return(list(
    positive_count = positive_count,
    negative_count = negative_count,
    positive_negative_ratio = ratio
  ))
}

