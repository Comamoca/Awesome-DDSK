(require '[clojure.string :as str])

(defn count-ddsk [l]
  (->> l
       (take-last 3)
       (filter #(= "ドドスコスコスコ" %))
       count))

(loop [ddsk []]
  (if (= 3 (count-ddsk ddsk))
      (println "ラブ注入❤")
      (recur (let [x (str/join (repeatedly 4 #(rand-nth ["ドド", "スコ"])))]
                  (do
                    (println x)
                    (conj ddsk x))))))
