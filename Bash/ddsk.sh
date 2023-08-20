#!/usr/bin/env bash

# --------------------
# * LICENSE : MIT
# * Author : Fus1onDev, Hayao0819
# --------------------

DDSK=("ドド" "スコ")
ddsk_temp="ドドスコスコスコドドスコスコスコドドスコスコスコ"
text=""
while [[ $text != *$ddsk_temp* ]]
do
    random=$((RANDOM % 2))
    echo "${DDSK[$random]}"
    text+=${DDSK[$random]}
done
echo "ラブ注入♡"
