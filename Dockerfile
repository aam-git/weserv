FROM ghcr.io/weserv/images:5.x

RUN cp ngx_conf/imagesweserv-no-cache.conf /etc/nginx/imagesweserv.conf
RUN sed -i 's/resolver 8.8.8.8;/resolver 8.8.8.8 ipv6=off;/' /etc/nginx/imagesweserv.conf
