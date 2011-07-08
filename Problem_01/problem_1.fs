open System

#light
let _ =
    [1..999]
    |> List.filter (fun x -> x % 3 = 0 || x % 5 = 0)
    |> List.fold (+) 0
    |> printfn("The answer is %d")