
FROM php:5.6-apache
LABEL Author="fjh1997" Blog="https://fjh1997.github.io"
COPY ./files /tmp/
RUN cp -rf /tmp/html/ /var/www/ && \
    chown -R root:root /var/www/html && \
    chmod -R 755 /var/www/html

CMD sh -c 'sed -i "s/flag_is_here/$FLAG/g" /var/www/html/flag.php && export FLAG=not_flag && FLAG=not_flag && apache2-foreground'