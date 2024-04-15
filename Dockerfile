# этап сборки (build stage)
FROM node:14.21.3 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# этап production (production-stage)
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY --from=build-stage /app/nginx/templates /etc/nginx/templates

ENV NGINX_PORT 80

CMD ["nginx", "-g", "daemon off;"]
