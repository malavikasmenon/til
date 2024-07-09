# Import Path 
When you try to import a module in python, there are a set of directories where it searches for the said module. These are the directories in sys.path 
If you have an additional directory that you want python to check in, you can append the same to sys.path too. Since sys.path is a list, the order of the list will be followed when searching for something. 

```
import sys
sys.path
sys.path.insert(0, your-directory)
```

As everything in python is an object, including a module, it has certain attributes and methods. For a module, an important attribute is ```__name__```. The value of ```__name__``` depends upon how the module is used. 
If the module is imported, the value will be the filename. If the module is run directly, then the value is a special default value - ```__main__```
This is why certain code blocks like the following is seen often. 
```
if __name__ == __main__:
 do something
```

