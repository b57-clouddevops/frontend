FROM        nginx:latest 
RUN         rm -rf /usr/share/nginx/html/* 
COPY        default.conf /etc/nginx/default.d/default.conf
COPY        static /usr/share/nginx/html/