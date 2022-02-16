## Problem 1: Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, 9. The sum of these multiples is 23. 

Find the sum of all the multiples of 3 or 5 below 1000.

---

### Solution 

I wanted to generalize this exercise by making a function that takes an arbritrary max value, and a vector containing any number of multiples. 

First I made a function ``` is_multiple(n, vector) ``` that checks if the number *n* is a multiple of any element of the vector.
The default output is false, that is *n* is not a multiple of any element of the vector. Then there is a for-loop that goes through the vector checking if
*n* mod *vector[i]* was equal to 0.

Now all that is left is to loop through the integers from *1* to the *max number - 1*, testing if each integer was a multiple. If it was it would add it to the output. At the end it would output the sum.


In R
```R
> Problem_1(1000, c(3,5)) 
[1] 233168
```





