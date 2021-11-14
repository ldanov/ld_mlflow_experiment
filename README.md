# ld_mt_experiment
Infrastructure setup for ML experiments


# Prerequisite
Docker and docker-compose need to be installed on the system. See the [docker documentation](https://docs.docker.com/engine/install/) for system-specific installation options. Please note that docker-compose has a separate installation.

# Running
```
# building the docker image
sudo docker build -t ld_mt_experiment -f Dockerfile .
# running the image in a new container
sudo docker-compose up -d
```
Now you can access the MLFlow server under the [localhost:5000](localhost:5000) address.

# Stopping
```
sudo docker ps -q --filter ancestor=ld_mt_experiment | xargs -I{} sudo docker stop {}
```

# Overview of running containers
```
# Find the container based on the ld_mt_experiment image
sudo docker ps
```
