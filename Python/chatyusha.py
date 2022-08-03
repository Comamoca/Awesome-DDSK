# --------------------
# * LICENSE : MIT
# * Author : Chatyusha
# --------------------

import random

DDSK = ["ドド","スコ"]
ddsk_tmp = "ドドスコスコスコ" * 3

judge = ""

flag = False

n=0
while(flag == False):
    t = random.randint(0,1) % 2
    print(DDSK[t])
    judge += DDSK[t]

    if len(judge) >= 24:
        if judge[2*n:] == ddsk_tmp:
            print("ラブ注入♡")
            flag = True
        n += 1
