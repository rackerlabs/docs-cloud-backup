.. _links-parameter:

===============
Links parameter
===============

Operations in the :ref:`API Reference <api-reference>` that return a list of
resources usually have a ``links`` output parameter that specifies the URLs
for the next and previous results in the list. The ``links`` might not be
present when the list of resources is empty. In that case, the ``links``
obtained during a previous request might still be valid. If this is the first
request using the operation, you might retry the original request until the
``links`` results are available.
