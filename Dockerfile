FROM nginx
MAINTAINER THURA HLAING thurahlaing.pthgtoup@gmail.com
ENV AUTHOR=Docker

WORKDIR /usr/share/nginx/html
COPY SlideShow.html /usr/share/nginx/html && \
     KOKO1.jpg /usr/share/nginx/html && \
     KOKO2.jpg /usr/share/nginx/html && \
     KOKO3.jpg /usr/share/nginx/html && \
     script.js /usr/share/nginx/html && \
     style.css /usr/share/nginx/html && \

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ SlideShow.html > index.html; nginx -g 'daemon off;'
