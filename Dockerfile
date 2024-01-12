# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose the port that your Next.js app will run on
EXPOSE 3000

# Define the command to run your Next.js app
CMD ["npm", "run", "dev"]