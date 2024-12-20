FROM golang:1.23.2

WORKDIR /app

COPY ./ ./

RUN go mod download

RUN go build -o ./test .
CMD ["./test"]