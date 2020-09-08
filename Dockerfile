FROM ubuntu:18.04

EXPOSE 4000
ENV PORT=4000

# Install base dependencies
RUN apt-get update && apt-get install -y -q --no-install-recommends \
  curl \
  jq
