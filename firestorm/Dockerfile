ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
	git \
	nodejs \
	yarn

WORKDIR /app

RUN git clone https://github.com/simap/Firestorm .

COPY no-repl.patch run.sh /app/
RUN chmod a+x run.sh && git apply no-repl.patch && rm no-repl.patch

RUN yarn && yarn build

CMD ["/app/run.sh"]

