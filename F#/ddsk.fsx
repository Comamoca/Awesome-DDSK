open System
open System.Collections.Generic

[<Literal>]
let DDSK = "ドドスコスコスコドドスコスコスコドドスコスコスコ"


let withLastNElements n (sq: seq<'T>) =
    let mutable queue = Queue()

    seq {
        for elem in sq do
            yield elem, queue.ToArray()

            queue.Enqueue elem

            if queue.Count > n then
                queue.Dequeue() |> ignore
    }

let ddskSeq =
    let rand = Random()
    let ddOrSk = [ "ドド"; "スコ" ]

    Seq.initInfinite (fun _ -> rand.Next(0, ddOrSk.Length))
    |> Seq.map (fun i -> ddOrSk[i])

ddskSeq
|> withLastNElements (DDSK.Length / 2)
|> Seq.map (fun (elem, lastElems) -> elem, String.concat "" lastElems)
|> Seq.takeWhile (snd >> (<>) DDSK)
|> Seq.iter (fst >> printf "%s")

printfn "ラブ注入💕"
