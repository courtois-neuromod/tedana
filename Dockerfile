FROM alpine:3.21

RUN apk add --no-cache py3-scikit-learn py3-pip
RUN apk add --no-cache --virtual .build-deps git && \
	pip install --break-system-packages --no-cache-dir git+https://github.com/ME-ICA/tedana.git && \
	apk del .build-deps

ENTRYPOINT ["/usr/bin/tedana"]
