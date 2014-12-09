open System

let explode(s: string) =
    [for c in s -> c]

let decChar(c: char) =
    char (int c - 1)

let split (s : string) =
    if String.length s % 2 = 0 then
        (s.[0..String.length s / 2 - 1], s.[(String.length s / 2)..String.length s - 1])
    else
        (s.[0..String.length s / 2],  s.[(String.length s / 2)..String.length s - 1])

let prepareWord word =
    let a, b = split word
    List.zip (a |> explode) (b |> explode |> List.rev)

let rec balancePair(acc: int) (a: char,  b: char) =
    if a < b then balancePair (acc + 1) (a, decChar b)
    elif a > b then balancePair (acc + 1) (decChar a, b)
    else acc

let changes(word: string) =
    List.map (balancePair 0) (prepareWord word) |> List.sum
    
let rec doTest (cnt:int) =
    let s = Console.ReadLine()
    changes s |> printfn "%i"
    if cnt > 1 then
        cnt - 1 |> doTest

[<EntryPoint>]
let main argv =
    let cnt = Console.ReadLine() |> int
    doTest cnt
    0 // return an integer exit code
