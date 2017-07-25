FROM node:boron

ENV HOST 0.0.0.0

ENV APP_DIR /app

VOLUME $APP_DIR
WORKDIR /


EXPOSE 3000

COPY run.sh /run.sh
RUN chmod 755 /run.sh


ENTRYPOINT [ "/run.sh"]
CMD ["dev" , "install"]