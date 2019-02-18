FROM alpine
RUN apk add --no-cache git
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
ADD gitlab-cli-Linux-x86_64 /usr/local/bin/gitlab-cli
ADD jira-cli-Linux-x86_64 /usr/local/bin/jira-cli
