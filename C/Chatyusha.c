#include "stdio.h"
#include "stdlib.h"
#include "wchar.h"
#include "locale.h"

#define TRUE 1
#define FALSE 0

int main(int argc, char const *argv[])
{
    setlocale(LC_ALL, "");
    wchar_t DDSKString[24];
    wchar_t DDSK[2][2] = {L"ドド",L"スコ"};
    int flag = FALSE;

    wchar_t DDSKTemp[] = L"ドドスコスコスコドドスコスコスコドドスコスコスコ";

    int len = 0;

    while (flag==FALSE)
    {
        int t = rand()%2;
        int i;
        if(len>=24){
            int p = 1;
            for(i=0;i<24;i++){
                if(DDSKString[i] == DDSKTemp[i]){
                    p = p<<1;
                }
            }
            if(p==(1<<24)){
                flag=TRUE;
                wprintf(L"ラブ注入♡");
                printf("\n");
                break;
            }
            for(i=0;i<24;i+=2){
                DDSKString[i] = DDSKString[i+2];
                DDSKString[i+1] = DDSKString[i+3];
            }
            DDSKString[22]=DDSK[t][0];
            DDSKString[23]=DDSK[t][1];
        }
        else if(len<24){
            DDSKString[len]=DDSK[t][0];
            DDSKString[len+1]=DDSK[t][1];
            len+=2; 
        }
        wprintf(L"%ls\n",DDSKString);
        printf("\n");
    }
    return 0;
}
