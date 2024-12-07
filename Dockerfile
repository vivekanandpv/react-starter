FROM nginx

RUN mkdir "/etc/nginx/templates"

COPY default.conf.template /etc/nginx/templates

COPY dist/ /usr/share/nginx/html

#   npm run dockerize
#   docker container run -d -p 9002:80 -e API_URL="http://localhost:8080" --name frontend react-app