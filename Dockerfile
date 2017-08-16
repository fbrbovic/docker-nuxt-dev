FROM node:boron

RUN npm i -g npm@5.0.3

RUN npm -v
RUN node -v

ENV HOST 0.0.0.0

ENV APP_DIR /app

VOLUME $APP_DIR
WORKDIR /


EXPOSE 3000

COPY run.sh /run.sh
RUN chmod 755 /run.sh


ENTRYPOINT [ "/run.sh"]
CMD ["dev" , "install"]