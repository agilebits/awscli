FROM alpine:latest
MAINTAINER Roustem <roustem@agilebits.com>

RUN apk update && apk --no-cache add \
	bash \
	bash-completion \
	curl \
	less \
	jq \
	groff \
	python \
	py-pip && \
pip install --upgrade \
	awscli

RUN adduser -h /home/aws -s /bin/bash -D aws

USER aws
WORKDIR /home/aws
VOLUME ["/home/aws/.aws"]

CMD ["/bin/bash", "--login"]