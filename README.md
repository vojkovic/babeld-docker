# babeld-docker

babeld-docker is a Docker image for the [Babel routing protocol daemon](https://www.irif.fr/~jch/software/babel/). The image is based on the [Alpine Linux](https://alpinelinux.org/) distribution.

## Usage

To run the container from the build vojkovic/babeld-docker image, use the following command:

```bash
docker run -d --name babel --network host --restart always -v /path/to/babeld.conf:/etc/babeld.conf vojkovic/babeld
```

The container will run in the background and will use the host network stack. The Babel configuration file should be mounted to the container at `/etc/babeld.conf`.

Docker compose example:

```yaml
services:
  babel:
    image: vojkovic/babeld:latest
    container_name: babel
    network_mode: host
    restart: always
    volumes:
      - /path/to/babeld.conf:/etc/babeld.conf
```