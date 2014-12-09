open System

let length (s:string) =
    String.length s

let first (s:string) =
    char s.[0..0]

let rest (s:string) =
    s.[1..(length s)-1]

let rec calculate s l acc =
    match (length s), l with
    | 0, _                   -> acc
    | _, _ when first s = l  -> calculate (rest s) l (acc+1)
    | _, _                   -> calculate (rest s) (first s) acc

let rec doTest (cnt:int) =
    let s = Console.ReadLine()
    calculate s 'x' 0 |> printfn "%i"
    if cnt > 1 then
        cnt - 1 |> doTest

[<EntryPoint>]
let main argv =
    let cnt = Console.ReadLine() |> int
    doTest cnt
    0 // return an integer exit code
