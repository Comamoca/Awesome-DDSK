function main(){
    const text=["ドド","スコ"];
    const results_stream_end=0x777;
    let results_stream=0;
    while(results_stream_end!=(results_stream&0xfff)){
        results_stream<<=1;
        flag=Math.floor( Math.random() * 2 );
        results_stream=flag|(results_stream&~1);
        console.log(text[flag]);
    }
    console.log("ラブ注入♡");
}
main();

