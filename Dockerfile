FROM node:14
WORKDIR /app
RUN npm install -g newman
COPY Schedular.postman_collection.json .
COPY Schedular.postman_environment.json .

# Run the Postman collection
CMD ["newman", "run", "Schedular.postman_collection.json", "-e", "Schedular.postman_environment.json"]