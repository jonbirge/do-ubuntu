FROM ubuntu:latest

# Deal with Ubuntu's tzdata package stupidity
ENV DEBIAN_FRONTEND=noninteractive

# Swap out ubuntu servers for do servers
RUN sed -E -i 's#archive\.ubuntu\.com#mirror.digitalocean.com#g' /etc/apt/sources.list

# Update packages
RUN apt-get update
RUN apt-get -y upgrade
