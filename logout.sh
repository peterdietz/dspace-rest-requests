TOKEN=${1}

DSPACEURL="https://localhost:8443/rest"
TYPE="json"
VERB="POST"
ACTION="logout"

if [ $# != 1 ]; then
  echo -e "ERROR! Wrong number parameter!"
  echo -e "USE:"
  echo -e "${0} <TOKEN>"
  exit 1
fi

RQST="{
  \"email\":\"${EMAIL}\",
  \"password\":\"${PASSWORD}\"
}"

curl -k -4 \
  -H "rest-dspace-token: ${TOKEN}" \
  -H "accept: application/${TYPE}" \
  -H "Content-Type: application/${TYPE}" \
  -X ${VERB} "${DSPACEURL}/${ACTION}"
