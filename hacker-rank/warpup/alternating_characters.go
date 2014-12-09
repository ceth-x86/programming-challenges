package main
import "fmt"

func calculate(s string) int {
    var i int
    var result int = 0
    var c string = s[0:1]

    for i = 0; i < len(s); i++ {
        var cn string = s[i:i+1]

        if c == cn {
            result += 1
        }

        c = cn;
    }

    return result - 1
}

func main() {
    var a int
    var b string
    fmt.Scanf("%d", &a)

    var i int
    for i = 0; i < a; i++ {
        fmt.Scanf("%s", &b)
        fmt.Println(calculate(b));
    }
}
