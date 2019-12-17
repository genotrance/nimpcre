import strutils

import nimterop/[build, cimport]

when not defined(usePcreHeader):
  static:
    doAssert false, "Error: -d:usePcreHeader is required"

static:
  cDebug()

const
  baseDir = getProjectCacheDir("nimpcre")

  defs = """
    pcreStatic
    pcreStd
    pcreDL
    pcreSetVer=8.43
  """

setDefines(defs.splitLines())

getHeader(
  "pcre.h",
  "https://github.com/svn2github/pcre",
  "https://ftp.pcre.org/pub/pcre/pcre-$1.tar.gz",
  outdir = baseDir
)

{.passL: pcreLPath.replace("16", "").}
