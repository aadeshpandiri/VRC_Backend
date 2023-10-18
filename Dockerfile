FROM node
WORKDIR /app
COPY package.json .
RUN npm install
ENV MYSQL_USERNAME=theuser
ENV MYSQL_PASSWORD=mysqldb@123
ENV MYSQL_HOST=13.127.33.206
ENV MYSQL_DATABASE=vrcapp
ENV MYSQL_PORT=3306
ENV ACCESS_TOKEN_SECRETKEY=78743ff3713544c9b48268ef780b067a
ENV REFRESH_TOKEN_SECRETKEY=5800d84d002a437590fedb0c8c1d7c22
COPY . .
EXPOSE 4200
CMD ["npm","run","start"]