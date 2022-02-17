Problem_6 <- function(n) {
  a <- 0
  b <- 0
  for (i in 1:n) {
    a <- a + i
    b <- b + i^2
  }
  a <- a^2
  
  return(a-b)
}

Problem_6(100)