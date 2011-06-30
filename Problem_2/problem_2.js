var f1 = 1;
var f2 = 2;
var sum = 2;

do {
    var f3 = f1 + f2;
    if (f3 % 2 == 0)
	sum += f3;
    f1 = f2;
    f2 = f3;
} while (f3 <= 4000000)

document.write('<b>result: </b>' + sum);