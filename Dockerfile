FROM ubuntu
MAINTAINER piyushguptaiet@gmail.com
RUN apt-get update && apt-get  install -y  openssh-server
RUN mkdir -p /var/run/sshd
RUN echo 'root:demo' |chpasswd
#RUN ssh-keygen -A
ADD sshd_config /etc/ssh/sshd_config
CMD /usr/sbin/sshd -D
#USER root
WORKDIR /tmp
ENV foobar "HelloWorld"
EXPOSE 2222

