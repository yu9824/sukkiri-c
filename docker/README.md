## Build image

You do not necessarily need to do this if your directory name is c-tutorial, as the image is in [Docker hub](https://hub.docker.com/) and will be downloaded when you run the container.

If not, or if you have some other problem, run the following command.

```bash:build.sh
sh docker/build.sh
```

## Run container

If the directory name is c-tutorial, execute the following command.

```bash:run-dockerhub.sh
sh docker/run-dockerhub.sh
```

Otherwise, execute the following commands.

```bash:run-builded.sh
sh docker/run-builded.sh
```
