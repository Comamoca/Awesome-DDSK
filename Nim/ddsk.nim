import random
import strutils

randomize()

let ddsk = ["ドド", "スコ"]
var f = 0

var inner: seq[string]

proc isDdsk(txt: string) =
  if txt == "ドドスコスコスコ" and f >= 0:
    f.inc
  else:
    f = 0
  inner.setLen(0)
  echo txt
  if f >= 3:
    echo "ラブ注入♡"
    quit 0

# while true:
#   for i in 0..4:
#     for j in 0..3:
#       let s = sample(ddsk)
#       inner.add s
#     var o = inner.join("")
#     isDdsk(o)

# ======== Test Program ======== 

while true:
  isDdsk("ドドスコスコスコ")
