#!/bin/bash
docker stop globe-app
docker rm globe-app
docker build -t adndterra/globe-app:latest .
docker run -d -p 8080:8080 --name globe-app adndterra/globe-app:latest