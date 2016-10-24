FROM alpine:edge

COPY nginx-boot.sh /sbin/nginx-boot

RUN chmod +x /sbin/nginx-boot && \
    apk --update add nginx bash && \
    rm -fR /var/cache/apk/*

EXPOSE 80

CMD [ "/sbin/nginx-boot" ]
