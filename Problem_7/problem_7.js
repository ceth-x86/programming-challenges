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

function problem_7() {
    var current_prime = 0;
    var primes = 0;
    var counter = 0;

    while(primes < 10000)
    {
	if(is_prime(counter)) {
	    current_prime = counter;
	    primes += 1;
	}
	counter += 1; 
    }

    return current_prime;
}

document.write('<b>result: </b>' + problem_7());