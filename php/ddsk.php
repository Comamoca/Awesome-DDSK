<?php

$ddsk = ["ドド", "スコ"];
$ddsk_target = [0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1];

$isloop = true;
$point = 0;
$num = 0;
while($isloop){
    $love = false;
    $line = false;
    $ddsk_rand = array_rand($ddsk);

    if($ddsk_target[$point] === $ddsk_rand){
        if($point >= 11) $love = true;
        $point++;
    }else{
        if(0 === $ddsk_rand){ $point = 1; $line = true; }
        else { $point = 0; };
    };

    if($line) echo "\n";
    echo $ddsk[$ddsk_rand];
    if($love){ echo " ラブ注入♡\n\x1b[32m試行回数: {$num}回\x1b[0m"; $isloop = false; };

    $num++;
}