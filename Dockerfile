FROM node:18

ARG APP_USER node

# 新しい UID を設定
ARG NEW_UID=1002

# node ユーザーの UID を変更
RUN usermod -u ${NEW_UID} node && \
    find / -user 1000 -exec chown -h ${NEW_UID} {} \; || true

RUN apt-get update \
&& apt-get install -y gcc g++ make python3 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app /var/www
RUN chown -R $APP_USER: /usr/src/app /var/www

USER $APP_USER
WORKDIR /usr/src/app

EXPOSE 3000
ENTRYPOINT [ "tail", "-f", "/dev/null" ]