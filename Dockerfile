FROM node:15.12-alpine3.13

WORKDIR /app

RUN npm install -g npm@7.7.5 --slient
RUN npm install -g @nestjs/cli

CMD ["/bin/bash"]

