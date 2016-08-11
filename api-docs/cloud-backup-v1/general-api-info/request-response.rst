.. _req-resp-types:

==========================
Request and response types
==========================

The |apiservice| supports only the JSON data serialization format.

The request format is specified using the ``Content-Type: application/json``
header and is required for operations that have a request body. 

You can specify the response format in requests by using the ``Accept``
header or by adding a ``.json`` extension to the request URI. If no
response format is specified, JSON is the default.

**Response formats**

+--------+------------------+-----------------+---------+
| Format |  Accept header   | Query extension | Default |
+========+==================+=================+=========+
| JSON   | application/json | .json           | Yes     |
+--------+------------------+-----------------+---------+
