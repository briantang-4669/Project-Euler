## Problem 1: Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, 9. The sum of these multiples is 23. 

Find the sum of all the multiples of 3 or 5 below 1000.

---

```R
Problem_1 <- function(max, vector) {
  is_multiple <- function(n, vector) {
    out <- FALSE
    for (i in 1:length(vector)) {
      out <- out|((n%%vector[i]) == 0)
    }
    return(out)
  }
  out <- 0
  for (i in 1:max-1) {
    if (is_multiple(i,vector)) {
      out <- out + i
    }
  }
  return(out)
}
```

