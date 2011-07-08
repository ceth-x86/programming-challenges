function divided(a, b) {
    return a % b == 0;
}

function problem_1() {
    var sum = 0;

    for (var i = 1; i < 1000; i++) {
	if(divided(i, 3) || divided(i, 5))
	    sum += i;
    }

    return sum;
}

document.write('<b>result: </b>' + problem_1());