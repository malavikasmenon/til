XML is a data format, its commonly used in rss feeds

## What is RSS Feed?
RSS = Really Simple Syndication
Syndication = Act of selling newspaper articles, shows, blogs, podcasts etc to multiple companies so they can be published in multiple places. 

So what does rss really mean?

RSS gets information from multiple blogs/podcasts/websites (whatever you've subscribed to) and gets it one place, making it easy to be updated and saves time. Google Podcast may use RSS to keep track of different podcasts and be updated as soon as a new one is released. 
Rss is also a privacy focused alternative to email based newsletters. Some tools that can be used for RSS feed include = feedly, feedreader etc. 

## XML
- XML is the data format used for these syndication feeds. 
- Hierarchical format with start tags, end tags, attributes. Each element can have a child element too. 
- Kind of similar to HTML in terms of structure

Python has several libraries that help parse XML
- xml.el.ElementTree (std library)
- lxml (third party library) that has ElementTree API + few other xpath features too
- can getRoot(), each element is a list and the members of this list are the element's direct children.
- can use findall() to find similar elements
- attributes are represented through key-val pairs in dictionary
