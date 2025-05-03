# Use Node.js official image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install newrelic

# Copy the app source code
COPY . .
# Expose the app port
EXPOSE 3000

# Command to run the app
CMD [ "npm", "start" ]
