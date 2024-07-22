# Serialization

Serialization is the process of storing a data structure into memory that you want to reuse. For example, you're playing a game, you want to save your progress and reload it when you come back to the game.
So, this data is written into disk before exiting from the program and loaded from disk before resuming it later. 

## Pickle
- When data just needs to be used by a newer version of the same program and interoperability between different systems, languages etc need not be guaranteed, pickling is your friend
- This is accomplished using the pickle module in python 
- Pickle: Standard library, written in C so it's fast, and helps store complex data structures in python
- It stores all kinds of data structures - integer, boolean, string, bytes, lists, tuples, dicts, sets, functions, classes etc or a combination of these

Saving data to pickle file
```
import pickle
with open('paused.pkl'. 'wb') as f:
  pickle.dump(data_item, f)
```
- the data structure to be stored is serialized using the pickle protocol, which is python specific and version specific. 
- Newer versions will support older pkl formats, but older versions wont support new formats
- pickle version in binary format, hence files should be opened using binary mode

Once you have saved the data item to a pickle file, to retrieve
```
with open('paused.pkl', 'rb') as f:
  data_item = pickle.load('paused.pkl')
```
The pickle.load() function takes a stream object, reads the serialized data from the stream, creates a new Python object, recreates the serialized data in the new Python object, and returns the new Python object. 

- pickling can be done without reading/writing to a file, by directly writing into the memory using ```dumps/loads``` (notice the s)

## JSON
- As we saw before, pkl only works if we are working in python environments, there's no cross language support, this is where JSON comes in
- JSON is a serialization, data format designed to support use across multiple languages.
- It is text based, unlike pickle. json files are more humanly readable than pickle because of this reason
- In "plain-text" -> encoding is UTF-8, UTF-16, UTF-32 etc
- python has a json module
- json does not support all data types (for example tuples and bytes), some custom encoders/decoders can be added to account for this

```
import json
with open('some-item.json', 'w', encoding='utf-8') as f:
  json.dump(data_item, f)

with open('some-item.json', 'r') as f:
  new_item = json.load(f)
```

Mapping of datatypes from python to json

| json | python |
|-------|-------|
| object | dict |
| array | list |
| string | string |
| integer | integer |
| real number | float |
| true | True |
| false | False |
| null | None |

json values are case sentivie



