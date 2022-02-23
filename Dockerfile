FROM ubuntu:18.04

RUN apt update && apt install -y python-dev python-pip && apt clean

RUN cd /usr/local/lib/python2.7/dist-packages && \
    mkdir -p queue && \
    echo "import Queue as queue" > __init__.py

RUN pip install openstackclient

ENTRYPOINT [ "/bin/bash" ]

CMD [ "openstack" ]