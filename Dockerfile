FROM node:26.2-alpine

ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
RUN npm install -g http-proxy@latest
RUN npm install -g proxy-from-env@latest
COPY server.js LICENSE README.md .
RUN mkdir -p ./lib
COPY lib/* ./lib
CMD ["node", "server.js"]

EXPOSE 8080