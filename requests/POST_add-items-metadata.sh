# {}

VERB="POST"
ACTION="items/1/metadata"

RQST_JSON='
[
    {
      "key": "dc.title",
      "value": "ADDED BY JSON (POST)",
      "language": "en_US"
    },
    {
      "key": "dc.description",
      "value": "ADDED BY JSON",
      "language": "en_US"
    }
]
'

RQST_XML='<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<list>
    <metadataentry>
        <key>dc.contributor.author</key>
        <value>Dietz, Peter</value>
        <language>en</language>
    </metadataentry>
    <metadataentry>
        <key>dc.subject</key>
        <value>Computer</value>
        <language>en_US</language>
    </metadataentry>
</list>'
