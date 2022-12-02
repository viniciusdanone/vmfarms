FROM golang:1.19-alpine

WORKDIR /usr/src/app

COPY * ./ 
RUN go mod download && go mod verify
RUN mkdir -p /usr/local/go/src/webserver/articlehandler
RUN cp ./articlehandler/* /usr/local/go/src/webserver/articlehandler && rm -rf ./articlehandler

RUN go build -v -o articlehandler

ENTRYPOINT ["go","run","."]