Problem_2 <- function() {
  fib <- NULL
  fib[1] <- 1
  fib[2] <- 2
  n <- 3
  while(fib[n-1]+fib[n-2] <= 4e6) {
    fib[n] <- fib[n-1]+fib[n-2]
    n <- n+1
  }
  for (i in 1:length(fib)) {
    if (i%%3 != 2) {
      fib[i] = 0
    }
  }
  return(sum(fib))
}

Problem_2()