# This file contains the code used to read/write yaml format files as needed
# for CWL. Makes use of the yaml package.


#' Read in a cwl tool data file
#'
#' Reads in an cwl data file (in yaml format) and returns an S3 "cwlDataYml"
#' object. This object is essentially just the yaml file read in as a named
#' list, and will work as a list if used as such. Parsing the yaml file is
#' done via the CRAN "yaml" package yaml.load_file function.
#'
#' @param file The name of the YAML data file to read in
#'
#' @return The data as an object that can be used by a runner. This object is
#' essentially just a named list with each key being an element of the yaml
#' file.
#'
#' @examples
#' file <- tempfile()
#' data <- c( "message: Hello world!", "" )
#' writeLines(data, file)
#'
#' cwlDataObj <- readCwlData(file)
#' class(cwlDataObj)
#' #> [1] "cwlDataYml" "list"
#'
#' length(cwlDataObj)
#' #> [1] 1
#'
#' cwlDataObj[1]
#' #> $message
#' #> [1] "Hello world!"
#'
#' @export
readCwlData <- function( file ) {
  structure(
    yaml::yaml.load_file(file),
    class= c("cwlDataYaml", "list")
  )
}

#' Read in a tool cwl file
#'
#' Reads in a tool cwl file (in yaml format) and returns an S3 "cwlTool"
#' object. This object is essentially just the cwl yaml file read in as a named
#' list, and will work as a list if used as such. Parsing the cwl yaml file is
#' done via the CRAN "yaml" package yaml.load_file function.
#'
#' @param file The name of the cwl tool file to read in
#'
#' @return The tool.cwl as an object that can be used by a runner. This object is
#' essentially just a named list with each key being an element of the cwl yaml
#' file.
#'
#' @examples
#' file <- tempfile()
#' data <- c(
#'   "cwlVersion: v1.0",
#'   "class: CommandLineTool",
#'   "baseCommand: echo",
#'   "inputs:",
#'   "  message:",
#'  "    type: string",
#'   "    inputBinding:",
#'   "      position: 1",
#'   "outputs: []"
#' )
#' writeLines(data, file)
#'
#' cwlToolObj <- readCwlTool(file)
#' class(cwlToolObj)
#' #> [1] "cwlToolObj" "list"
#'
#' length(cwlToolObj)
#' #> [1] 5
#'
#' str(cwlToolObj)
#' #> List of 5
#' #> $ cwlVersion : chr "v1.0"
#' #> $ class      : chr "CommandLineTool"
#' #> $ baseCommand: chr "echo"
#' #> $ inputs     :List of 1
#' #> ..$ message:List of 2
#' #> .. ..$ type        : chr "string"
#' #> .. ..$ inputBinding:List of 1
#' #> .. .. ..$ position: int 1
#' #> $ outputs    : list()
#' #> - attr(*, "class")= chr [1:2] "cwlTool" "list"
#'
#' @export
readCwlTool <- function( file ) {
  structure(
    yaml::yaml.load_file(file),
    class= c("cwlTool", "list")
  )
}
