FROM ubuntu:16.04

LABEL maintainer="Jaeyoung Chun (jaeyoung.chun@weizmann.ac.il)"

RUN apt-get update -y \
    && apt-get install -y wget build-essential git libz-dev ncurses-dev \
    && apt-get install -y python-pip \
    && pip install --upgrade pip

RUN pip install pysam numpy scipy --no-cache-dir

RUN cd /tmp \
    && git clone https://bitbucket.org/hamimzafar/monovar.git \
    && cd monovar \
    && python setup.py install

# copy binary and clean up
RUN mv /tmp/monovar /opt/ \
    && mv /opt/monovar/external/samtools/samtools /usr/local/bin/ \
    && ln -s /opt/monovar/src/monovar.py /usr/local/bin/monovar

ENTRYPOINT ["/bin/bash"]
