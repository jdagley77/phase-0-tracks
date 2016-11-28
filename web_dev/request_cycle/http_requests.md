What are some common HTTP status codes?
404 - not found: maybe a typo, of the page isn't there anymore
403 - forbidden access: client not authorized access to request
500 - internal server error: catch-all
503 - service unavailable
504 - gateway timeout: secondary web server may be too busy

1s are informational, 2s are successful, 3s are redirection, 4s are client-side, 5s are server-side


What is the difference between a GET request and a POST request? When might each be used?

The differences are GET can be hacked more easily. GET can be cashed. POST cannot. GET parameters saved in history and can be bookmarked - POST aren't / cannot. GET has a max URL length. POST does not. 

GET is used to retrieve remote data, for database queries, getting a document, describing a page
POST is used to insert or update remote data, make updates, destructive


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A site can include a cookie in its HTTP request. The cookie is sent from the server and is stored in the site's subfolder. Only the server that sent the cookie can recognize and use it. A cookie is like a token that enables the server to recognize the user on the site. It includes the experience delivered by the site because it remembers who you are, what you're habits are, your password without revealing personal information. The cookie is essentially a text file that includes the name of the server it was sent from, the expiration date, and a value (a unique number) There are 2 kinds of cookies - persistent and session cookies. Persistent cooking have an expiration date and session cooking terminate after you leave the site. Most sites have cookies and are essential for sites that have large databases, customizable themes or passwords.