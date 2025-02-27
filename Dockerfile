FROM nginx:latest
WORKDIR /app
RUN rm -rf /usr/share/nginx/html/*.html
COPY * /usr/share/nginx/html/
RUN apt-get update -y && apt-get install vim -y && apt-get install nano -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
