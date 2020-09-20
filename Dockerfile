# Stage 0, "build-stage", based on Node.js, to build and compile the frontend angular application
FROM node:14.0-alpine as builder

WORKDIR /angular_app

COPY package*.json /angular_app/

RUN npm install

COPY ./ /angular_app/

ARG configuration=production

RUN npm run build -- --output-path=./dist/out --configuration ${configuration}

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:alpine

COPY --from=builder /angular_app/dist/out/ /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
