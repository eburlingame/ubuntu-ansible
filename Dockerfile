FROM ubuntu:21.04

ENV DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get -qy update
RUN apt install -qy python software-properties-common git
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt install -qy ansible ansible-lint

CMD ["/bin/bash"]
