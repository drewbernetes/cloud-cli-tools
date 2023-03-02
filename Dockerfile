FROM cgr.dev/chainguard/wolfi-base:latest

RUN apk update --no-cache
RUN apk add build-base python3-dev py3-pip

RUN pip3 install python-openstackclient

RUN echo "cli-tools:x:1000:1000:CLITools Non Root,,,:/home/cli-tools:" >> /etc/passwd
RUN mkdir -p /home/cli-tools/.config/openstack/
RUN chown cli-tools: -R /home/cli-tools
