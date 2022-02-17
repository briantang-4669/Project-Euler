Problem_7 <- function(n) {
  is_prime <- function(num) {
    if (num <= 1) {
      return(FALSE)
    }
    else if (num == 2 | num == 3) {
      return(TRUE)
    }
    else if ( (num%%6 != 1) & (num%%6 != 5) ) {
      return(FALSE)
    }
    else if (any(num %% 2:ceiling(sqrt(num)) == 0)) {
      return(FALSE)
    } 
    else { 
      return(TRUE)
    }
  }
  primes <- 2
  for (i in 2:n) {
    j <- primes+1
    while (TRUE) {
      if (is_prime(j)) {
        primes <- j
        break
      } 
      j <- j + 1
    }
  }
  if (n == 1) {
    primes <- 2
  }
  return(primes)
}

Problem_7(10001)