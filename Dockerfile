#
# https://devopscube.com/build-docker-image/
#

FROM php:7.3-fpm

LABEL MAINTAINER Pablo Ruiz Soria <fp@catedu.es>

ARG VERSION=3.28.40+221129

RUN apt update && apt install -y unzip

RUN echo "Installing Lime-survey"; \
	curl -o lime-survey.zip -fSL "https://download.limesurvey.org/lts-releases/limesurvey${VERSION}.zip"; \
	mkdir /usr/src/lime-survey; \
	unzip -d /usr/src/lime-survey lime-survey.zip ; \
	rm lime-survey.zip

RUN apt remove unzip