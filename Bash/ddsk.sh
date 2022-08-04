#!/bin/bash

# --------------------
# * LICENSE : MIT
# * Author : Fus1onDev
# --------------------

DDSK[0]="ドド"
DDSK[1]="スコ"
ddsk_temp="ドドスコスコスコドドスコスコスコドドスコスコスコ"
text=""
while [[ $text != *$ddsk_temp* ]]
do
    random=$((RANDOM % 2))
    echo ${DDSK[$random]}
    text+=${DDSK[$random]}
done
echo "ラブ注入♡"
