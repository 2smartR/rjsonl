# rjsonl

## Description
This package was created to address the need for generating *.jsonl files, which are required for fine-tuning OpenAI models. This functionality were not included in the jsonlite package. This package serves as a wrapper for the jsonlite package, therefore jsonlite must be installed as a dependency.

## Installing rjsonl
`devtools::install_github("https://github.com/2smartR/rjsonl.git")`

Usage:
`rjsonl::to_jsonl(data, "file.jsonl")`
