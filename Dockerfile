FROM ubuntu:ubuntu:18.04
LABEL description="This is website created for mirlan"
RUN yum update -y
RUN yum install epel-release -y
RUN yum install -y python3.8
RUN yum install nginx -y
COPY my-test-repo/. /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN echo "New index.html content. Like me" > index.html
RUN chmod -R +rx /usr/share/nginx/html
EXPOSE 80
CMD nginx && tail -f /dev/null 