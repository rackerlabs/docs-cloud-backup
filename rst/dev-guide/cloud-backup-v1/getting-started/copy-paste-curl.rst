.. _gsg-copy-paste-curl:

Copying and pasting cURL request examples into a terminal window
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To run the cURL request examples shown in this guide, perform the
following actions:

1. Copy each example from the HTML version of this guide and paste it
   into an ASCII text editor (for example, vi or TextEdit). You can
   click on the small document icon to the right of each request example
   to select it.

2. Modify each example with your required account information and other
   information, as detailed in this guide.

      style="margin-left: 0.5in; margin-right: 0.5in;">

   ..  note:: 
       The carriage returns in the cURL request examples are escaped with a
       backslash (\\) character. The escape character allows continuation of
       the command across multiple lines. However, do not include the escape
       character in the JSON or XML request body within the cURL command.

3. After you are finished modifying the text for the cURL request
   example with your information (for example, user name and API key),
   copy and paste the text into your terminal window.

4. Press **Enter** to run the cURL command.

Consider the following example cURL authentication request, which is
described in detail in :ref:`generate your authentication token <gen-auth-token>`.

 
**Example: Example cURL authentication request**

.. code::  

   curl -s -X POST https://identity.api.rackspacecloud.com/v2.0/tokens \
     -H "Content-Type: application/json" \
     -d '{
        "auth": {
          "RAX-KSKEY:apiKeyCredentials": {
            "username": "yourUserName",
            "apiKey": "yourApiKey"
          }
        }
      }' | python -m json.tool 

You can see that the lines that are part of the cURL command syntax have
all been escaped with a backslash (\\) to indicate that the command
continues on the next line:

.. code::  

   curl -s -X POST https://identity.api.rackspacecloud.com/v2.0/tokens \
     -H "Content-Type: application/json" \
     -d '{
       
    (... lines within the JSON portion of the message are not shown in this example)
    (... the example shows only lines that are part of cURL syntax)     
         

       
     }' | python -m json.tool 

However, the lines within the JSON portion of the message are not
escaped with a backslash, to avoid issues with the JSON processing.

.. code::  

   '{
        "auth": {
          "RAX-KSKEY:apiKeyCredentials": {
            "username": "yourUserName",
            "apiKey": "yourApiKey"
          }
        }
      }'

..  tip:: 
    If you have trouble copying and pasting the examples as described, try
    typing the entire example on one long line, removing all the backslash
    line-continuation characters.
