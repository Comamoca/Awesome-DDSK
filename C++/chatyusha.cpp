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
    std::vector<std::string> DDSK(2);
    DDSK[0] = "ドド";
    DDSK[1] = "スコ";

    std::random_device rd;
    std::mt19937 engine(rd());
    
    std::vector<std::string> stack;

    bool flag = false;

    for (int i = 0; i < 4*3; i++)
    {
        int t = engine()%2;
        stack.push_back(DDSK[t]);
        std::cout<<DDSK[t]<<std::endl;
    }

    if(stack[0] == "ドド" && stack[1] == "スコ" && stack[2] == "スコ" && stack[3] == "スコ"
    && stack[4] == "ドド" && stack[5] == "スコ" && stack[6] == "スコ" && stack[7] == "スコ"
    && stack[8] == "ドド" && stack[9] == "スコ" && stack[10] == "スコ" && stack[11] == "スコ")
    {
        std::cout<<"ラブ注入♡"<<std::endl;
        flag = true;
    }
    
    while (flag==false)
    {
        for (int  i = 0; i < 11; i++)
        {
            stack[i] = stack[i+1];
        }
        int t = engine()%2;
        stack[11] = DDSK[t];
        std::cout<<DDSK[t]<<std::endl;

        if(stack[0] == "ドド" && stack[1] == "スコ" && stack[2] == "スコ" && stack[3] == "スコ"
        && stack[4] == "ドド" && stack[5] == "スコ" && stack[6] == "スコ" && stack[7] == "スコ"
        && stack[8] == "ドド" && stack[9] == "スコ" && stack[10] == "スコ" && stack[11] == "スコ")
        {
            std::cout<<"ラブ注入♡"<<std::endl;
            flag = true;
        }
    }
    
    return 0;
}

