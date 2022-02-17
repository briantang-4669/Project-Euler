## Problem 2: Even Fibonacci numbers

Each new term in the Fibonacci sequence is generated y adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: 
<p align="center">1, 2, 3, 5, 8, 13, 21, 34, 55, 89, . . .</p>
By considering the terms in the Fibonacci sequence whos values do not exceed four million, find the sum of the even-valued terms.

---
### Solution

First, I defined an array with the first two entries being 1 and 2.
```R
fib <- NULL
fib[1] <- 1
fib[2] <- 2
```
Then I filled the array defining the next term as *f*<sub>*n*</sub> = *f*<sub>*n-1*</sub> + *f*<sub>*n-2*</sub>, and checking if the sum would exceed 4 million.
```R
 n <- 3
 while(fib[n-1]+fib[n-2] <= 4e6) {
  fib[n] <- fib[n-1]+fib[n-2]
  n <- n+1
 }
 ```
 Notice that the third term is odd. That is because the first term was odd and the second term was even. Then the 4th term is also odd. Because the 3rd and 4th term are both odd, the 5th term must be even. And the cycle continues. The even terms appear every third term starting at the second term. I can then convert every non term into a 0.

```R
for (i in 1:length(fib)) {
  if (i%%3 != 2) {
    fib[i] = 0
  }
}
```
Then summing the array will give the sum of all the even terms.

```R
sum(fib)
```

```R
> Problem_2()
[1] 4613732
```
