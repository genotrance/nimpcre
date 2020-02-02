# Package

version       = "0.2.1"
author        = "genotrance"
description   = "PCRE wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimterop >= 0.4.4"

var
  name = "nimpcre"

task test, "Run tests":
  exec "nim c -f -r tests/t" & name & ".nim"
