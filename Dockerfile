FROM nginx
ENV AUTHOR=Docker

WORKDIR /usr/share/nginx/html
COPY SlideShow.html /usr/share/nginx/html

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ SlideShow.html > index.html ; nginx -g 'daemon off;'
