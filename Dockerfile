FROM golang:1.21 as base

WORKDIR /app

COPY go.mod .

RUN go mod download 

COPY . .

RUN go build -o main .
