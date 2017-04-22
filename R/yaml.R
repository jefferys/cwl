# This file contains the code used to read/write yaml format files as needed
# for CWL. Makes use of the YAML package.


#' Read in a cwl tool data file
#'
#' @param file The name of the YAML data file to read in
#'
#' @return The data as an object that can be used by a runner.
#'
#' @examples
#' helloWorldDataFileName <- tempfile()
#' helloWorldData <- c( "message: Hello world!", "" )
#'
#' writeLines(helloWorld, helloWorldDataFileName)
#'
#' @export
readCwlData <- function( file ) {
  # TODO: STUB
  return(file)
}
