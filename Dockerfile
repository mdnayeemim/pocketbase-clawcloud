FROM alpine:3.19

WORKDIR /pb

RUN apk add --no-cache curl unzip \
 && curl -L https://github.com/pocketbase/pocketbase/releases/download/v0.22.26/pocketbase_0.22.26_linux_amd64.zip \
 && unzip pocketbase_0.22.26_linux_amd64.zip \
 && chmod +x pocketbase

EXPOSE 8090

CMD ["./pocketbase","serve","--http=0.0.0.0:8090"]
