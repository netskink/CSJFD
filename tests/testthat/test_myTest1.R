# it works without this line. Add it to be consistent?
library(CSJFD)

context("myTest1() tests")

test_that("myTest1 url test 1", {
  response = myTest1("http://httpbin.org/get")
  expect_equal(response$status_code,200)
})

test_that("myTest1 url test 2", {
  response = myTest1("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_equal(response$status_code,200)
})
