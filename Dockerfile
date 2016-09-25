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

RUN adduser -h /home/awsuser -s /bin/bash -D awsuser
WORKDIR /home/awsuser
VOLUME ["/home/awsuser/.aws"]

CMD ["/bin/bash", "--login"]