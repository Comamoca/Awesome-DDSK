import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class Ddsk {
  public static void main(String... args) {
    // ドドスコ要素のセットアップ
    List<String> ddskItems = new ArrayList<>();
    ddskItems.add("ドド");
    ddskItems.add("スコ");

    List<String> ddskHistory = new ArrayList<>();

    // ドドスコスコスコ * 3 で終了しない限り無限に処理し続ける
    while (!endsWith3Ddsk(ddskHistory)) {
      // ドド か スコ のどちらかを選択するのを4回繰り返す
      StringBuilder ddskStringBuilder = new StringBuilder();
      for (int i=0; i<4; i++) {
        Collections.shuffle(ddskItems);
        String ddskItem = ddskItems.get(0);
        ddskStringBuilder.append(ddskItem);
      }

      String ddsk = ddskStringBuilder.toString();
      System.out.println(ddsk);

      ddskHistory.add(ddsk);
    }

    System.out.println("ラブ注入❤");
  }

  /**
   * リストの末尾3つを取り出して、それらがすべて "ドドスコスコスコ" であった場合に true を返す。
   *
   * @param items リスト要素
   * @return リストの末尾要素3つがすべて "ドドスコスコスコ" であるか否か
   */
  private static boolean endsWith3Ddsk(List<String> items) {
    int itemSize = items.size();
    if (itemSize < 3) {
      return false;
    }

    List<String> tailItems = items.subList(itemSize - 3, itemSize);
    List<String> filteredItems = tailItems.stream().filter(i -> "ドドスコスコスコ".equals(i)).collect(Collectors.toList());
    return filteredItems.size() == 3;
  }
}
