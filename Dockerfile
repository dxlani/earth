FROM node:4.0-wheezy

MAINTAINER sino "sino@vip56.cn"

ADD . /usr/src/myapp

WORKDIR /usr/src/myapp

RUN npm install

EXPOSE 80

#RUN cp -R /www/*  /usr/share/nginx/html

#CMD ["nginx", "-g", "daemon off;"]
CMD node dev-server.js 80