FROM golang:1.20
WORKDIR /opt/gotuna/
COPY . .
EXPOSE 8888
CMD ["go", "run", "./examples/fullapp/cmd/main.go"]
