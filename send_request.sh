#!/bin/bash

if [ $# != 4 ]; then
  echo -e "ERRO! Wrong number parameter!"
  echo -e "USE:"
  echo -e "${0} <DSPACEURL> <TOKEN> <REQUEST_DECRIPTOR_FILE> <REQUEST_TYPE [\"json\"/\"xml\"]>"
  exit 1
fi

DSPACEURL=${1}
TOKEN=${2}
REQUEST=${3}
REQUEST_TYPE=${4}

if [ -e ${REQUEST} ]; then
  source $REQUEST
else
  echo "ERROR! Request descriptor file not found!"
  exit 1
fi

case ${REQUEST_TYPE} in
  "json") RQST=${RQST_JSON} ;;
  "xml") RQST=${RQST_XML} ;;
  *) echo -e "ERROR! TYPE MUST BE: \"json\" OR \"xml\"."; exit 1 ;;
esac

curl -k -4 --silent\
  -H "rest-dspace-token: ${TOKEN}" \
  -H "accept: application/${REQUEST_TYPE}" \
	-H "Content-Type: application/${REQUEST_TYPE}" \
	-X ${VERB} "${DSPACEURL}/${ACTION}" \
	-d "${RQST}"
