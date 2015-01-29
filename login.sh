EMAIL=${1}
PASSWORD=${2}

DSPACEURL="https://localhost:8443/rest"
TYPE="json"
VERB="POST"
ACTION="login"

if [ $# != 2 ]; then
  echo -e "ERROR! Wrong number parameter!"
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
