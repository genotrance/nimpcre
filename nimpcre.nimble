# Package

version       = "0.1.1"
author        = "genotrance"
description   = "PCRE wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.2.1"

import distros

var cmd = ""
if detectOs(Windows):
    cmd = "cmd /c "

task setup, "Download and generate":
    exec cmd & "nimgen nimpcre.cfg"

before install:
    setupTask()

task test, "Test":
    exec "nim c -r tests/testpcre.nim"
