# Ansible script to install a whole mesos stack

[![Donate](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/AVENTER/donate)

This playbook deploys a full Mesos Stack. It includes, so many masters and worker how you like. But the minimum should be three masters. Do be honest, it also works with one master. The access to mesos (agent and master), also to marathon need credentials. The default one is "marathon:marathon".


## Requirements

- CentOS 7

## How to use

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml
```

## Support

Please don't hesitate an talk with us if you have questions.

- https://riot.im/app/#/room/#avEnterSupport:matrix.aventer.biz

## v0.13.0

### Manager node


| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.9.0        | Mesos masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Consul  1.5.3 (deprecated)     | Service Discovery for Container   | Binary                             |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                   | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                              | Install type |
| ------------------ | :-------------------------------: | :----------: |
| Mesos 1.9.0        | Mesos slave                       | RPM          |
| Docker 19.03.1-ce  | Docker engine                     | RPM          |
| Weave 2.5.2        | Container networking              | Docker image |
| Weavescope 1.11.3  | Container Management              | Docker image |
| DNSMasq 2          | Container DNS                     | RPM          |
| CAdavisor          | Docker engine monitoring          | Docker image |
| Registrator (deprecated)       | Register Microservies name        | Docker image |
| Consul  1.5.3 (deprecated)     | Consul Client                     | Binary       |
| Rexray 0.11.4      | Persistant Storage                | RPM          |

### Graylog DEPRECATED (read changelog.md)

| Software version    | Role           | Install type |
| ------------------- | :------------: | :----------: |
| Graylog 2.5         | Log server     | RPM          |
| Elasticsearch 5.3.1 | Search Engine  | RPM          |
| MongoDB             | NoSQL Database | RPM          |

### Prometheus DEPRECATED (read changelog.md)

| Software version | Role                            | Install type |
| ---------------- | :-----------------------------: | :----------: |
| Prometheus 1.7.1 | Timesserie database for metrics | Docker image |

