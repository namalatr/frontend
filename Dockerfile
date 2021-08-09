FROM nginx

ARG http_proxy
ARG https_proxy

WORKDIR /var/www/
#Remove Vim and run container as unpriveleged user

RUN apt-get update \
  && apt-get install --assume-yes --no-install-recommends\
  apt-transport-https \
  build-essential \
  bzip2 \
  curl \
  git \
  rlwrap \
  vim \
  apt-utils \
  software-properties-common \
  gnupg2 

RUN apt-get update \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs \
  && apt-get clean

# copy nginx and ssl config
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# get frontend to be built in this container
COPY ./ ./frontend-ce

# install projects dependencies
    RUN cd fronend-ce \
    && npm install \
    &&  npm run build \
    && cd ..
    
CMD ["nginx", "-g", "daemon off;"] 
