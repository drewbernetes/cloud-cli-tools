# Cloud CLI Tools

An image containing the OpenStackCLI. This used to contain more tools but they are not really needed. If they are, feel
free to add them.

The following are added to the image:

| CLI Tool     | Versions        |
|--------------|-----------------|
| OpenstackCLI | Latest from PIP | 

### Running locally

If you wish to run it locally then you can run it in docker by doing the following:

```shell
docker build -t cloud-cli-tools:v0.0.0 .

docker run --name cloud-cli-tools -it --rm --env OS_CLOUD=some-cloud -v /path/to/openstack/clouds.yaml:/home/cloud-cli-tools/.config/openstack/clouds.yaml cloud-cli-tools:v0.0.0

#Then from in here
baski build / scan / sign
```

### Images
The images are available [via DockerHub](https://hub.docker.com/u/drewviles/)
