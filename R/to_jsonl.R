#' Save jsonl file from data.frame
#'
#' @param data Data that can be converted into json file. See ?jsonlite::toJSON()
#' @param file A file path to save file to
#'
#' @importFrom jsonlite toJSON
#'
#' @return File path string of new jsonl file

to_jsonl <- function(data, file) {
  json_ls <- lapply(data, toJSON)

  js_string <- paste(json_ls, collapse = "\n")

  js_string <- paste0("[", js_string, "]")

  return(js_string)
}
