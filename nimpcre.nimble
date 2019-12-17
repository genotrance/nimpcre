# Package

version       = "0.1.4"
author        = "genotrance"
description   = "PCRE wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimterop >= 0.3.4"

var
  name = "nimpcre"

task test, "Run tests":
  exec "nim c -r tests/t" & name & ".nim"
