FROM python:3-alpine

RUN \
  adduser -D -u 1010 appuser && \
  mkdir /work && \
  chown appuser:appuser /work && \
  touch /etc/profile && \
  chmod 666 /etc/profile && \
  true

RUN pip install awscli

WORKDIR /work
USER appuser
