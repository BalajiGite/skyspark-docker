# Skyspark Docker

Files needed to run Skyspark in a docker container while persisting the project data and licenses.

## Getting Started

1. Download latest Skyspark release

2. Run Skyspark setup to add SuperUser, HTTP Port and License as needed

3. Copy the Dockerfile and docker-compose.yml file to the root directory of Skyspark

4. Use `docker-compose up --build` to build the container as well as bring up the Skyspark service

* Once you build you can bring the Skyspark service up with `docker-compose up` without needing to build the image *

## Design Notes

* volumes in the compose file should be a static directory which the skyspark license and project information should live. Linux systems this can be in the top level namespace. OSX must be under the `Users/{USERNAME}` SPACE

* BACnet, MODBUS, Sedona (SOX) and the UI are exposed by default. If you need to use more servers add the ports in the docker-compose.yml file then edit the Dockerfile to have `EXPOSE {SERVICE_PORT}` to expose the port from the container

* Container builds with debian-stretch-slim and OpenJDK 8. The FAN_JAVA ENV variable is set in the Dockerfile to allow the Skyspark instance to path correctly to the OpenJDK runtime
