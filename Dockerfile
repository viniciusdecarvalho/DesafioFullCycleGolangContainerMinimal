FROM golang:1.16-buster AS build

WORKDIR /app

RUN go env -w GO111MODULE=off

COPY *.go ./

RUN go build -o /release

FROM busybox:stable-uclibc

WORKDIR /

COPY --from=build /release /release

ENTRYPOINT ["/release"]