Problem_9 <- function() {
  for (a in 1:1000) {
    for (b in 1:1000) {
      c <- sqrt(a^2 + b^2)
      if (  (floor(c) == c) & (c == 1000 - a - b) ) {
        return(a*b*c)
        #break
      }
    }
  }
}

Problem_9()