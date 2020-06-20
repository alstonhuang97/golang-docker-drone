FROM golang:1.13-alpine
WORKDIR /app
ADD . /app
RUN cd /app && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
EXPOSE 3001
ENTRYPOINT ./golang-docker-drone