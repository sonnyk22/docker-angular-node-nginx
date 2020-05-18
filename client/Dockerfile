# == Stage 1 =====================
FROM      node:alpine as node

RUN       echo "== ANGULAR =================================================="

WORKDIR   /app
COPY      package.json package-lock.json ./

RUN       npm install -g @angular/cli @angular-devkit/build-angular
RUN       npm install

COPY      . .
RUN       npm run build

EXPOSE    4200


# == Stage 2 =====================
FROM      nginx:alpine

RUN       echo "== NGINX ===================================================="

# VOLUME  /var/cache/nginx

RUN       rm -rf /usr/share/nginx/html/*

COPY      --from=node /app/dist/client /usr/share/nginx/html
COPY      ./nginx/nginx.conf /etc/nginx/nginx.conf
# COPY      ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE     4200 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
