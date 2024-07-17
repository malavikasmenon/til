# itertools Module

- itertools module has a bunch of interesting stuff
  - permutations
  - product (for cartesian products)
  - groupby
  - combinations 

# eval
- eval global, local namespace can be kept empty by using eval("x+5", {}, {}). The empty dicts are used as global and local namespace
- for extra safety define {'__builtins__': None} so no built-in library can be accessed during execution to prevent potential security threats. 

# dunder methods
- few special methods ``` __add__, __subtract__ ```
- ```(1).__add__(2)```

# zip
use to iterate over two lists
for x,y in zip(s_x, y_x):
    pass
