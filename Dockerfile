FROM nginx:latest

RUN apt update && apt install -y ca-certificates libcap2

ADD ccf-latest.amd64.deb /tmp/ccf-latest.amd64.deb
RUN dpkg -i /tmp/ccf-latest.amd64.deb

ENTRYPOINT ["cmd_daemon", "-i"]
CMD ["nginx", "-g", "daemon off;"]
