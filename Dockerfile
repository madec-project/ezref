FROM node:argon

# Copy the local code source
# and tell docker this folder
# must be used when running a
# container.
COPY . /app
WORKDIR /app


# npm dependencies before addinq source code
COPY ./package.json /app
RUN npm install --production -q && npm cache clean
COPY . /app

# ezmasterization of ezark
# see https://github.com/Inist-CNRS/ezmaster
RUN echo '{ \
  "httpPort": 3000, \
  "configPath": "/app/data.json", \
  "dataPath": "/app/data/" \
}' > /etc/ezmaster.json

# load config sample
RUN cp -f /app/config.sample.json /app/data.json

# run the application
ENTRYPOINT ["/app/docker-entrypoint.sh"]
EXPOSE 3000
