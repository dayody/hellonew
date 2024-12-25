# Use an official Node.js runtime as the base image
FROM node:19-alpine

# Set the working directory inside the container
WORKDIR /usr/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY src ./src

# Expose the port the app runs on (optional, based on your app's configuration)
EXPOSE 3000

# Command to run the application
CMD ["node", "src/server.js"]
