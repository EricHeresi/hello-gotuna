FROM golang:1.20-alpine AS builder
WORKDIR /opt/gotuna/
COPY . .
RUN go build -o ./build/main ./examples/fullapp/cmd/main.go

FROM debian:11.6-slim AS runtime
WORKDIR /opt/gotuna/
EXPOSE 8888
COPY --from=builder /opt/gotuna/build/ .
CMD ["./main"]


