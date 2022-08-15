use rand::Rng;
use std::collections::VecDeque;

fn main() {
    let mut rng = rand::thread_rng();

    let ddsk_slice: [&str; 2] = ["ドド", "スコ"];
    let match_ward = "ドドスコスコスコドドスコスコスコドドスコスコスコ";
    let mut choice_ddsks:VecDeque<&str> = VecDeque::from([""; 12]);

    loop {
        let random = rng.gen_range(0..2);
        let choice_ddsk = ddsk_slice[random];
        choice_ddsks.pop_back();
        choice_ddsks.push_front(choice_ddsk);
        let ddsk = choice_ddsks.as_slices().0.join("");
        if ddsk == match_ward {
            println!("{}", "ラブ注入♡");
            return
        }
        print!("{}", choice_ddsk);
    }
}