context("Tests for the functions in yaml.R")

helloWorldDataFileName <- tempfile()
helloWorldData <- c(
  "message: Hello world!",
  ""
)
writeLines(helloWorldData, helloWorldDataFileName)

describe( "Testing test setup", {
  expect_true(file.exists(helloWorldDataFileName))
  data <- readLines(helloWorldDataFileName)
  expect_equal(data, helloWorldData)
})

describe( "readCwlData() - a user API function ", {
  describe( "readCwlData() - Examples work as described", {
    got <- readCwlData(helloWorldDataFileName)
    want <- helloWorldDataFileName
    expect_equal( got, want )
  })

})
