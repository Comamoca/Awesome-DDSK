// --------------------
// * LICENSE : MIT
// * Author : Chatyusha
// --------------------

#include <iostream>
#include <vector>
#include <random>
#include <string>

int main(int argc, char const *argv[])
{
    uint ddsk_tmp = 0b100010001000; // ドドスコ*3
    unsigned int ddsk_binary = 0;
    std::random_device rd;
    std::mt19937 engine(rd());

    while (ddsk_binary!=ddsk_tmp)
    {
        int t = engine()&1;
        ddsk_binary <<=1;
        if(t==0){
            //ドド
            ddsk_binary |= 1;
            std::cout<<"ドド";
        }else{
            // スコ
            std::cout<<"スコ";
        }
        ddsk_binary &= 0b111111111111;
    }
    std::cout<<"ラブ注入♡"<<std::endl;
    return 0;
}

