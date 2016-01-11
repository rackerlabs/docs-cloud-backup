.. _request-and-response-types:

==================================================
Request and response types
==================================================

The Rackspace Cloud Backup API supports only JSON data serialization format.

Most requests with a message body require a ``Content-Type`` header defined as ``application/json``. PATCH requests require a ``Content-Type`` of ``application/json-patch+json``.

The request format is specified by using ``Content-Type: application/json`` for example. The header and is required for calls that have a request body. If no response format is specified, JSON is the default. 

All responses with a message body have a ``Content-Type`` header defined as ``application/json``.

You can specify the response format in requests by using the ``Accept``
header or by adding a ``.json`` extension to the request URI. If no
response format is specified, JSON is the default.

**Response formats**

+--------+------------------+-----------------+---------+
| Format |  Accept header   | Query extension | Default |
+========+==================+=================+=========+
| JSON   | application/json | .json           | Yes     |
+--------+------------------+-----------------+---------+

