function is_prime(num) {  
    if (num < 2)
	return false;
  
    var result = true;  
    for (var i = 2; i <= Math.sqrt(num) + 1; i++) {
	if(num % i == 0)
	{
	    result = false;
	}
    }

    return result;
}

function problem_10() {
    var result = 2;
    var counter = 0;

    while(counter < 2000000)
    {
	if(is_prime(counter)) {
	    result += counter;
	}
	counter += 1; 
    }

    return result;
}

document.write('<b>result: </b>' + problem_10());