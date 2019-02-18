#!/usr/bin/env bash
cd ./../jira-cli/ && ./build.sh
cd ./../gitlab-cli/ && ./build.sh
cp ./../jira-cli/bin/jira-cli-Linux-x86_64 ./../gitlab-tools/
cp ./../gitlab-cli/bin/gitlab-cli-Linux-x86_64 ./../gitlab-tools/
cd ./../gitlab-tools &&
docker build -t sotomski/gitlab-tools .
docker build -f Dockerfile.dind -t sotomski/gitlab-tools:dind .
docker push sotomski/gitlab-tools
docker push sotomski/gitlab-tools:dind
