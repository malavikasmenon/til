# File Handling in Python
- open method in file returns a stream object.
- read() is called on this stream object
- you close() files when you're done reading them to save on system resources. close() doesn't destroy the stream object, but there's not much you can do with the stream object after closing
- with used to automatically close files
- with creates a runtime context and the stream object acts like a manager of it, when it's about to exit the context it calls the close method on itself
- encoding in open method important because 
  - when you write, bytes are written into the file by converting the string input you're providing to bytes using the encoding
  - similarly, read(), reads the bytes from the file and converts them to string based on the provided encoding
  - default encoding is dependent on platforms - windows may use something, mac/linux something else

## Binary Files
- To use a binary file, you add 'b' to the mode arg in open(). Eg 'rb'
- In this case the stream object's mode will be what you pass with open.
- However one key difference is, the stream obj won't have any encoding attribute. The file is in bytes and it is read as bytes, so no need for encoding

## Compresses files
- gzip is a popular compression scheme. python has a gzip module that can be used to handle gzip compressed file
- they should be read in binary mode

## stdout and stderr
- sys module contains stdout, stderr etc
- stdout/stderr are stream objects with write but no read method
- print actually does something that is the equivalent of sys.stdout.write
- values of stdout/stderr can be modified to redirect the output, maybe to a file
