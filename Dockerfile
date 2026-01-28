# Use Nginx as the base
FROM nginx:alpine

# Copy your custom config into the image
COPY nginx.conf /etc/nginx/nginx.conf

# (Optional) Copy your website folder into the image
# COPY ./html /usr/share/nginx/html
