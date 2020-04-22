FROM nginx
MAINTAINER THURA HLAING thurahlaing.pthgtoup@gmail.com
ENV AUTHOR=Docker

WORKDIR /usr/share/nginx/html
COPY SlideShow.html /usr/share/nginx/html
COPY KOKO1.jpg /usr/share/nginx/html
COPY KOKO2.jpg /usr/share/nginx/html
COPY KOKO3.jpg /usr/share/nginx/html
COPY script.js /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ SlideShow.html > index.html; nginx -g 'daemon off;'
