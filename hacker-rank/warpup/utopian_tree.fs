open System

let odd n = n % 2 = 1

let rec calculate n cnt acc =
    match n with
    | _ when n = cnt -> acc
    | _ when odd n -> calculate (n+1) cnt (acc+1)
    | _ ->  calculate (n+1) cnt (acc*2)

let rec doTest (cnt:int) =
    let n = Console.ReadLine() |> int
    calculate 0 n 1 |> printfn "%i"
    if cnt > 1 then
        cnt - 1 |> doTest

[<EntryPoint>]
let main argv =
    let cnt = Console.ReadLine() |> int
    doTest cnt
    0 // return an integer exit code
