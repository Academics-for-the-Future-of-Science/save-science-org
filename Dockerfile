FROM wordpress
RUN apt-get update && apt-get install -y --fix-missing git subversion mysql-client
COPY wp-config.php /wp-config.php
COPY composer-install /composer-install
COPY save-science-entrypoint.sh /entrypoint2.sh
COPY install.php /install.php
COPY composer.json /composer.json
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/entrypoint2.sh"]
