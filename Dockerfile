# ↓	Main stage
# 		Ubuntu 22.04 (LTS)
FROM ubuntu:jammy-20240405

#	↓	Avoid tzdata user interaction while `apt install`
ENV DEBIAN_FRONTEND noninteractive

#	↓	Install Calibre
RUN apt-get update \
	&& apt-get install -y calibre=5\*

#	↓	Copy stuff
COPY ./bin/ /bin/
RUN chmod +x /bin/epub-to-mobi
RUN chmod +x /bin/help

CMD [ "help" ]
