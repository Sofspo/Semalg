#' Compare words
#'
#' Counts how many words from a positive or negative word list
#' appear in the text of the document.
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
