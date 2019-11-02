FROM node:10-alpine
ADD  ./* /devops-exercise/
WORKDIR /devops-exercise
CMD [ "npm", "run", "start" ]
