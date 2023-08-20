import gleam/io
import gleam/int
import gleam/list
import gleam/string
import gleam/result

pub fn main() {
ddsk()
}

pub fn ddsk() {
let resp = generate(#(False, "ドド"))
io.println(resp.1)
}

pub fn generate(tp: #(Bool, String)) -> #(Bool, String) {

let ddsk_list = ["ドド", "スコ"]

let d = ddsk_list
|> list.at(int.random(0, 2))
|> result.unwrap("")

let ddsk_str = string.append(tp.1, d)

let flag = tp.1 |>
  string.slice(-30, 30) == "ドドスコスコスコドドスコスコスコドドスコスコスコ"

io.println(ddsk_str)

case flag {
    True -> #(True, string.append(ddsk_str, "ラブ注入💓"))
    False -> generate(#(False, ddsk_str))
  }
}
