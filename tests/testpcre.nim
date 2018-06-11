import nimpcre

import re

assert "abc".match(re"a.+") == true
assert "abc".match(re"d.+") == false

if "keyA = valueA" =~ re"\s*(\w+)\s*\=\s*(\w+)":
  assert matches[0] == "keyA"
  assert matches[1] == "valueA"
else:
  assert false

if "# comment!" =~ re.re"\s*(\#.*)":
  assert matches[0] == "# comment!"
else:
  assert false

assert "Username".match(re"[A-Za-z]+") == true
