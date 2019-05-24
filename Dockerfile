# Use an official Python runtime as a parent image
FROM node

RUN git clone https://github.com/kanhaiya15/docker-expressjs.git
RUN cd docker-expressjs

# Set the working directory to /opt/expressjs
WORKDIR /opt/expressjs

# Copy the current directory contents into the container at /opt/expressjs
COPY . /opt/expressjs

# Install needed packages
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app.js when the container launches
CMD ["node", "app.js"]