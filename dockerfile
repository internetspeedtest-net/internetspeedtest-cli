FROM golang:1.20.3-alpine as builder

RUN apk add --no-cache bash upx

# Set working directory
WORKDIR /usr/src/internetspeedtest

# Copy internetspeedtest
COPY . .

# Build internetspeedtest
RUN ./build.sh

FROM alpine:3.17

# Copy internetspeedtest binary
COPY --from=builder /usr/src/internetspeedtest/out/internetspeedtest* /bin/internetspeedtest

CMD ["/bin/internetspeedtest"]
