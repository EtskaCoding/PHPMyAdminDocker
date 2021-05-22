FROM debian:9

RUN apt-get update
RUN apt-get install curl sudo wget -y --allow-unauthenticated
RUN apt-get install gnupg -y --allow-unauthenticated
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
RUN apt-get update -y
RUN sudo apt install -y lsb-release ca-certificates apt-transport-https software-properties-common --allow-unauthenticated
RUN sudo echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list
RUN sudo wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add -
RUN chmod 1777 /tmp

RUN sudo rm -rf /var/lib/apt/lists/*
RUN apt-get update -y
RUN apt-get update -y

RUN sudo apt-get install -y php8.0 --allow-unauthenticated
RUN sudo apt-get update
RUN sudo apt-get install -y php8.0-mysql
RUN sudo apt-get install -y php8.0-xml

RUN sudo apt-get install -y zip unzip
RUN wget http://etska.ml/phpmyadminportable/src.zip
RUN unzip src.zip
RUN mv src/* /

CMD php -S 0.0.0.0:8000
