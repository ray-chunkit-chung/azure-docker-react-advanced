
# build environment
FROM alpine:latest as build
RUN apk update
RUN apk add --update nodejs npm yarn
RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app
RUN yarn install
COPY . /app
RUN yarn build

# test environment
FROM build as test
CMD ["yarn", "test"]

# production environment
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html


###########################################
# Manual deploy if no auto port binding
###########################################

# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

