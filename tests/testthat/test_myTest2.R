# it works without this line. Add it to be consistent?
library(CSJFD)

context("myTest2() and .onLoad() tests")

test_that("myTest2 something", {
  response = myTest2()

  # its floating point, so I wish I could do fabs(some_diff) < 0.0001
  # since I need to round the response for the print value of first value
  expect_equal(round(response[1],digits=2),-0.56)
  expect_equal(response[2],-0.2301775)
})

test_that("getData test cache function", {
  # The first time it should get the data and say its fetching the url
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_equal(response$status_code,200)

  # The second time it should return the cached result
  response = getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
  expect_equal(response$status_code,200)
})
