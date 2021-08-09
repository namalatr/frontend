FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .

RUN npm run build 

FROM nginx:1.19
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf 
COPY /app /usr/share/nginx/html
