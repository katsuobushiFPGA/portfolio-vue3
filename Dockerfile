FROM node:18

ARG APP_USER node

RUN apt-get update \
&& apt-get install -y gcc g++ make python3 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app /var/www
RUN chown -R $APP_USER: /usr/src/app /var/www

USER $APP_USER
WORKDIR /usr/src/app

EXPOSE 5173
ENTRYPOINT [ "tail", "-f", "/dev/null" ]