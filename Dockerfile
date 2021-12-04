FROM alpine:3.10
label maintainer="Malcolm Crum <crummynz@gmail.com>"

RUN apk --no-cache add bash py3-pip py-pip gcc musl-dev && \
	pip3 install --no-cache-dir awscli && \
	pip install wheel coscmd
ADD ./watch /watch

VOLUME /data

HEALTHCHECK --interval=2s --retries=300 \
	CMD stat /var/healthy.txt || exit 1

ENV S3_SYNC_FLAGS "--delete"
ENTRYPOINT [ "./watch" ]
CMD ["/data"]
