# Commonly seen programming questions and the implicit logic you need to know to solve

#### Checking for leap year
Year should be divisible by 4, but if it's divisible by 100, it should be divisible by 400 also. 
``` (year % 4 == 0 and year % 100 != 0) or year % 400 == 0 ```

#### Valid triangle
Each side > 0 and sum of 2 sides should be greater than the 3rd side.

```
a + b >= c
b + c >= a
a + c >= b
a > 0, b > 0, c > 0
```

#### Sum of series

2^0 + 2^1 + .... + 2^n = 2^(n+1) - 1

[Refer](https://math.stackexchange.com/a/4367411)

So, in certain cases instead of looping and summing, you can use 2^x - 1 to get the result in a more efficient way


#### Point in circle

x^2 + y^2 = r^2 : Implies point (x,y) is on the boundary of the circle of radius r
x^2 + y^2 < r^2 : (x,y) lies inside the circle of radius r
x^2 + y^2 > r^2 : (x,y) lies outside the circle of radius r

These equations assume centre of the circle is (0,0). For a different centre (cx, cy), change equation to (x-cx)^2 + (y-cy)^2

