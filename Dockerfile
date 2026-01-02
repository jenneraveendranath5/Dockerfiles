FROM almalinux:9

RUN dnf install -y epel-release \
    && dnf install -y nginx \
    && dnf clean all

RUN rm -f /usr/share/nginx/html/index.html

ADD https://www.halcyontek.com/images/aws-cloud-banner.png \
    /usr/share/nginx/html/index.png

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
