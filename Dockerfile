# ↓	Main stage
FROM ubuntu:22.04

#	↓	Avoid tzdata user interaction while `apt install`
ENV DEBIAN_FRONTEND noninteractive

#	↓	Install Calibre
RUN apt-get update \
	&& apt-get install -y calibre=5\*

#	↓	Copy stuff
COPY ./bin/ /bin/
RUN chmod +x /bin/help

CMD [ "help" ]
