#!/bin/sh
source rest.cfg

EMAIL=${1}
PASSWORD=${2}

TYPE="json"
VERB="POST"
ACTION="login"

if [ $# != 2 ]; then
  echo -e "ERROR! Wrong number of parameters!"
  echo -e "USE:"
  echo -e "${0} <USER> <PASSWORD>"
  exit 1
fi

RQST="{
  \"email\":\"${EMAIL}\",
  \"password\":\"${PASSWORD}\"
}"

curl -k -4 \
  -H "accept: application/${TYPE}" \
  -H "Content-Type: application/${TYPE}" \
  -X ${VERB} "${DSPACEURL}/${ACTION}" \
  -d "${RQST}"

echo ""
