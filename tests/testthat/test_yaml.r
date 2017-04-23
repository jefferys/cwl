context("Tests for the functions in yaml.R")

helloWorldDataFileName <- tempfile()
helloWorldData <- c(
  "message: Hello world!",
  ""
)
writeLines(helloWorldData, helloWorldDataFileName)

helloWorldCwlFileName <- tempfile()
helloWorldCwl <- c(
  "cwlVersion: v1.0",
  "class: CommandLineTool",
  "baseCommand: echo",
  "inputs:",
  "  message:",
  "    type: string",
  "    inputBinding:",
  "      position: 1",
  "outputs: []"
)
writeLines(helloWorldCwl, helloWorldCwlFileName)

hellowWorldCwlObject <- structure(
  list(
    cwlVersion= "v1.0",
    class= "CommandLineTool",
    baseCommand= "echo",
    inputs= list(
      message= list(
        type= "string",
        inputBinding= list(
          position= 1
        )
      )
    ), outputs=list()
  ),
  class= c("cwlTool", "list")
)

describe( "Testing test setup", {
  it( "Should set up a data.yml file", {
    expect_true(file.exists(helloWorldDataFileName))
    data <- readLines(helloWorldDataFileName)
    expect_equal(data, helloWorldData)
  })
  it( "Should set up a tool.cwl file", {
    expect_true(file.exists(helloWorldDataFileName))
    data <- readLines(helloWorldDataFileName)
    expect_equal(data, helloWorldData)
  })
})

describe( "readCwlData() - a user API function ", {
  describe( "readCwlData() - Examples work as described", {
    it ("Returns a cwlDataYaml object corresponding to the file read.", {
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
})

describe( "readCwlTool() - a user API function ", {
  describe( "readCwlTool() - Examples work as described", {
    it ("Returns a cwlTool object corresponding to the file read.", {
      cwlToolObj <- readCwlTool(helloWorldCwlFileName)

      got <- class(cwlToolObj)
      want <- c("cwlTool", "list")
      expect_equal( got, want )

      got <- length(cwlToolObj)
      want <- 5
      expect_equal( got, want )

      got <- cwlToolObj
      want <- hellowWorldCwlObject
      expect_equal( got, want )
    })
  })
})
