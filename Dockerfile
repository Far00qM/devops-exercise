FROM node:10-alpine
ADD  devops-exercise /devops-exercise
WORKDIR /devops-exercise
RUN npm i
CMD [ "npm", "run", "start" ]
