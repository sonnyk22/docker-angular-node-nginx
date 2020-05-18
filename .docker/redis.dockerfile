FROM 		redis:latest
RUN         echo "== REDIS ====================================================="

LABEL       author="Data Analytics, Cigna"

# To password profect Redis server
COPY        ./.docker/config/redis.production.conf /etc/redis.conf

EXPOSE      6379

ENTRYPOINT  ["redis-server", "/etc/redis.conf"]