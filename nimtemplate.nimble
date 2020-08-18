version     = "0.0.0"
author      = "stisa"
description = "Description of your library"
license     = "MIT"

srcDir = "src"

requires "nim >= 1.2.6"

task examples, "Build examples":
  withDir "examples":
    #exec("nim c -r example1.nim")
    discard

task docs, "Build docs":
  exec("nim doc --docRoot:@pkg --project --outdir:docs .\src\packagename.nim")
