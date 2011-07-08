function problem_3(num) {
    var f = 2;

    while (num > 1 ) {
	if (num % f == 0)
	    num = num / f;
	else
	    f = f + 1;
    }

    return f;
}

document.write('<b>result: </b>' + problem_3(600851475143));
