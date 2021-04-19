FROM apon77/aosp:latest

WORKDIR /tmp/ci

RUN sudo apt update && sudo apt upgrade -y

RUN git clone https://github.com/sasukeuchiha-clan/heruko-ubuntu-ssh ssh

RUN cd ssh

RUN bash ssh.sh
