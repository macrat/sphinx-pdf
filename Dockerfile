FROM alpine:latest

RUN apk --no-cache add \
    py3-sphinx \
    texlive-full \
 && pip3 install \
    sphinxcontrib-blockdiag

RUN mkdir /docs && chown 1000:1000 /docs

VOLUME /docs
WORKDIR /docs
USER 1000:1000

CMD ["make", "latexpdf", "html"]
