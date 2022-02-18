Problem_10 <- function(n) {
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
  sum <- 0
  for (i in 2:n) {
    if (is_prime(i) ) {
      sum <- sum + i
    }
  }
  return(sum)
}

Problem_10(2000000)