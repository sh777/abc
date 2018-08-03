#!/bin/bash

COMPOSE_VERSION=1.22.0
sudo sh -c "curl -L http://hyf-sw.oss-cn-beijing.aliyuncs.com/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
#sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"

