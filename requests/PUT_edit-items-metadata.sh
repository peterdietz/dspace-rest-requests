# {}

VERB="PUT"
ACTION="items/11/metadata"
TYPE="json"

RQST_JSON='
[
    {
      "key": "dc.title",
      "value": "TESTE - CHANGED BY JSON (PUT)",
      "language": "pt_BR"
    },
    {
      "key": "dc.description",
      "value": "DESCRIPTION - CHANGED BY JSON",
      "language": "pt_BR"
    }
]
'

RQST_XML=RQST_XML='<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<list>
    <metadataentry>
        <key>dc.contributor.author</key>
        <value>Gates, Bill</value>
        <language>en</language>
    </metadataentry>
    <metadataentry>
        <key>dc.description.abstract</key>
        <value>Technology changed by XML</value>
        <language>en_US</language>
    </metadataentry>
</list>'
