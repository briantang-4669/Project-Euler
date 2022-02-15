Problem_3 <- function(n) {
  is_prime <- function(p) {
    if (p == 2 & p == 3 & p == 5) {
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
  
  if (is_prime(n)) {
    factor <- n
  }
  else {
    j <- 2
    factor <- n
    while (TRUE) {
      if (factor%%j == 0) {
        factor <- factor/j
        j <- 1
      }
      if (is_prime(factor)) {
        break
      }
      if (j > n) {
        factor <- NA
        break
      }
      j <- j+1
    }
  }
  return(factor)
}
