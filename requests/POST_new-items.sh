# {"id":12,"name":"TESTE 1","handle":"123456789/14","type":"item","link":"/RESTapi/items/12","expand":["metadata","parentCollection","parentCollectionList","parentCommunityList","bitstreams","all"],"lastModified":"2015-01-29 15:51:04.049","parentCollection":null,"parentCollectionList":null,"parentCommunityList":null,"bitstreams":null,"archived":"true","withdrawn":"false"}

VERB="POST"
ACTION="collections/1/items"

RQST_JSON='
{"metadata":[
    {
      "key": "dc.contributor.author",
      "value": "LAST, FIRST"
    },
    {
      "key": "dc.description",
      "language": "pt_BR",
      "value": "DESCRICAO"
    },
    {
      "key": "dc.description.abstract",
      "language": "pt_BR",
      "value": "ABSTRACT"
    },
    {
      "key": "dc.title",
      "language": "pt_BR",
      "value": "TESTE 1"
    }
]}
'

RQST_XML='<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<item>
  <metadata>
    <key>dc.contributor.author</key>
    <value>LAST, FIRST</value>
    <language>en_US</language>
  </metadata>
  <metadata>
    <key>dc.description</key>
    <value>DESCRIPTION</value>
    <language>en_US</language>
  </metadata>
  <metadata>
    <key>dc.description.abstract</key>
    <value>ABSTRACT</value>
    <language>en_US</language>
  </metadata>
  <metadata>
    <key>dc.title</key>
    <value>TITLE</value>
    <language>en_US</language>
  </metadata>
</item>'
