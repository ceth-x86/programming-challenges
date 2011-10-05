function sum_of_squares(num) {
    var result = 0;

    for (var i = 1; i <= num; i++) {
	result += i * i;
    }

    return result;
}

function square_of_sum(num) {
    var result = 0;

    for (var i = 1; i <= num; i++) {
	result += i;
    }

    return result * result;
}

function problem_6() {
    return square_of_sum(100) - sum_of_squares(100);
}

document.write('<b>result: </b>' + problem_6());