FROM ubuntu
MAINTAINER itsdeepsardana@gmail.com
RUN apt-get update -y
RUN apt-get install -y default-jre \
                       default-jdk \
                       wget \
                       sudo \
                       gnupg
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
RUN sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN  apt-get update
RUN sudo apt install jenkins -y
CMD [ "echo" , "success" ]
