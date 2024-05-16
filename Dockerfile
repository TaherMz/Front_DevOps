FROM node:16.14-alpine3.14
    WORKDIR /usr/src/app
    COPY package.json package-lock.json ./
    RUN npm i -g @angular/cli@12.0.1
    
    # Install app dependencies:
    RUN npm i 
    
    COPY . .
    RUN ng build --prod
ENTRYPOINT ["ng","serve","--host","0.0.0.0","--port","4201"]
