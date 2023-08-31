import checksums/sha1
let accessName = secureHash("John Doe")
if $accessName == "AE6E4D1209F17B460503904FAD297B31E9CF6362":
  echo "一样"
else:
  echo "不一样"
