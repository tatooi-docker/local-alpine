FROM alpine:3.18.2

LABEL maintainer="Tatooi Noyo <tatooi.noyo@gmail.com>"
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk upgrade # buildkit
RUN apk add --no-cache tzdata
ENV TZ=Asia/Shanghai
