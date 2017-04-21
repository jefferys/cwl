# cwl - Development roadmap

## Under way

As of the specified release, this idea was actively being developed. It should be availalbe with the next release unless noted otherwise, but there is a good chance that one or more will get bumped down the road come release time. 

* \<feature\> - Status/completion level/expected to be in next/X version.

## Accepted

As of the specified release, this idea was accepted for implementation. It is not yet underway, and there is no promise that it will be available soon. But eventually... 

### 0.0.0
* \<feature\> - Description, potential difficulties, urgent? important?

## Considering

As of the specified release, these idea was added for consideration. It has not been decided if this should be done or not. These will eventually migrate to accepted, underway, or rejected

* `cwlParse("tool.cwl")` - A function to parse a _tool.cwl_ file into an S3 `cwlToolObj` object that represents it. This object is composed of other objects. Intended for use with data by some command runner.
* `cwlParse("data.yml")` - A function to parse a _data.yml_ file and return a `cwlDataObj` object that represents it.
* `cwlCommand(tool, data)` - A function to return a command line that can
be executed to run the tool as specified by the data.
* `cwlRun(tool, data)` - A function to run a tool as specified by data.

### 0.0.0
* \<feature\> - This may be something to do. Good/Bad/Cost/Value argument...

## Rejected

As of the specified release, it was decided that this will likely never be done.

### 0.0.0
* \<feature\> - This is a bad idea because...
