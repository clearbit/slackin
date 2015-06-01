FROM octohost/nodejs

ENV PORT 5000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install

RUN make

EXPOSE 5000

CMD ./bin/slackin --silent --port $PORT $SLACK_SUBDOMAIN $SLACK_API_TOKEN
