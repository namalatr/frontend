FROM alpine:3.11
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .

RUN npm run build 

FROM nginx:1.19
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf 
COPY --from=build /app/dist /usr/share/nginx/html
