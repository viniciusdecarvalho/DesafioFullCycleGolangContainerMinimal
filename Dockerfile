FROM golang:alpine3.15 AS build

WORKDIR /app

RUN go env -w GO111MODULE=off

COPY *.go ./

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /release

FROM scratch

WORKDIR /

COPY --from=build /release /release

ENTRYPOINT ["/release"]