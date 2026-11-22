FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY src ./src
COPY public ./public
COPY scripts ./scripts
RUN mkdir -p /data/uploads && chown -R node:node /data/uploads
ENV UPLOAD_DIR=/data/uploads
USER node
EXPOSE 3000
CMD ["node", "src/server.mjs"]
