test_that("Conversion works for data.frame", {
  test_data <- readLines(file.path(system.file(package = "rjsonl", "test_data"), "convertjson.jsonl"))
  test_df <- data.frame(prompt = rep.int("What is the secret password?", 50), completion = rep.int("flounder", 50))

  test_path <- to_jsonl(test_df, "test_file.jsonl")

  jsonl_fl <- readLines("test_file.jsonl")

  expect_identical(jsonl_fl, test_data)
})
