Problem_7 <- function(n) {
  is_prime <- function(p) {
    if (p == 2 | p == 3 | p == 5) {
      out <- TRUE
    }
    else if ( (p%%6 != 1) & (p%%6 != 5) ) {
      out <- FALSE
    }
    else {
      out <- TRUE
      for (i in 2:ceiling(sqrt(p))) {
        if (p%%i == 0) {
          out <- FALSE
          break
        }
      }
    }
    return(out)
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