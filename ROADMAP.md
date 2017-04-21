# cwl - Development roadmap

## Expect
* 0.0.1 - \<feature\> (Expected in this #.#.# release.)
* 0.0.\* - \<feature\> (Expected somewhere in this #.# minor version.)
* 0.\*.\* - \<feature\> (Expected somewhere in this # major version.)

## Maybe

Aiming to implement something like this for the given release.

* 0.0.1 - `cwlParse("tool.cwl")` - A function to parse a _tool.cwl_ file into an S3 `cwlToolObj` object that represents it. This object is composed of other objects. Intended for use with data by some command runner.

* 0.0.\* - \<feature\> (best guess, will be somewhere in this #.# minor version.)
* 0.\*.\* - \<feature\> (best guess, will be somewhere in this # major version.)

## Considering

Do or do not? Just ideas. Added for consideration prior to the specified release.


* 0.0.1 - `cwlParse("data.yml")` - A function to parse a _data.yml_ file and return a `cwlDataObj` object that represents it.
* 0.0.1 - `cwlCommand(tool, data)` - A function to return a command line that can
be executed to run the tool as specified by the data.
* 0.0.1 - `cwlRun(tool, data)` - A function to run a tool as specified by data.


## Rejected
* 0.0.1 - \<feature\> (Plan to never do. Rejected with #.#.# release.)
