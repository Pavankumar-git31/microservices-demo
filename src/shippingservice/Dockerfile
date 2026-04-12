# Build stage
FROM golang:1.25-alpine AS builder

WORKDIR /build

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o server .

# Final stage
FROM alpine:latest

WORKDIR /app
COPY --from=builder /build/server .

EXPOSE 50051

ENTRYPOINT ["/app/server"]
