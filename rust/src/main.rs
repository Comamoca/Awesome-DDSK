extern crate rand;
use rand::Rng;

fn main() {
    let mut rng = rand::thread_rng();

    let ddsk: [&str; 2] = ["ドド", "スコ"];
    let ddsk_temp: &str = "ドドスコスコスコドドスコスコスコドドスコスコスコ";
    let mut text: String = "".to_string();
    loop {
        let add_text: &str = ddsk[rng.gen_range(0..2)];
        print!("{}", add_text);
        text = String::from(text) + add_text;
        if text.contains(ddsk_temp) {
            print!("ラブ注入♡");
            break;
        }
    }
}
