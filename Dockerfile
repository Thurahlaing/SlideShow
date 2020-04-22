FROM nginx
MAINTAINER THURA HLAING thurahlaing.pthgtoup@gmail.com
ENV AUTHOR=Docker

WORKDIR /usr/share/nginx/html
COPY ["SlideShow",
     "KOKO1.jpg",
     "KOKO2.jpg",
     "KOKO3.jpg",
     "script.js",
     "style.css", 
     "/usr/share/nginx/html"]

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ SlideShow.html > index.html; nginx -g 'daemon off;'
