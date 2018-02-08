FROM jenkinsci/blueocean:latest
RUN apk update \
&& apk add php7 php7-iconv php7-dom php7-mbstring php7-openssl php7-dom php7-xml php7-tokenizer php7-xsl php7-phar php7-json php7-xmlwriter
COPY install-composer.sh /
RUN ./install-composer.sh 
&& composer require phpunit/phpunit \
WORKDIR /var/jenkins_home