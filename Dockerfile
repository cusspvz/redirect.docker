FROM alpine:edge

# YOU CAN ALSO SET ENV VARIABLES
# ENV WORKER_CONNECTIONS 1024
# ENV HTTP_PORT 80
# ENV REDIRECT https://www.google.com/

COPY nginx-boot.sh /sbin/nginx-boot

RUN chmod +x /sbin/nginx-boot && \
    apk --update add nginx bash && \
    rm -fR /var/cache/apk/*

EXPOSE 80

CMD [ "/sbin/nginx-boot" ]
