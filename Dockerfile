FROM alpine:3.12

ENV LANG zh_CN.UTF-8
ENV TZ Asia/Shanghai

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk upgrade --no-cache && \
    apk add --no-cache vim tzdata ca-certificates curl && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    echo $TZ > /etc/TZ
