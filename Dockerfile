ARG distPath=dist
ARG exposePort=80
# production environment
FROM nginx:alpine
COPY ${distPath} /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/default.conf /etc/nginx/conf.d
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
RUN chown -R nginx /usr/share/nginx/html
EXPOSE ${exposePort}
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
