FROM golang:1.25-alpine AS builder
WORKDIR /build

COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app .

FROM alpine:latest
WORKDIR /

COPY --from=builder /build/app /app
COPY --from=builder /build/templates /templates   # ✅ important
COPY --from=builder /build/static /static         # ✅ important

EXPOSE 8080
CMD ["/app"]
