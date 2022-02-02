FROM nginx:alpine

WORKDIR /index.html

COPY --from=build /index.html/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

