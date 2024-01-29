FROM node:20-alpine3.17
RUN apk add --no-cache tini curl
COPY run.js .
EXPOSE 6060
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "run.js"]
