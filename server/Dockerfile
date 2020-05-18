FROM       node:alpine

RUN        echo "== NODE ====================================================="
LABEL      author="S. k."
 
WORKDIR    /usr/src/app 
# WORKDIR    /var/www/rp-node
 
# COPY       package.json /usr/src/app 
# ENV        NODE_ENV production

COPY       package.json package.json

RUN        npm install
 
COPY       . .
 
EXPOSE 	   3000
ENTRYPOINT ["node", "server.js"]