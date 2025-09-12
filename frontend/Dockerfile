# Этап сборки (builder)
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build -- --configuration production

FROM nginx:1.27-alpine
RUN rm -rf /usr/share/nginx/html && mkdir -p /usr/share/nginx/html
COPY --from=build /app/dist/frontend/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]



