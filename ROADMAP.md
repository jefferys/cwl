# <Package> - Development roadmap

## Expect
* 0.0.1 - \<feature\> (Expected in this #.#.# release.)
* 0.0.\* - \<feature\> (Expected somewhere in this #.# minor version.)
* 0.\*.\* - \<feature\> (Expected somewhere in this # major version.)

## Maybe
* 0.0.1 - \<feature\> (best guess, will be somewhere in this #.#.# release.)
* 0.0.\* - \<feature\> (best guess, will be somewhere in this #.# minor version.)
* 0.\*.\* - \<feature\> (best guess, will be somewhere in this # major version.)

## Considering

Do or do not? Just ideas. Added for consideration prior tp the specified release.

* 0.0.1 - `cwlParse(tool)` - A function to parse a `tool.cwl` file into an object that represents it, for use with data by a runner.
* 0.0.1 - `cwlToolObj` - An S3 object representing a complete `tool.cwl`. Composed of other objects.
* 0.0.1 - `cwlParse(data)` - A function to parse a `data.yml` file and return an object that represents it.
* 0.0.1 - `cwlDataObj` - An S3 object representing a complete `data.yml`.
* 0.0.1 - `cwlCommand(tool, data)` - A function to return a command line that can
be executed to run the tool as specified by the data.
* 0.0.1 - `cwlRun(tool, data)` - A function to run a tool as specified by data.


## Rejected
* 0.0.1 - \<feature\> (Plan to never do. Rejected with #.#.# release.)
