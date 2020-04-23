FROM nginx
MAINTAINER THURA_HLAING thurahlaing.pthgtoup@gmail.com
ENV AUTHOR=THURA_HLAING

WORKDIR /usr/share/nginx/html
COPY SlideShow.html KOKO1.jpg KOKO2.jpg KOKO3.jpg script.js style.css /usr/share/nginx/html/

EXPOSE 80

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ SlideShow.html > index.html; nginx -g 'daemon off;'
