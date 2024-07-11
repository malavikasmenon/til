# Generators

- the yield keyword generates values for a function one at a time. Can be thought of as a function calculating a value, returning it, then resuming it again until it breaks out. This way the same function returns multiple values using the yield keyword and this is a generator object

- can use next(method_name) to find values one after the other. Performs lazy evaluation

```
def increment(x):
  while True:
    yield x
    x = x + 1

counter = increment(0) : returns 1 = 1st yield

next(counter) : returns 2

next (counter) : returns 3
```

- list(generator) can be forced to return all values

- generator object can be used like any other iterator (Eg for i in gen_object)

- generator expressions, kind of like anonymous functions that yields values, syntax similar to that of list comprehension, except that paranthesis are used. They return an iterator
``` 
gen = (x+5 for x in some_list)
```

- gen expressions are useful as it saves on CPU and RAM compared to lists. Specifically useful in cases where you are not using the list as such, only passing it on to another function such as set(), tuple() etc.

