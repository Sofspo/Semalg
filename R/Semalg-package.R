#' Semalg: A Simple Word-Based Sentiment Analysis Package
#'
#' @description
#' Semalg is an R package for identifying positive and negative words
#' in text documents and calculating a positive-to-negative word ratio.
#'
#' @details
#' The package contains three main functions:
#'
#' \describe{
#'   \item{read_text()}{Reads a text file and prepares it for sentiment
#'   analysis by converting the text to lowercase, removing punctuation,
#'   and separating the text into individual words.}
#'
#'   \item{compare_words()}{Counts the occurrences of words from a
#'   specified word list in a document. It supports exact word matching
#'   and prefix matching using the wildcard character '*', allowing
#'   words with the same beginning to be matched.}
#'
#'   \item{sentiment_score()}{Counts positive and negative word matches
#'   and calculates the positive-to-negative word ratio.}
#' }
#'
#' The positive-to-negative word ratio is calculated by dividing the
#' number of positive word matches by the number of negative word matches.
#' A ratio below 1 indicates more negative than positive word matches.
#' A ratio equal to 1 indicates equal numbers of positive and negative
#' matches, while a ratio above 1 indicates more positive than negative
#' matches. If there are no negative matches, the ratio is returned as NA.
#'
#' The package includes two predefined word lists:
#'
#' \describe{
#'   \item{positive_words}{A character vector containing words and word
#'   prefixes associated with positive feelings, experiences, and emotions.}
#'
#'   \item{negative_words}{A character vector containing words and word
#'   prefixes associated with negative feelings, experiences, and emotions.}
#' }
#'
#' Users can also provide their own word lists or modify the predefined
#' lists to suit their specific analysis.
#'
#' @keywords internal
"_PACKAGE"

