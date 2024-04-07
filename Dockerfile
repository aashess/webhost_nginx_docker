FROM nginx

WORKDIR /app
# Copy the contents of the current directory to the /app directory in the container
COPY . .

# Copy the contents of the /app directory to the NGINX web root directory
RUN cp -r /app/* /usr/share/nginx/html/

# Restart NGINX to apply the changes
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
