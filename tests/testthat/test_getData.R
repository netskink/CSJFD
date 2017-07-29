# it works without this line. Add it to be consistent?
library(CSJFD)

context("getData() tests")


test_that("getData test cache function", {
  # The first time it should get the data and say its fetching the url
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_equal(response$status_code,200)

  # The second time it should return the cached result
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_equal(response$status_code,200)
})


test_that("getData cache refresh capability function", {
  # The first time it should get the data and say its fetching the url
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test", TRUE)
  expect_equal(response$status_code,200)

  # The second time it should return the cached result
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_equal(response$status_code,200)

  # The third time it should return the cached result
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test", FALSE)
  expect_equal(response$status_code,200)
})


test_that("getData customheader capability", {
  # The first url will return the custom header
  r1 = getData("http://httpbin.org/get")
  expect_match(content(r1)$headers$Customheader,"CS")

  # The second url will not return the custom header
  r2 = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_null(content(r2)$headers)

})
