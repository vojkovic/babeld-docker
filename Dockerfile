FROM alpine:latest

RUN apk add --no-cache babeld

CMD ["babeld"]