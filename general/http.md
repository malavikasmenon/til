# HTTP

Protocol for transferring data between servers and clients on the internet. Some common HTTP verbs include
- GET (to retrieve)
- POST (to submit information)
- PUT (to modify information)
- DELETE

Few important features of HTTP that all clients should support
## 1. Caching
- Making requests over the internet is quite laborious anf if this can be made more efficient by reducing the number of requests sent, then it should be done. Caching helps with this.
- With  caching, information once downloaded is stored for a specific period. In browsers, this is built in. So if you've visited a website in the past and an image was downloaded from there, then when you try to access the same website through the browser, the image is not downloaded again. The cache is accessed for the same.
- Servers set headers like **Cache-Control** and **Expires** to set cache validity
- Cache proxies: Your company or ISP may maintaian a caching proxy. These are designed to have tons of storage space, more than what your local browser may have. So even if a cached item may have been removed from your browser due to low disk space or manual clearing, but if your caching proxy has the requested item, it will intercept the request and send the item back. Thus request never reaches the server.  

## 2. Last Modified Checking
- Servers can set up a **Last-Modified** header.
- When sending a request from the second time on, you can use the information from the last-modified header to check if the resource has been updated since.
- This can be done using an **If-Modified-Since** header with the request.
- If the resource has been modified, the server sends back the requested resource along with a **200 Status Code**
- If the requested resource hasn't been updated since then, the server returns just a 304 status code implying the data hasn't changed since then. 304 = Not Modified or "same shit different day"
- Sometimes, even after expiry caching proxies maintain certain resources in the hope that the server returns a 304 (that is data hasnt actually changed even if the cache has expired), thus eliminating the need for sending another request. 

## 3. ETag Checking
- Similar to Last Modified Checking, but a hash is calculated for a given resource. Calculation of hash is done by server, but this hash has to change if the data has changed.
- **ETag** is the header returned by the server for the same
- To check, **If-None-Match** header is sent from the client side
- Same principle as above -> 200 + updated data if Etag doesn't match, 304 otherwise

## 4. Compression
- JSON/XML/plain text, any text can be compressed well. And so when they're transferred over HTTP they can be compressed.
- gzip & deflate are 2 popular compression algorithms supported by HTTP
- Requests can ask servers to send data in a compressed format and include an **Accept-Encoding** header to specify the algorithms the client can support.
- And servers can compress the data and send, while including a **Content-Encoding** header that specifies how the data was compressed.
- Compressed version of data must have a different E-Tag than the uncompressed version.

## 5. Redirects
- Somtimes resources may have moved from their previous location/URL
- 2 status codes may indicate this shift in location
  - 302: temporary redirect + **Location** Header. It's here now, but next time you send the request, query the original location for it
  - 301: permanent redirect + **Location** Header. It's here now and will be here. So query this URL from next time on.
- Most client libraries/frameworks have an option to redirect. Some don't explicitly tell you they have redirected, but will get the resource from the new location, whereas some libraries may inform you and then fetch.

