# rjsonl

## Description
This package was made as an answer to a need for creating *.jsonl files. They are needed as part of fine-tuning OpenAI models and wasn't presented as part of jsonlite package. This package is a wrapper for jsonlite package and so this dependency is needed to be installed. 

## Installing rjsonl
`devtools::install_github("https://github.com/2smartR/rjsonl.git")`

Usage:
`rjsonl::to_jsonl(data, "file.jsonl")`
