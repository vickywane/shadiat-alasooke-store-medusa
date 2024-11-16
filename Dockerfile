# Use the official Node.js LTS image
FROM node:alpine

# Create app directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package*.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Expose the application port (default is 9000 for Medusa)
EXPOSE 9000

# Start the Medusa server
# CMD ["yarn", "start"]

# Start the server using the medusa production build
# CMD ["node", "dist/main.js"]