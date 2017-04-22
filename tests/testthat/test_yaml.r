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
    cwlDataObj <- readCwlData(helloWorldDataFileName)

    got <- class(cwlDataObj)
    want <- c("cwlDataYaml", "list")
    expect_equal( got, want )

    got <- length(cwlDataObj)
    want <- 1
    expect_equal( got, want )

    got <- cwlDataObj$message
    want <- "Hello world!"
    expect_equal( got, want )
  })

})
