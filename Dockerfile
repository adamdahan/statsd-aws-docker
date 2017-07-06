FROM node:5

RUN addgroup --system statsd
RUN adduser statsd --disabled-login --home /var/lib/statsd --shell /sbin/nologin --ingroup statsd

RUN apt-get install tar wget
      
RUN wget -qO- https://github.com/etsy/statsd/archive/v0.8.0.tar.gz | tar --strip-components=1 -xzC /var/lib/statsd
RUN cd /var/lib/statsd && npm install aws-cloudwatch-statsd-backend

USER statsd
WORKDIR /var/lib/statsd
COPY config.js /var/lib/statsd/config.js

ENTRYPOINT ["node", "stats.js", "config.js"]