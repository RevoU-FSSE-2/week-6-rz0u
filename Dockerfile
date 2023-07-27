# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /week-6-rz0u

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port the app is running on
EXPOSE 3001

# Command to run your Node.js app
CMD ["node", "app.js"]
