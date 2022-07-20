
#
#   docker run --name liquorish-frontend -p 80:80 hyperfix-digital/liquorish:frontend
#

FROM nginx:latest

COPY ./build/ /usr/share/nginx/html