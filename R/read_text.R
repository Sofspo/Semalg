
#' Read and preprocess text
#'
#' Imports a text file, converts the text to lowercase, removes punctuation,
#' and splits the text into individual words for sentiment analysis.
#'
#' @param file_path Path to the text file.
#'
#' @returns A character vector containing the individual words.
#' @export
#'
#' @examples document_words <- read_text("path/to/your/textfile.txt")
#'

read_text <- function(file_path) {

  # Import text
  text_data <- read.delim(
    file_path,
    header = FALSE,
    sep = "\t",
    quote = "",
    fill = TRUE
  )

  # Extract all text and combine into one character vector
  text <- unlist(text_data, use.names = FALSE)

  # Convert to lowercase
  text <- tolower(text)

  # Remove punctuation
  text <- gsub("[.,;]", "", text)

  # Split into separate elements
  document_words <- unlist(strsplit(text, split = "\\s+"))
  return(document_words)
}







