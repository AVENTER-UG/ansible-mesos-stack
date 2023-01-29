# Ansible Playbook to install a complete Apache Mesos stack


[![Donate](https://img.shields.io/liberapay/receives/AVENTER.svg?logo=liberapay)](https://liberapay.com/mesos)
[![Support Chat](https://img.shields.io/static/v1?label=Chat&message=Support&color=brightgreen)](https://riot.im/app/#/room/#support:matrix.aventer.biz)

This playbook deploys a full Apache Mesos stack. The access to mesos (agent and master) need credentials. The default one is "marathon:marathon".

## Requirements

- CentOS 7 (deprecated) or Debian/Ubuntu:[focal|jammy]
- Ansible Galaxy collection: community.general


## Informations

- These playbook will install cronjobs to cleanup unused docker images, containers
and local volumes. To besure that local volumes will not be deledet, add a tag 
called "mesos" as label. As example: 

```bash
docker volume create --label tag=mesos volumename
```


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

###  Restart docker daemon

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags restart
```

### Reconfigure DNS

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags dns
```

### Reconfigure Weave

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags weave
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
| Mesos 1.11.0-0.2.0 | Mesos Masters                     | RPM/DEB                            |
| Zookeeper 3.8.0    | Zookeeper cluster                 | RPM/DEB                            |
| Mesos-DNS 0.8.2    | Service Discovery for Mesos Tasks | RPM/DEB                            |

## Worker node

| Software version   | Role                              | Install type |
| ------------------ | :-------------------------------: | :----------: |
| Mesos 1.11.0-0.2.0 | Mesos Agent                       | RPM/DEB      |
| Docker CE latest   | Docker engine                     | RPM/DEB      |
| Weave 2.8.1        | Container networking              | Docker image |
| Weavescope 1.11.3  | Container Management              | Docker image |
| DNSMasq 2          | Container DNS                     | RPM/DEB      |

## Persistent Storage

For persistent container storage, we recomend to use our 
[ansible-docker-volume playbook](https://github.com/AVENTER-UG/ansible-docker-volume)
to deploy S3 and RBD(ceph) docker-plugins as systemd service.

# Troubleshooting

If weave cannot ping between containers at different hosts, we have to change the following config:

```bash
sysctl net.bridge.bridge-nf-call-iptables=0
```

Do not forget to make it persistent. 
