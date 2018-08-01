FROM alpine:3.7
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
ARG UID=${UID:-1000}
RUN apk update && apk add znc znc-extra
RUN adduser -D znc-admin -u ${UID}
USER znc-admin
CMD ["znc", "-f"]
