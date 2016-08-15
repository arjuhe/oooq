#!/bin/bash


source oooqrc

if [[ ! -v VIRTHOST ]];then
        echo "ERROR: VIRTHOST is not set. Try sourcing the ./oooqrc file."
        exit 1
elif [[ -z "$VIRTHOST" ]];then
        echo "ERROR: VIRTHOST is an empty string. Please define a host to deploy onto."
        exit 2
else
        echo "VIRTHOST is $VIRTHOST"
fi

time "" yes | /bin/bash ./quickstart.sh \
  --teardown all \
  --config config-virt.yaml \
  $VIRTHOST

