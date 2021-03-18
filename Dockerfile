FROM node:12 AS build
WORKDIR /app
COPY package* ./
RUN yarn install
COPY public ./public
COPY src ./src
COPY .eslintrc.js babel.config.js .browserslistrc ./
RUN yarn run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

