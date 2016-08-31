.. _request-and-response-types:

==========================
Request and response types
==========================

The |apiservice| supports the JSON data serialization format.

Most requests with a message body require a ``Content-Type`` header defined as
``application/json`` (for example, ``Content-Type: application/json``). However,
PATCH requests require a ``Content-Type`` of ``application/json-patch+json`` (for
example, ``Content-Type: application/json-patch+json``).

The response format can be specified in requests either by using the ``Accept``
header or adding an ``.xml`` or ``.json`` extension to the request URI. A
response  can be serialized using a format that is different from the request.
If no response format is specified, JSON is the default. If conflicting
formats are specified by using both an ``Accept`` header and a query
extension, the query extension takes precedence.

.. list-table:: **JSON and XML response formats**
   :widths: 10 20 10 10
   :header-rows: 1

   * - Format
     - Accept header
     - Query extension
     - Default
   * - JSON
     - application/json
     - .json
     - Yes
   * - XML
     - application/xml
     - .xml
     - No
