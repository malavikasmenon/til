# Basic Concepts

- There's a map between each character we read vs how the machine stores it as a sequence of bytes. This character encoding can be thought of as kind of a decryption key. To rightly read a shared text, we need to know the decryption key aka the character encoding.

- Every language has its corresponding character encoding. For example, for english, in the ascii code numbers from (0-255) is used and all alphabets + upper case can fit into this range. So every character can be represented by a single byte (2^8 = 256). But, then there are languages that have many more alphabets, which can't be fit into the 0-255 range. In such cases, a 2 byte representation can be used with encoding in the range (0-2^16)

- Multiple encodings for different language was fine until the age of the internet. When a database contains information in multiple languages, this means storing each encoding for each language too and switching between these to correctly interpret them. 

- Enter UNICODE to bypass this difficulty. UNICODE can be thought of as a sort of unified encoding which has a representation for all characters in all languages under a single scheme. In unicode, every character is represented by 4 bytes. Common characters across multiple languages have the same number for encoding. 1:1 character to number ratio is maintained. 

- But 4 bytes for every single character is too much space requirement. This type of encoding is called UTF-32 (32 = 4 bytes = 4 * 8 bits)

- Enter UTF-16, as the name suggests uses 2 bytes (16 = 2 bytes = 2 * 18 bits). This is twice as space efficient as UTF-32. The idea behind this scheme was that only 0-2^8 characters are commonly used, hence we can restrict the encoding to that range. If we need something beyond that range, certain hacks are used to construct the same. Time to lookup is O(1). But even 2 bytes is not v efficient.  

- Enter UTF-8, which has variable length encoding. ASCII characters uses 1 byte (0-255), UTF-8 encoding same as ASCII for this range. Then some latin/other languages use 3 characters, Chinese uses 3 characters and some other rarely used characters take up 4 bytes. But lookup is an O(n) operation

# In Python

- In python, a string is a sequence of Unicode characters. A character is essentially an abstraction and strings are sequences of those abstractions.

- An immutable sequence of numbers-between-0-and-255 is called a bytes object.  They are declared using the byte literal syntax b''. Each byte in a byte literal can be ascii or hexadecimal representing numbers between 0-255 (x/00 - x/ff)

- To make a byte object mutable, use bytearray()

- Bytes and strings cant be concatenated together 

- Bytes can be converted to strings by using the decode() method which takes in a character encoding. For example,
``` 
by = b'd'
by.decode('ascii') -> returns 'd'
```

- Strings can be converted to bytes by using the encode() method which also takes in a character encoding. 
```
a = "one two three"
a.encode("utf-8")
```

- Python 3 assumes that default encoding for each .py file is UTF-8. Python 2 assumed it to be ASCII




