// --------------------
// * LICENSE : MIT
// * Contributors : Fus1onDev, treastrain
// --------------------

import Foundation

enum DDSK: String {
    case dd = "ドド"
    case sk = "スコ"
}

extension DDSK: CustomStringConvertible {
    var description: String {
        Bundle.currentLocaleModule.localizedString(forKey: rawValue, value: nil, table: nil)
    }
}

extension DDSK {
    static let match: [DDSK] = [.dd, .sk, .sk, .sk, .dd, .sk, .sk, .sk, .dd, .sk, .sk, .sk]
    static let jackpot = Bundle.currentLocaleModule.localizedString(forKey: "ラブ注入♡", value: nil, table: nil)
}

extension Bundle {
    static var currentLocaleModule: Bundle {
        guard let path = Bundle.module.path(forResource: Locale.current.languageCode, ofType: "lproj"),
              let bundle = Bundle(path: path) else {
            return .module
        }
        return bundle
    }
}

/// [レギュレーション](https://twitter.com/Sheeeeepla/status/1554028833942441984) では文字列配列からの定義を求められているため。
/// このレギュレーションを無視するなら、`DDSK` を `CaseIterable` に適合させて `allCases` を使う。
let ddskStrings = ["ドド", "スコ"]
let ddsk = ddskStrings.map { DDSK(rawValue: $0)! }

var current: [DDSK] = []
while current != DDSK.match {
    let newElement = ddsk.randomElement()!
    current.append(newElement)
    print(newElement.description)
    
    if current.count > DDSK.match.count {
        current.removeFirst()
    }
}
print(DDSK.jackpot)
