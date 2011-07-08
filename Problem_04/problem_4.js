String.prototype.reverse = function() {
    var s = "";
    var i = this.length;
    while( i > 0 ) {
	s += this.substring(i - 1, i);
	i --;
    }
    return s;
}

String.prototype.is_polindrome = function() {
    return this.reverse() == this;
}

function problem_4() {
    var max = 0;

    for(var a = 100; a <= 999; a++) {
	for(var b = 100; b <= 999; b++) {
	    var c = a * b;
	    if(c.toString().is_polindrome() && c > max) {
		max = c;		
	    }
	}
    }

    return max;
}

document.write('<b>result: </b>' + problem_4());