FROM stevearc/pypicloud:1.0.13-py3-baseimage

ADD . /opt/pypicloud

WORKDIR /opt/pypicloud

RUN pip3 install -e ./distlib
    # &&
# RUN pip3 install distlib
RUN pip3 install -e .[allplugins] \
    && pip3 freeze
