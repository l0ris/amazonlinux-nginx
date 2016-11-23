FROM amazonlinux:latest

MAINTAINER Loris Strozzini <lstrozzini@gmail.com>

RUN yum update -y
RUN yum install nginx -y

ADD root /
RUN echo "nginx on CentOS7" > /usr/share/nginx/html/index.html

EXPOSE 22 80 443

USER 997

ENTRYPOINT ["container-entrypoint"]
CMD [ "nginx18" ]


