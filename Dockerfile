FROM coexcz/node-alpine

ENV VERSION 2.0.12

LABEL author="Lukas Bartak"
LABEL maintainer="bart@bartweb.cz"
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.license="MIT" \
      org.label-schema.name="node-alpine-phrase" \
      org.label-schema.description="Docker image with `phrase cli`. Based on NodeJS 12 Alpine with Yarn, ssh, git and bash." \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

RUN set -ex \
    && apk add --no-cache ca-certificates

RUN set -ex \
        && apk add --no-cache --virtual .phrase-build curl \
        && curl -fSL -o /usr/local/bin/phrase "https://github.com/phrase/phrase-cli/releases/download/${VERSION}/phrase_linux_amd64" \
        && chmod +x /usr/local/bin/phrase \
        && apk del .phrase-build

