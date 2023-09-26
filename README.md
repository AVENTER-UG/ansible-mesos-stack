# Ansible Playbook to install a complete Apache Mesos stack


[![Donate](https://img.shields.io/liberapay/receives/AVENTER.svg?logo=liberapay)](https://liberapay.com/mesos)
[![Support Chat](https://img.shields.io/static/v1?label=Chat&message=Support&color=brightgreen)](https://riot.im/app/#/room/#support:matrix.aventer.biz)

This playbook deploys a full Apache Mesos stack. The access to mesos (agent and master) need credentials. The default one is "marathon:marathon".

## Requirements

- CentOS 7 (deprecated) or Debian/Ubuntu:[focal|jammy]
- Ansible Galaxy collection: community.general
- Ansible version:

```
$ ansible --version

ansible [core 2.14.2]
  python version = 3.10.9 (main, Dec  6 2022, 18:44:57)
  jinja version = 3.1.2
  libyaml = True
```

## Informations

- These playbook will install cronjobs to cleanup unused docker images, containers
and local volumes. To besure that local volumes will not be deleted, add a tag 
called "mesos" as label. As example: 


```bash
docker volume create --label tag=mesos volumename
```

- These playbook will not restart services. If you apply new configuration and want to restart the service, 
  use the tag "restart"


## How to use

### Install the whole stack

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml
```

### Skip installation, only configure the whole stack

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --skip-tags install
```

###  Update Mesos, Docker, Zookeeper and Mesos-DNS

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags update
```

###  Restart all daemons

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags restart
```

### Reconfigure DNS

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags dns
```

### Reconfigure Worker

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags worker
```

### Reconfigure Manager

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags manager
```

### Reconfigure Mesos Plugins

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags plugin
```

### Reconfigure SSL

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags ssl
```


## Manager node


| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.11.0-0.3.0 | Mesos Masters                     | RPM/DEB                            |
| Zookeeper 3.8.1    | Zookeeper cluster                 | RPM/DEB                            |
| Mesos-DNS 0.9.0    | Service Discovery for Mesos Tasks | RPM/DEB                            |

## Worker node

| Software version   | Role                              | Install type |
| ------------------ | :-------------------------------: | :----------: |
| Mesos 1.11.0-0.3.0 | Mesos Agent                       | RPM/DEB      |
| Docker CE latest   | Docker engine                     | RPM/DEB      |
| DNSMasq 2          | Container DNS                     | RPM/DEB      |

## Persistent Storage

For persistent container storage, we recomend to use our 
[ansible-docker-volume playbook](https://github.com/AVENTER-UG/ansible-docker-volume)
to deploy S3 docker-plugins as systemd service.

# Troubleshooting


## Missing ping between containers

If weave cannot ping between containers at different hosts, you have to change the following configuration:

```bash
sysctl net.bridge.bridge-nf-call-iptables=0
```

Do not forget to make it persistent. 

## To many open files

If you get the error message "To many open files" but file-max looks fine, then it could be helpful to resize max user instances:


```bash
sysctl fs.inotify.max_user_instances=8192
```
