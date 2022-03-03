
# build environment
FROM alpine:latest as build
RUN apk update
RUN apk add --update nodejs npm
RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app

# Some debates between npm and yarn
# https://tomiko0404.hatenablog.com/entry/npm-yarn-install
# https://www.section.io/engineering-education/npm-vs-yarn-which-one-to-choose/#:~:text=One%20of%20the%20main%20difference,and%20install%20multiple%20packages%20simultaneously.
RUN npm install
COPY . /app
RUN npm run build

# production environment
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]


