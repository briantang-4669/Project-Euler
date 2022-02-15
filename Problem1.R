Problem_1 <- function(max, vector) {
  is_multiple <- function(n, vector) {
    out <- FALSE
    for (i in 1:length(vector)) {
      out <- out|((n%%vector[i]) == 0)
    }
    return(out)
  }
  out <- NULL
  for (i in 1:max-1) {
    if (is_multiple(i,vector)) {
      out[i] <- i
    }
    else {
      out[i] <- 0
    }
  }
  return(sum(out))
}