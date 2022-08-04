import 'dart:math';

void main()
{
    const DDSK = ["ドド", "スコ"];
    const ddsk_temp = "ドドスコスコスコドドスコスコスコドドスコスコスコ";
    var text = "";

    while (!text.contains(ddsk_temp)) {
        final random = Random().nextInt(2);
        print(DDSK[random]);
        text += DDSK[random];
    }

    print("ラブ注入♡");
}
