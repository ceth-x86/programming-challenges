open System

let reverseString(s : string) = new string (s |> Seq.toArray |> Array.rev)
let isPalindrome(x : int) = x.ToString() = reverseString(x.ToString())

seq {
    for x in 100..999 do
      for y in x..999 do
        yield x, y, x * y
    }
|> Seq.sortBy (fun (_, _, p) -> -p)
|> Seq.filter (fun (_, _, p) -> isPalindrome p)
|> Seq.head
|> fun(x, y, p) -> printfn "%d = %d x %d" p x y

Console.ReadLine()
