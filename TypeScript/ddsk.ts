const main = () => {
  const DDSK = ["ドド", "スコ"];
  const ddsk_temp = "ドドスコスコスコドドスコスコスコドドスコスコスコ";
  let text = "";
  while (true) {
    const Random = Math.floor(Math.random() * 2);
    text += DDSK[Random];
    console.log(text);
    if (text.includes(ddsk_temp) == true) {
      console.log("ラブ注入♡");
      break;
    }
  }
};
main();
