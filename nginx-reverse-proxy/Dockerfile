FROM nginx:alpine

COPY entrypoint.sh /entrypoint.sh
COPY server.template.conf /server.template.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8082
EXPOSE 9092
EXPOSE 9093
EXPOSE 9094
EXPOSE 9095
EXPOSE 9096
EXPOSE 9097
EXPOSE 9098
EXPOSE 9099

ENTRYPOINT /entrypoint.sh