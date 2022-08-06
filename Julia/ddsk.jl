# 型＋イテレーション定義版
struct DDSK end

function Base.iterate(::DDSK, s=15)
    s < 0 && return nothing
    s == 0x777 && return ("ラブ注入♡", -1)
    s <<= 1
    s &= 0xffe
    rand([("ドド", s), ("スコ", s | 1)])
end
Base.IteratorSize(::Type{DDSK}) = Base.SizeUnknown()
Base.eltype(::Type{DDSK}) = String

function ddsk()
    for w in DDSK()
        print(w)
    end
    println()
end

# 1関数完結版
function ddsk_single()
    s = 15
    while s != 0x777
        i = rand(0:1)
        s = (s << 1 | i) & 0xfff
        print(["ドド", "スコ"][i + 1])
    end
    println("ラブ注入♡")
end

# ショートコード版
function ddsk_golf1()
    # 105bytes/87chars
    0|>s->while s!=2184;s,w=rand([(2s&511|1,"ドド"),(2s,"スコ")]);print(w);end;println("ラブ注入♡")
end

function ddsk_golf2()
    # 99bytes/87chars
    15|>s->while s!=1911;s=2s%4096+(i=rand()<.5);print.('ド'.-[16,22]i);end;println("ラブ注入♡")
end

# === main ===
if abspath(PROGRAM_FILE) == @__FILE__
    if length(ARGS) == 0
        ddsk()
    else
        arg = ARGS[1]
        ddskdic = Dict("single"=>ddsk_single, "golf1"=>ddsk_golf1, "golf2"=>ddsk_golf2)
        if haskey(ddskdic, arg)
            ddskdic[arg]()
        else
            throw(ArgumentError("$arg is not supported."))
        end
    end
end