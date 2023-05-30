# Use the official Node.js 16.x image as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Add the rest of the app files
COPY . .

# Build the app for production
RUN npm run build

# Start the server
CMD ["npm", "start"]