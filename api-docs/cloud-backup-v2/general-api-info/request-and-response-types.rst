.. _request-and-response-types:

==================================================
Request and response types
==================================================

The Rackspace Cloud Backup API supports only JSON data serialization format.

Most requests with a message body require a ``Content-Type`` header defined as ``application/json``
(for example, ``Content-Type: application/json``). PATCH requests require a ``Content-Type`` of
``application/json-patch+json`` (for example, ``Content-Type: application/json-patch+json``).


You can specify the response format in requests by using the ``Accept``
header (for example, ``Accept: application/json``) or by adding a ``.json`` extension to the
request URI. If conflicting formats are specified
using both an ``Accept`` header and a query extension,
the query extension takes precedence. If no
response format is specified, JSON is the default.
