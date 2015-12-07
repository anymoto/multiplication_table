# Multiplication Table of the first N prime numbers

## How to run the program?
Go to the console and type:
```
ruby print_table.rb 8
```

The program accepts an argument that indicates the prime numbers to get (N).
In this case is 8 but you can specify any number greater than zero.
If N is not present, it's not an integer or it's less than 1, it will get the first
10 prime numbers.

As a result, a multiplication table will be printed out. Like this:
```
X 2 3 5 7 11 13 17 19  
2 4 6 10 14 22 26 34 38  
3 6 9 15 21 33 39 51 57  
5 10 15 25 35 55 65 85 95  
7 14 21 35 49 77 91 119 133  
11 22 33 55 77 121 143 187 209  
13 26 39 65 91 143 169 221 247  
17 34 51 85 119 187 221 289 323  
19 38 57 95 133 209 247 323 361  
```

The first row and column are the N prime numbers, with each cell containing
the product of the primes for the corresponding row and column.
