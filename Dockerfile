FROM debian:stable-slim

RUN apt update && apt install -y git zsh nano vim curl make
COPY install.sh /tmp/install.sh
RUN chmod +rx /tmp/install.sh
RUN /tmp/install.sh

WORKDIR /root

CMD [ "zsh" ]
