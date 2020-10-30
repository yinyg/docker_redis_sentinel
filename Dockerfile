FROM redis:6.0-alpine
COPY ./redis.conf /usr/local/etc/redis/redis.conf
COPY ./redis2.conf /usr/local/etc/redis/redis2.conf
COPY ./redis3.conf /usr/local/etc/redis/redis3.conf
COPY ./sentinel.conf /usr/local/etc/redis/sentinel.conf
RUN ["chmod", "777", "/var/log"]
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
