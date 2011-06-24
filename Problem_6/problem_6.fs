open System

let numbers = [1 .. 100]
let diff =
    (numbers |> Seq.fold (+) 0 |> (fun x -> x * x)) -
    (numbers |> Seq.sumBy (fun x -> x * x))

[<EntryPoint>]
let main(args : string[]) =
    printfn "result = %d" diff
    0


