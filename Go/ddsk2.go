// Created by Qs-F on 2022-08-14

package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())

	mapToDDSK := []string{"ドド", "スコ"}
	expected := 0x011101110111
	mask := 0xFFFFFFFFFFFF
	current := 0xFFFFFFFFFFFF
	for {
		choice := rand.Int() % 2
		fmt.Println(mapToDDSK[choice])
		current = (current<<4 | choice) & mask
		if current == expected {
			fmt.Println("ラブ注入♡")
			return
		}
	}
}
