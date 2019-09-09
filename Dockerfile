FROM node:12.2.0
EXPOSE 4200
ENV APP_HOME=/home/Angular
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}
WORKDIR ${APP_HOME}/TutoAngular
CMD ng serve --host 0.0.0.0
