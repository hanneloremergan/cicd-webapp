# Start from a Docker image for Node.js version 18.x.x (LTS)
FROM node:18

# The application should be reachable on port 3000.
EXPOSE 3000

# (Set the working directory in the container)
WORKDIR /app

# (Copy the `package.json` and `yarn.lock` files in the `/app` folder in the container)
COPY package.json yarn.lock /app/

# Install the application dependencies with the `yarn install --frozen-lockfile` command.
RUN yarn install --frozen-lockfile

# Copy the application code in the `/app` folder in the container."
COPY . /app

# The application should be started using the `yarn start` command (when the container is started).
CMD ["yarn", "start"]

# Inside the folder with the Dockerfile
# Build: docker build -t webapp .

# Run: docker run -d -p 3000:3000 webapp