# Use an official Node runtime as a parent image
FROM node:12.7.0-alpine

# Set the working directory to /server
WORKDIR /app

# Copy package.json to the working directory
COPY package*.json ./

RUN npm install @babel/core @babel/cli @babel/node -g --save

# Install any needed packages specified in package.json
RUN npm install

# Copying the rest of the code to the working directory
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

#RUN file="$(ls -1 /)" && echo $file
#RUN file="$(ls -1 /app)" && echo $file
#RUN file="$(ls -1 /app/node_modules)" && echo $file
#RUN babel-node -V

# Run www.js when the container launches
CMD ["babel-node", "server/bin/www.js"]
#CMD ["sleep 1000"]