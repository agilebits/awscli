Miminal AWS CLI Container

This repository is used to build a small Alpine Linux-based container with Amazon Web Services command line tool.

## How to use

```bash
	mkdir ~/.aws
	docker run -it --rm -v ~/.aws:/home/awsuser/.aws roustem/awscli
	aws configure
```

