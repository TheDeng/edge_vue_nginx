# FROM nginx
# COPY dist/ /usr/share/nginx/html/
FROM node:12 AS build
WORKDIR /app
COPY package* yarn.lock ./
RUN yarn install
COPY public ./public
COPY src ./src
RUN yarn run build

FROM nginx:alpine
COPY --from=dist /app/dist /usr/share/nginx/html
