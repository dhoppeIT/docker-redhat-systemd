# RedHat image including Systemd

This [Docker](https://www.docker.com) image can be used to test [Ansible](https://www.ansible.com) playbooks based on [Molecule](https://molecule.readthedocs.io).

## Supported tags

|Branch|RedHat version|Docker image tag|
|------|--------------|----------------|
|master|7             |7               |
|7     |7             |7               |

## Usage

### Start the container

```console
docker run \
  --cap-add SYS_ADMIN \
  --detach \
  --name redhat-7 \
  --rm \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  dhoppeit/docker-redhat-systemd:7
```

### Enter the container

```console
docker exec -it redhat-7 bash
```

### Stop the container

```console
docker stop redhat-7
```
