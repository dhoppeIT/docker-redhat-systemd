# RedHat image including Systemd

This [Docker](https://www.docker.com) image can be used to test [Ansible](https://www.ansible.com) playbooks based on [Molecule](https://molecule.readthedocs.io).

## Supported tags

|Branch|RedHat version|Docker image tag|
|------|--------------|----------------|
|master|8             |8               |
|7     |7             |7               |
|8     |8             |8               |

## Usage

### Start the container

```console
docker run \
  --cap-add SYS_ADMIN \
  --detach \
  --name redhat-8 \
  --rm \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  dhoppeit/docker-redhat-systemd:8
```

### Enter the container

```console
docker exec -it redhat-8 bash
```

### Stop the container

```console
docker stop redhat-8
```
