#' Compare words
#'
#' Compares words from a document against a supplied vector
#' of positive or negative sentiment words and returns the
#' matching words. Supports exact matching as well as prefix
#' and suffix matching using an asterisk (*) as a wildcard.
#'
#' @param document_words A character vector containing words from a document.
#' @param word_list A character vector containing positive or negative words.
#'
#' @returns The number of matching word occurences.
#' @export
#'
#' @examples document_words <- c("nauseous", "nauseated", "happy")
#' compare_words(document_words, c("nause*"))
#'
compare_words <- function(document_words, word_list) {

  matches <- 0

  for (word in word_list) {

    if (endsWith(word, "*")) {
      prefix <- sub("\\*$", "", word)
      matches <- matches + sum(startsWith(document_words, prefix))
    } else {
      matches <- matches + sum(document_words == word)
    }

  }

  return(matches)
}
