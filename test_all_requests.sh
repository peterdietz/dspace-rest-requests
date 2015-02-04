#!/bin/sh
source rest.cfg

TOKEN=$(./login.sh ${EMAIL} ${PASSWORD})

for R in $(ls requests/POST_*); do
  for T in json xml; do
    echo "EXECUTING REQUEST: $R ($T):"
    echo "--------------------------------------------"
    ./send_request.sh $DSPACEURL $TOKEN $R $T
    echo ""
    echo "--------------------------------------------"
    echo ""
  done
done

for R in $(ls requests/PUT_*); do
  for T in json xml; do
    echo "EXECUTING REQUEST: $R ($T):"
    echo "--------------------------------------------"
    ./send_request.sh $DSPACEURL $TOKEN $R $T
    echo ""
    echo "--------------------------------------------"
    echo ""
  done
done

for R in $(ls requests/UPLOAD_*); do
  for T in json xml; do
    echo "EXECUTING REQUEST: $R ($T):"
    echo "--------------------------------------------"
    ./send_file.sh $DSPACEURL $TOKEN $R $T
    echo ""
    echo "--------------------------------------------"
    echo ""
  done
done

./logout.sh ${TOKEN}
