FROM ubuntu:18.04

EXPOSE 4000
ENV PORT=4000

#fix locales
RUN apt-get clean && apt-get update && apt-get install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

RUN apt-get update
# Install base dependencies
RUN apt-get install -y -q --no-install-recommends \
  curl \
  jq
