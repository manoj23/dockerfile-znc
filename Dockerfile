FROM alpine:3.7
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
RUN apk update && apk add znc znc-extra
RUN adduser -D znc-admin
USER znc-admin
CMD ["znc", "-f"]
