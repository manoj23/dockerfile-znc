ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
LABEL ALPINE_VERSION=${ALPINE_VERSION}
ARG UID=${UID:-1000}
RUN apk update && apk add znc znc-extra
RUN adduser -D znc-admin -u ${UID}
USER znc-admin
CMD ["znc", "-f"]
