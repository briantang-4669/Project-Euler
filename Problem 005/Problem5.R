Problem_4 <- function(n) {
  candidate <- 1
  for (i in 2:n) {
    mult <- i
    for (j in 2:(i-1) ) {
      if ( log(i, base=j) == floor(log(i, base=j)) ) {
        mult <- j
        break
      }
    } 
    if (candidate%%i != 0) {
      candidate <- candidate * mult
    }
  }
  return(candidate)
}