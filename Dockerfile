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

RUN curl -s -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest && \
	chmod a+x /usr/local/bin/ecs-cli

RUN adduser -h /home/aws -s /bin/bash -D aws

USER aws
WORKDIR /home/aws

RUN echo "export PAGER='less -R'" >> .profile
VOLUME ["/home/aws/.aws"]

CMD ["/bin/bash", "--login"]