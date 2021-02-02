FROM php:7.3.0-fpm
RUN pecl install xdebug-3.0.2
RUN docker-php-ext-enable xdebug
RUN echo "zend_extension = xdebug.so" >> /usr/local/etc/php/php.ini \ 
 && echo "xdebug.idekey='"'phpstorm'"'" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.remote_handler=dbgp" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.client_port=9001" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.client_host=106.15.204.249" >> /usr/local/etc/php/php.ini \
 && echo "xdebug.log='"'/tmp/xdebug.log'"'" >> /usr/local/etc/php/php.ini
