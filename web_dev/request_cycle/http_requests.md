# What are some common HTTP status codes?

200 - a-ok
300 - moved permanently
401 - unauthorised
403 - forbidden
404 - not found
503 - service unavailble

# What is the difference between a GET request and a POST request? When might each be used?

The main difference is that GET requests data, and POST submits data. There are also other differences:
- GET sends the query string in the URL, whereas POST sends the query string in the HTTP message body.
- GET requests can be cached & bookmarked, POST requests can't.
- GET requests have length restrictions, there are none for POST.

GET should not not be used for operations that cause a side-effect. POST can be used to create a new resource.

# Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small piece of data sent from a website and stored in the user's web browser while browsing the site. For instance, a cookie can be used to authenticate the user, i.e., to know whether the user is logged in or not.

When a user browses a site, the server receiving the HTTP request can send a "Set-Cookie" header with the response. This sets up a cookie at the user's browser.

Afterward, the cookie value is sent along with every request made to the same server in the form of a Cookie HTTP header.

