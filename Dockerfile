FROM wordpress
RUN apt-get update && apt-get install -y --fix-missing git subversion
RUN cd /var/www/html && curl https://getcomposer.org/installer -o composer-install
COPY save-science-entrypoint.sh /entrypoint2.sh
COPY composer.json /composer.json
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/entrypoint2.sh"]
