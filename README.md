# Ansible script to install a whole mesos stack

[![Donate](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/AVENTER/donate)

This playbook deploys a full Mesos cluster. It includes, so many masters and worker how you like. But the minimum should be three masters. Do be honest, it also works with one master. The access to mesos (agent and master), also to marathon need a credentials. The default one is "marathon:marathon".


## Requirements

- CentOS 1.7

## How to use

```bash
ansible-playbook -i ../inventory/inventory/mesos plays/server-config.yaml
```

## Support

Please don't hesitate an talk with us if you have questions.

- https://riot.im/app/#/room/#avEnterSupport:matrix.aventer.biz

## v0.11.1

### Manager node

This will change the way how to load the configuration of mesos libs. If you add your own config to the file ```/etc/mesos-slave/modules``` please migrate the content.

This will enable SSL communication for the mesos agents and mesos server. The verification of the ssl certificate is disabled (default). If you want to disable SSL, please add ```libprocess_enable_ssl: "false"``` to your group_vars inventory configuration. More information to Mesos and SSL: http://mesos.apache.org/documentation/latest/ssl/

| Software version   | Role                              | Install type                       |
| ------------------ | :-------------------------------: | :--------------------------------: |
| Mesos 1.8.0        | Mesos masters                     | RPM                                |
| Marathon 1.8.218   | Marathon masters                  | RPM                                |
| Zookeeper 3.4.6    | Zookeeper cluster                 | dependencies to Mesos/Marathon RPM |
| Consul  1.5.3      | Service Discovery for Container   | Binary                             |
| Mesos-DNS 0.7.0    | Service Discovery for Mesos Tasks | Binary                             |
| Metronome 0.6.30   | Schedule Server                    | JAVA dependencies to Marathon      |

### Worker node

| Software version   | Role                       | Install type |
| ------------------ | :------------------------: | :----------: |
| Mesos 1.6.1        | Mesos slave                | RPM          |
| Docker 19.03.1-ce  | Docker engine              | RPM          |
| Weave 2.5.2        | Container networking       | Docker image |
| Weavescope 1.11.3  | Container Management       | Docker image |
| DNSMasq 2          | Container DNS              | RPM          |
| CAdavisor (DEPRECATED read changelog.md)         | Docker engine monitoring   | Docker image |
| Registrator        | Register Microservier name | Docker image |
| Consul  1.5.3      | Consul Client              | Binary       |

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

