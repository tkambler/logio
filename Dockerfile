FROM mhart/alpine-node:6
RUN apk update && apk add \
    python \
    build-base \
    supervisor \
    py-pip
RUN pip install \
    supervisor-stdout
RUN npm i -g log.io --user "root"
COPY supervisord.conf /etc/
RUN mkdir /var/log/supervisor /var/log/logio
ENTRYPOINT ["supervisord", "--configuration", "/etc/supervisord.conf"]