
<!-- README.md is generated from README.Rmd. Please edit that file -->
cwl - Common workflow language support
======================================

This package (cwl) is designed to parse and work with the Common Workflow Language, CWL. ( <http://www.commonwl.org>). It currently does very little, it is only a stub in which various representations and algorithms are being played with. The first 0.0.1 release will be able to run simple command line programs locally using a very limited subset of CWL.

Simple command line tool examples.
----------------------------------

These assume you already have a *tool.cwl* and a *data.yaml* file. See the introductory vignette for details and sample files.

``` r
# Run a tool directly from files
cwlRun( "tool.cwl", "data.yaml")

# Run a tool indirectly via object intermediaries.
# Allows interaction with the tool and data info before running.
toolObj <- readCwlTool( "tool.cwl" )
dataObj <- readCwlData( "data.yaml" )
cwlRun( toolObj, dataObj)
```
