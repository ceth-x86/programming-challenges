open System

let divided a b =
  match b with
  | 0 -> false
  | _ -> a % b = 0

let toString num = num.ToString()
let explode (s:string) = [for c in s -> c]

let checkNum (num:int) =
  let chars = num |> toString |> explode
  let result = List.fold (+) 0 [for c in chars -> if divided num ((int c) - 48) then 1 else 0]
  result

let rec doTest (cnt:int) =
    let n = Console.ReadLine() |> int
    n |> checkNum |> printfn "%i"
    if cnt > 1 then
      cnt - 1 |> doTest

[<EntryPoint>]
let main argv =
    let cnt = Console.ReadLine() |> int
    doTest cnt
    0 // return an integer exit code
