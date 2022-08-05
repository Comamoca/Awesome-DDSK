import std.stdio, std.random;

void main()
{
    string[] text=["ドド","スコ"];
    auto rand = Random(unpredictableSeed);
    uint results_stream_end=0x777;
    uint results_stream=0;
    while(results_stream_end!=(results_stream&0xfff)){
        results_stream<<=1;
        uint flag=uniform(0, 2, rand);
        results_stream=flag|(results_stream&~uint(1));
        writeln(text[flag]);
    }
    writeln("ラブ注入♡");
}