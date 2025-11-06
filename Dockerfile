# Dockerfile
FROM node:20

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy all project files
COPY . .

# Expose port (Render uses PORT env variable)
EXPOSE 10000
ENV PORT=10000

# Start server
CMD ["node", "server.js"]
