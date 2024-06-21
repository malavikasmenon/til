# Commonly seen programming questions and the implicit logic you need to know to solve

#### Checking for leap year
Year should be divisible by 4, but if it's divisible by 100, it should be divisible by 400 also. 
``` (year % 4 == 0 and year % 100 != 0) or year % 400 == 0

#### Valid triangle
Each side > 0 and sum of 2 sides should be greater than the 3rd side.
> a + b >= c
> b + c >= a
> a + c >= b
> a > 0, b > 0, c > 0