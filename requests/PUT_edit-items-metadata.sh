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

RQST_XML='<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
???
'
