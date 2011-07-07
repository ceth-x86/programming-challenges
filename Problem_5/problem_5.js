function gcd(a, b) {
    if( b == 0)
	return a;
    else
	return gcd(b, a % b);
}

function lcm(a, b) {
    return (a * b) / gcd(a, b);
}

function problem_5() {
    var result = 1;

    for (var i = 2; i <= 20; i++) {
	result = lcm(result, i);
    }

    return result;
}


document.write('<b>result: </b>' + problem_5());