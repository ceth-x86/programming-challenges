function problem_9() {
    for (var c = 1; c <= 1000; c++) {    
	for (var b = 1; b <= c; b ++) {
	    var a = 1000 - b - c;
	    if (a*a + b*b == c*c) {
		return a + "x" + b + "x" + c;
	    }
	}
    }
}

document.write('<b>result: </b>' + problem_9());