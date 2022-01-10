# Ansible Playbook to install a complete Apache Mesos stack


[![Donate](https://img.shields.io/liberapay/receives/AVENTER.svg?logo=liberapay)](https://liberapay.com/mesos)
[![Support Chat](https://img.shields.io/static/v1?label=Chat&message=Support&color=brightgreen)](https://riot.im/app/#/room/#support:matrix.aventer.biz)

This playbook deploys a full Apache Mesos stack. The access to mesos (agent and master) and marathon need credentials. The default one is "marathon:marathon".

**Breaking change Deprecated authentication credential text format support.**

## Requirements

- CentOS 7

## How to use

### Install the whole stack

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml
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

### Reconfigure Marathon SSL

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml --tags ssl
```


## Manager node


| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.11.0       | Mesos Masters                     | RPM                                |
| Marathon 1.11.30   | Marathon masters                  | RPM                                |
| Zookeeper 3.7.0    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Mesos-DNS 0.8.1    | Service Discovery for Mesos Tasks | RPM                                |

## Worker node

| Software version   | Role                              | Install type |
| ------------------ | :-------------------------------: | :----------: |
| Mesos 1.11.0       | Mesos Agent                       | RPM          |
| Docker latest      | Docker engine                     | RPM          |
| Weave 2.6.0        | Container networking              | Docker image |
| Weavescope 1.11.3  | Container Management              | Docker image |
| DNSMasq 2          | Container DNS                     | RPM          |
| Rexray 0.11.4      | Persistant Storage                | RPM          |
