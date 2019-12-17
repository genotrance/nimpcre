Nimpcre is a [Nim](https://nim-lang.org/) wrapper for the [PCRE](https://github.com/svn2github/pcre) library.

While PCRE is already available within Nim, this module makes it easy to statically compile PCRE into the resulting binary instead of relying on an external DLL or binary.

Nimpcre is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimterop](https://github.com/nimterop/nimterop).

__Installation__

Nimpcre can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install nimpcre
```

This will download and install nimpcre in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

```nim
import nimpcre

import re

echo "abc".match(re"a.+")
```

NOTE: The `-d:usePcreHeader` flag needs to be specified to the Nim compiler in order to remove the dependency on the external DLL. This can also be accomplished by using a `nim.cfg` or `test.cfg` in the same directory as the code being compiled.

```
nim c -d:usePcreHeader -r test.nim
```

__Credits__

Nimpcre wraps the PCRE source code and all licensing terms of [PCRE](https://github.com/svn2github/pcre/blob/master/LICENCE) apply to the usage of this package.

__Feedback__

Nimpcre is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/nimpcre) with an MIT license so issues, forks and PRs are most appreciated.
