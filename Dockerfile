FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Expose ports 3000 for HTTP and 8080 for another service
EXPOSE 3000 8080

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Start the application
CMD ["node", "index.js"]
