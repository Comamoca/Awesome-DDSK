import 'dart:math';

void main()
{
    var DDSK = ["ドド", "スコ"];
    var ddsk_temp = "ドドスコスコスコドドスコスコスコドドスコスコスコ";
    var text = "";

    while (!text.contains(ddsk_temp)) {
        var random = Random().nextInt(2);
        print(DDSK[random]);
        text += DDSK[random];
    }

    print("ラブ注入♡");
}
