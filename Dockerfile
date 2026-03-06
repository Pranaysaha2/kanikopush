FROM golang:1.11

USER nobody

ENV GOCACHE=/tmp/go-cache

RUN mkdir -p /go/src/github.com/openshift/golang-ex
WORKDIR /go/src/github.com/openshift/golang-ex

COPY . /go/src/github.com/openshift/golang-ex
RUN go build

CMD ["./golang-ex"]
