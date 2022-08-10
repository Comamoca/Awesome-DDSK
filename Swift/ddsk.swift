// --------------------
// * LICENSE : MIT
// * Author : Fus1onDev
// --------------------

import Foundation

let DDSK = ["ドド", "スコ"]
let ddsk_temp = "ドドスコスコスコドドスコスコスコドドスコスコスコ"
var text = ""
while !text.contains(ddsk_temp) {
    let random = Int.random(in: 0...1)
    print(DDSK[random])
    text += DDSK[random]
}
print("ラブ注入♡")
