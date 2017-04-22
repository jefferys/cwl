
<!-- README.md is generated from README.Rmd. Please edit that file -->
cwl - Common workflow language support
======================================

Parse and work with the common workflow language, cwl. (See <http://www.commonwl.org>).

Some simple examples
--------------------

### Hello world.

This example runs a simple hello world example.

``` r
library(cwl)

# Set up a simple data.yml file
fileName <- tempfile()
data <- c( "message: Hello world!", "" )
writeLines(data, fileName)

# Load the data file as an object
cwlDataObj <- readCwlData(fileName)

# Examine the data file object
class(cwlDataObj)
#> [1] "cwlDataYaml" "list"
length(cwlDataObj)
#> [1] 1
cwlDataObj[1]
#> $message
#> [1] "Hello world!"
```
