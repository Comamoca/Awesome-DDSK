fun main() {
    // ドドスコ要素のセットアップ
    val ddskItems = listOf("ドド", "スコ")
    val ddskHistory = mutableListOf<String>()

    // ドドスコスコスコ * 3 で終了しない限り無限に処理し続ける
    while (!endsWith3Ddsk(ddskHistory)) {
        // ドド か スコ のどちらかを選択するのを4回繰り返す
        val ddskStringBuilder = StringBuilder()
        repeat(4) {
            val ddskItem = ddskItems.shuffled().first()
            ddskStringBuilder.append(ddskItem)
        }

        val ddsk = ddskStringBuilder.toString()
        println(ddsk)

        ddskHistory.add(ddsk)
    }

    println("ラブ注入❤")
}

/**
 * リストの末尾3つを取り出して、それらがすべて "ドドスコスコスコ" であった場合に true を返す。
 *
 * @param items リスト要素
 * @return リストの末尾要素3つがすべて "ドドスコスコスコ" であるか否か
 */
private fun endsWith3Ddsk(items: List<String>): Boolean {
    val itemSize = items.size
    if (itemSize < 3) {
        return false
    }

    val tailItems = items.subList(itemSize - 3, itemSize)
    val filteredItems = tailItems.filter { it == "ドドスコスコスコ" }
    return filteredItems.size == 3
}
