FROM debian:12.2
EXPOSE 8080
RUN mkdir /site
COPY ./backend /site/backend
ENTRYPOINT exec /site/backend
