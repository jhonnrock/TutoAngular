FROM node:12.2.0
ENV APP_HOME=/home/Angular
ENV GIT_REPO=https://github.com/jhonnrock/TutoAngular.git
#ENV PORT=4200
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}
RUN apt-get install git
RUN git clone ${GIT_REPO}
WORKDIR ${APP_HOME}/TutoAngular
RUN npm install
RUN npm install -g @angular/cli
#EXPOSE ${PORT}
CMD ng serve --host 0.0.0.0