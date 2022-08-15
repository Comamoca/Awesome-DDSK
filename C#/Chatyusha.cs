// --------------------
// * LICENSE : MIT
// * Author : Chatyusha
// --------------------
using System;
using System.Collections;
using System.Collections.Generic;

namespace DDSK
{
    class Program
    {
        
        static void Main()
        {
            bool Flag = false;

            int counter = 0;

            string DDSKTmp = "ドドスコスコスコドドスコスコスコドドスコスコスコ";

            List<string> DDSKList = new List<string>();

            string DDSKString = "";
            DDSKList.Add("ドド");
            DDSKList.Add("スコ");

            while(Flag == false)
            {
                var gen = new Random();
                var unit =DDSKList[gen.Next(0,2)%2];
                DDSKString += unit;
                Console.WriteLine(unit);
                if(DDSKString.Length >= 24)
                {
                    if(DDSKString.Substring(counter*2,24) == DDSKTmp)
                    {
                        Flag = true;
                        Console.WriteLine("ラブ注入♡");
                    }
                    counter++;
                }
            }
        }
    }
}