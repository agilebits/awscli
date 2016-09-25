Miminal AWS CLI Container

This repository is used to build a small Alpine Linux-based container with Amazon Web Services command line tool.

## How to configure

```bash
	mkdir ~/.aws

	docker run -it --rm -v ~/.aws:/home/aws/.aws -v ~/.ecs:/home/aws/.ecs roustem/awscli
	aws configure
```

## How to use

The easiest way is to create an alias:

```bash
	alias aws='docker run -it --rm -v ~/.aws:/home/aws/.aws -v ~/.ecs:/home/aws/.ecs -v $PWD:/data roustem/awscli'
```

After that, use `aws` to run multiple commands within the container or `aws <command> to run an individual command, for example:

```bash
	aws ec2 describe-regions
```
