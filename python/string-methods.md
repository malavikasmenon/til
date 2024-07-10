### translate and maketrans method
If you want to have a key-value pair mapping for string, for example A -> 1, B -> 2, c -> 3 and have this used for translation, do the following

First create the lookup, then use the lookup to translate. The maketrans creates a dict with corresponding ascii values as key-value for each character
``` 
lookup = str.maketrans('ABC', '123')
translated_text = text.translate(lookup)
```