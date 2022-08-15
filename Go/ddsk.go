package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	const ddskTemp = "ドドスコスコスコドドスコスコスコドドスコスコスコ"
	ddsk := [2]string{"ドド", "スコ"}
	text := ""
	n := 0

	for {
		t := rand.Intn(2)
		fmt.Println(ddsk[t])
		text += ddsk[t]
		if len(text) < 3*24 {
			continue
		}
		if text[2*n:] == ddskTemp {
			fmt.Println("ラブ注入♡")
			return
		}
		n += 3
	}
}
