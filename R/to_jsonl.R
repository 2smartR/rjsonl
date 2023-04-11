#' Save jsonl file from data.frame
#'
#' @param data Data that can be converted into json file. See ?jsonlite::toJSON()
#' @param file A file path to save file to. For example: "new_json.jsonl"
#'
#' @importFrom jsonlite toJSON
#'
#' @return File path string of new jsonl file

to_jsonl <- function(data, file) {
  json_string <- jsonlite::toJSON(data)


  json_string <- substring(json_string,2)
  json_string <- substring(json_string,1, nchar(json_string)-1)
  json_string <- stringr::str_replace_all(json_string, "\\},", "}\n")

  if(!file.exists(file)) {
    file.create(file)
  }

  write(json_string, file)
}
