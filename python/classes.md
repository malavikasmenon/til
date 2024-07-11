- python classes don't have explicit constructors or destructors, but can have one using ```__init__``` ofc

- ```__init__``` is not technically a constructor, because by the time it is executed, a new object of the class is already constructed. But, it is the method executed first for a newly created object. 

- Instance variables: initialised with init, its specific to a particular instance of the class, but globally accessible by all other methods of this instance. Commonly accessed as self.var_name

- Iterator classes commonly have an ```__iter__``` method and a ```__next__``` method. 
  - __iter___ method called when iter(obj) is called. A for loop calls iter(obj) automatically. Similar for __next___ and next(obj) which is also called when a for loop loops through. 
  - __next___ methods usually raise a StopIteration exception, this doesn't cause an error but is an expected condition to break away from a loop at some point

- some methods that are enclosed within __ (like init, next etc) are special methods, special in that they're not called directly like other methods, but as part of some other syntax on the class/object. For example, iter(f) calls ```f.__iter__()``` and next(f) calls ```f.__next__()```






